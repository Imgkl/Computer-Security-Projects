.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$LockTimeoutObject;
.super Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;
.source "GridDhtLockFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockTimeoutObject"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;)V
    .locals 2

    .prologue
    .line 987
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$LockTimeoutObject;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>.LockTimeoutObject;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$LockTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;

    .line 988
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;-><init>(J)V

    .line 989
    return-void
.end method


# virtual methods
.method public onTimeout()V
    .locals 3

    .prologue
    .line 994
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$LockTimeoutObject;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>.LockTimeoutObject;"
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->access$400()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->access$400()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timed out waiting for lock response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 997
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$LockTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->access$502(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;Z)Z

    .line 999
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$LockTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->access$600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;Z)Z

    .line 1000
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1004
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$LockTimeoutObject;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>.LockTimeoutObject;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$LockTimeoutObject;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
