.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$6;
.super Ljava/lang/Object;
.source "GridDhtCacheAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->sendTtlUpdateRequest(Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

.field final synthetic val$expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 671
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$6;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)V
    .locals 0

    .prologue
    .line 671
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$6;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter.6;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$6;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$6;->val$expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 674
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$6;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter.6;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$6;->val$expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;->entries()Ljava/util/Map;

    move-result-object v7

    .line 676
    .local v7, "entries":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    sget-boolean v19, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$6;->$assertionsDisabled:Z

    if-nez v19, :cond_1

    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_1

    :cond_0
    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    .line 678
    :cond_1
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 680
    .local v16, "reqMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;>;"
    new-instance v18, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$6;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->access$1000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersion()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(J)V

    .line 682
    .local v18, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 683
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$6;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->access$1100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v19

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->nodes(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;

    move-result-object v12

    .line 685
    .local v12, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_2

    .line 686
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/ignite/cluster/ClusterNode;

    .line 688
    .local v11, "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v11}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v19

    if-nez v19, :cond_4

    .line 689
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;

    .line 691
    .local v14, "req":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;
    if-nez v14, :cond_3

    .line 692
    new-instance v14, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;

    .end local v14    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$6;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->access$1200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$6;->val$expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;->forAccess()J

    move-result-wide v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v14, v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;-><init>(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;J)V

    .restart local v14    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;
    move-object/from16 v0, v16

    invoke-interface {v0, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    :cond_3
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;->addEntry(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 685
    .end local v14    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 702
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .end local v8    # "i":I
    .end local v11    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v12    # "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$6;->val$expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;->readers()Ljava/util/Map;

    move-result-object v13

    .line 704
    .local v13, "rdrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;>;"
    if-eqz v13, :cond_9

    .line 705
    sget-boolean v19, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$6;->$assertionsDisabled:Z

    if-nez v19, :cond_6

    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_6

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    .line 707
    :cond_6
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 708
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$6;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->access$1300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v20

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/UUID;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v11

    .line 710
    .restart local v11    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v11, :cond_7

    .line 711
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;

    .line 713
    .restart local v14    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;
    if-nez v14, :cond_8

    .line 714
    new-instance v14, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;

    .end local v14    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$6;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->access$1400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$6;->val$expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;->forAccess()J

    move-result-wide v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v14, v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;-><init>(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;J)V

    .restart local v14    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;
    move-object/from16 v0, v16

    invoke-interface {v0, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    :cond_8
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Collection;

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 720
    .local v17, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;->addNearEntry(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    goto :goto_1

    .line 725
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v14    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;
    .end local v17    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    :cond_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 727
    .local v15, "req":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$6;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->access$1600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v21

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$6;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-object/from16 v22, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->access$1500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 729
    :catch_0
    move-exception v4

    .line 730
    .local v4, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$6;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->access$1700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v19

    const-string v20, "Failed to send TTL update request."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 733
    .end local v4    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v15    # "req":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;>;"
    :cond_a
    return-void
.end method
