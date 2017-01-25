.class public Lorg/apache/ignite/internal/processors/cache/distributed/GridFutureRemapTimeoutObject;
.super Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;
.source "GridFutureRemapTimeoutObject.java"


# instance fields
.field private final e:Lorg/apache/ignite/IgniteCheckedException;

.field private final finished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<*>;"
        }
    .end annotation
.end field

.field private final topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/util/future/GridFutureAdapter;JLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/IgniteCheckedException;)V
    .locals 2
    .param p2, "timeout"    # J
    .param p4, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p5, "e"    # Lorg/apache/ignite/IgniteCheckedException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<*>;J",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Lorg/apache/ignite/IgniteCheckedException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<*>;"
    invoke-direct {p0, p2, p3}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;-><init>(J)V

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridFutureRemapTimeoutObject;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridFutureRemapTimeoutObject;->fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 57
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridFutureRemapTimeoutObject;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 58
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridFutureRemapTimeoutObject;->e:Lorg/apache/ignite/IgniteCheckedException;

    .line 59
    return-void
.end method


# virtual methods
.method public finish()Z
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridFutureRemapTimeoutObject;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method public onTimeout()V
    .locals 4

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridFutureRemapTimeoutObject;->finish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridFutureRemapTimeoutObject;->fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to wait for topology version to change: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridFutureRemapTimeoutObject;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridFutureRemapTimeoutObject;->e:Lorg/apache/ignite/IgniteCheckedException;

    invoke-direct {v1, v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    .line 65
    :cond_0
    return-void
.end method
