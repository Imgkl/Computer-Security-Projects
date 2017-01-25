.class Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$2;
.super Ljava/lang/Object;
.source "GridNearGetFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->map(Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<",
        "Ljava/util/Collection",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
        ">;>;",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;

.field final synthetic val$mappedKeys:Ljava/util/LinkedHashMap;

.field final synthetic val$n:Lorg/apache/ignite/cluster/ClusterNode;

.field final synthetic val$saved:Ljava/util/Map;

.field final synthetic val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/LinkedHashMap;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 0

    .prologue
    .line 339
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture.2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$2;->val$n:Lorg/apache/ignite/cluster/ClusterNode;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$2;->val$mappedKeys:Ljava/util/LinkedHashMap;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$2;->val$saved:Ljava/util/Map;

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$2;->val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 339
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture.2;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$2;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
            ">;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture.2;"
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;>;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$2;->val$n:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$2;->val$mappedKeys:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$2;->val$saved:Ljava/util/Map;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$2;->val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->loadEntries(Ljava/util/UUID;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Map;
    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;Ljava/util/UUID;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 349
    :goto_0
    return-object v0

    .line 344
    :catch_0
    move-exception v6

    .line 345
    .local v6, "e":Ljava/lang/Exception;
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get values from dht cache [fut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 347
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;

    invoke-virtual {v0, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 349
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method
