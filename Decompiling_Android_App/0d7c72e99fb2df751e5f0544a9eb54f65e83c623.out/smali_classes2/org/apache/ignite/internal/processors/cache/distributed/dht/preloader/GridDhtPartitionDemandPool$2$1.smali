.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$2$1;
.super Ljava/lang/Object;
.source "GridDhtPartitionDemandPool.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$2;->onTimeout()V
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
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$2;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$2;)V
    .locals 0

    .prologue
    .line 361
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$2$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$2.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$2$1;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 361
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$2$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$2.1;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$2$1;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

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
    .line 363
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$2$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$2.1;"
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$2$1;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$2;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->shared()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->exchange()Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$2$1;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$2;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$2;->val$exchFut:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->forcePreloadExchange(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)V

    .line 364
    return-void
.end method
