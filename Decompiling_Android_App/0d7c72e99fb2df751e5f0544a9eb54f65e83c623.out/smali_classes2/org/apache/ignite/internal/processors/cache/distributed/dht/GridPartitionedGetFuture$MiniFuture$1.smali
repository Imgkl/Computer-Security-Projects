.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$1;
.super Ljava/lang/Object;
.source "GridPartitionedGetFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;)V
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
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;

.field final synthetic val$timeout:Lorg/apache/ignite/internal/processors/cache/distributed/GridFutureRemapTimeoutObject;

.field final synthetic val$updTopVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;Lorg/apache/ignite/internal/processors/cache/distributed/GridFutureRemapTimeoutObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 0

    .prologue
    .line 618
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$1;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$1;->val$timeout:Lorg/apache/ignite/internal/processors/cache/distributed/GridFutureRemapTimeoutObject;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$1;->val$updTopVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 618
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture.1;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$1;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 4
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
    .line 620
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture.1;"
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$1;->val$timeout:Lorg/apache/ignite/internal/processors/cache/distributed/GridFutureRemapTimeoutObject;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridFutureRemapTimeoutObject;->finish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$1;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->timeout()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$1;->val$timeout:Lorg/apache/ignite/internal/processors/cache/distributed/GridFutureRemapTimeoutObject;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->removeTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 624
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$1;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$1;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$1;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$1;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$1;->val$updTopVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->map(Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    invoke-static {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->access$600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 626
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$1;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->onDone(Ljava/lang/Object;)Z

    .line 628
    :cond_0
    return-void
.end method
