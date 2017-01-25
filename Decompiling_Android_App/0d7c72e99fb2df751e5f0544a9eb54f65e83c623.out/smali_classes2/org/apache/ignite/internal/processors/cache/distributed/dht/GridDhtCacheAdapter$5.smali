.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$5;
.super Ljava/lang/Object;
.source "GridDhtCacheAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->processNearGetRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;)V
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
        "Ljava/util/Collection",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

.field final synthetic val$expiryPlc:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;

.field final synthetic val$nodeId:Ljava/util/UUID;

.field final synthetic val$req:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;)V
    .locals 0

    .prologue
    .line 629
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$5;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter.5;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$5;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$5;->val$req:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$5;->val$nodeId:Ljava/util/UUID;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$5;->val$expiryPlc:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 629
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$5;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter.5;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$5;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 631
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$5;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter.5;"
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;>;"
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$5;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$5;->val$req:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$5;->val$req:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;->miniId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$5;->val$req:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;-><init>(ILorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .local v3, "res":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;
    move-object v2, p1

    .line 636
    check-cast v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;

    .line 640
    .local v2, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture<Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;>;"
    :try_start_0
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 642
    .local v1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;"
    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->entries(Ljava/util/Collection;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    .end local v1    # "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;"
    :goto_0
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;->invalidPartitions()Ljava/util/Collection;

    move-result-object v4

    new-instance v5, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$5;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->access$600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersion()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(J)V

    invoke-virtual {v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->invalidPartitions(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 654
    :try_start_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$5;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->access$800(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$5;->val$nodeId:Ljava/util/UUID;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$5;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->access$700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 661
    :goto_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$5;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$5;->val$expiryPlc:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->sendTtlUpdateRequest(Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)V

    .line 662
    return-void

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$5;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed processing get request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$5;->val$req:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 647
    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 656
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_1
    move-exception v0

    .line 657
    .restart local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$5;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->access$900(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send get response to node (is node still alive?) [nodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$5;->val$nodeId:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",req="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$5;->val$req:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", res="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
