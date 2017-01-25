.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2;
.super Lorg/apache/ignite/internal/util/typedef/CIX1;
.source "GridPartitionedGetFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/typedef/CIX1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;

.field final synthetic val$invalidParts:Ljava/util/Collection;

.field final synthetic val$res:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;)V
    .locals 0

    .prologue
    .line 671
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture.2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2;->val$invalidParts:Ljava/util/Collection;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2;->val$res:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/typedef/CIX1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic applyx(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 671
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture.2;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2;->applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 674
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture.2;"
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Long;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(J)V

    .line 677
    .local v0, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v4, 0x0

    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2$1;

    invoke-direct {v5, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2;)V

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v3

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->map(Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    invoke-static {v1, v2, v3, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->access$600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 683
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2;->val$res:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->entries()Ljava/util/Collection;

    move-result-object v3

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->createResultMap(Ljava/util/Collection;)Ljava/util/Map;
    invoke-static {v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->onDone(Ljava/lang/Object;)Z

    .line 684
    return-void
.end method
