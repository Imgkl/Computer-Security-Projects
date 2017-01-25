.class Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture$2;
.super Lorg/apache/ignite/internal/util/typedef/CIX1;
.source "GridNearGetFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;)V
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
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;

.field final synthetic val$invalidParts:Ljava/util/Collection;

.field final synthetic val$res:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;)V
    .locals 0

    .prologue
    .line 788
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture.2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture$2;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture$2;->val$invalidParts:Ljava/util/Collection;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture$2;->val$res:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;

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
    .line 788
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture.2;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture$2;->applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 9
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
    .line 790
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture.2;"
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Long;>;"
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 793
    .local v6, "readyTopVer":J
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture$2;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture$2;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture$2$1;

    invoke-direct {v4, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture$2$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture$2;)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture$2;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->access$500(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture$2;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v2

    new-instance v3, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-direct {v3, v6, v7}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(J)V

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->map(Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    invoke-static {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->access$600(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 800
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture$2;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture$2;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture$2;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->access$500(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture$2;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture$2;->val$res:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->entries()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture$2;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->access$700(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture$2;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;

    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->access$800(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v5

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->loadEntries(Ljava/util/UUID;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Map;
    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;Ljava/util/UUID;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->onDone(Ljava/lang/Object;)Z

    .line 801
    return-void
.end method
