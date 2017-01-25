.class Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$3;
.super Ljava/lang/Object;
.source "GridNearTxPrepareFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<",
        "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;)V
    .locals 0

    .prologue
    .line 350
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture.3;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 350
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture.3;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$3;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture.3;"
    .local p1, "t":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$3$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$3$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$3;)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->runLocalSafe(Ljava/lang/Runnable;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 357
    return-void
.end method
