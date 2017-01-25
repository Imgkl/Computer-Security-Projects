.class Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture$1;
.super Ljava/lang/Object;
.source "GridCacheMvccManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->versionFilter()Lorg/apache/ignite/lang/IgnitePredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/P1",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1103
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;)V
    .locals 0

    .prologue
    .line 1103
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1103
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture$1;->apply(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z
    .locals 2
    .param p1, "c"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    .line 1105
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture$1;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nearLocal()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->dhtLocal()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1108
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->ZERO:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->access$700(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->compareTo(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I

    move-result v0

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
