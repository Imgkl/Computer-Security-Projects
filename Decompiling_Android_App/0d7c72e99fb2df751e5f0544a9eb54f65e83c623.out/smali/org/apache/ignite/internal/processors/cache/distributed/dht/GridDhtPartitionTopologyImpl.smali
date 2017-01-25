.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;
.super Ljava/lang/Object;
.source "GridDhtPartitionTopologyImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CONSISTENCY_CHECK:Z

.field private static final FULL_MAP_DEBUG:Z


# instance fields
.field private final cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private lastExchangeId:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

.field private final locParts:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final log:Lorg/apache/ignite/IgniteLogger;

.field private node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

.field private part2node:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/util/UUID;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile stopping:Z

.field private topReadyFut:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;

.field private topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

.field private final updateSeq:Lorg/apache/ignite/internal/util/GridAtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->locParts:Ljava/util/concurrent/ConcurrentMap;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->part2node:Ljava/util/Map;

    .line 71
    sget-object v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 80
    new-instance v0, Lorg/apache/ignite/internal/util/GridAtomicLong;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Lorg/apache/ignite/internal/util/GridAtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->updateSeq:Lorg/apache/ignite/internal/util/GridAtomicLong;

    .line 83
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 89
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 91
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->logger(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    .line 94
    return-void
.end method

.method private checkEvictions(J)Z
    .locals 21
    .param p1, "updateSeq"    # J

    .prologue
    .line 947
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLockedByCurrentThread()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 949
    :cond_0
    const/4 v10, 0x0

    .line 951
    .local v10, "changed":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v4

    .line 953
    .local v4, "locId":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->locParts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    .line 954
    .local v18, "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v20

    .line 956
    .local v20, "state":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->active()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 957
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->id()I

    move-result v17

    .line 959
    .local v17, "p":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->nodes(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;

    move-result-object v9

    .line 961
    .local v9, "affNodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 962
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->OWNING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->nodes(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->nodeIds(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v15

    .line 965
    .local v15, "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/F;->nodeIds(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 966
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->rent(Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 968
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->id()I

    move-result v3

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v5

    move-object/from16 v2, p0

    move-wide/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->updateLocal(ILjava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;J)V

    .line 970
    const/4 v10, 0x1

    .line 972
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 973
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Evicted local partition (all affinity nodes are owners): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 976
    :cond_2
    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v16

    .line 977
    .local v16, "ownerCnt":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 979
    .local v8, "affCnt":I
    move/from16 v0, v16

    if-le v0, v8, :cond_1

    .line 980
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-virtual {v2, v15, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->nodes(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 983
    .local v19, "sorted":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/4 v2, 0x1

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->nodeComparator(Z)Ljava/util/Comparator;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 985
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    sub-int v11, v2, v8

    .line 987
    .local v11, "diff":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v11, :cond_1

    .line 988
    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/ignite/cluster/ClusterNode;

    .line 990
    .local v14, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v14}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 991
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->rent(Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 993
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->id()I

    move-result v3

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v5

    move-object/from16 v2, p0

    move-wide/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->updateLocal(ILjava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;J)V

    .line 995
    const/4 v10, 0x1

    .line 997
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 998
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Evicted local partition (this node is oldest non-affinity node): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 987
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1010
    .end local v8    # "affCnt":I
    .end local v9    # "affNodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v11    # "diff":I
    .end local v12    # "i":I
    .end local v14    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v15    # "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .end local v16    # "ownerCnt":I
    .end local v17    # "p":I
    .end local v18    # "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .end local v19    # "sorted":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v20    # "state":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    :cond_4
    return v10
.end method

.method private consistencyCheck()V
    .locals 0

    .prologue
    .line 1243
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    return-void
.end method

.method private fullMapString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private varargs hasState(ILjava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;)Z
    .locals 9
    .param p1, "p"    # I
    .param p2, "nodeId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "match"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    .param p4, "matches"    # [Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1192
    if-nez p2, :cond_1

    .line 1210
    :cond_0
    :goto_0
    return v6

    .line 1195
    :cond_1
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-virtual {v8, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;

    .line 1198
    .local v3, "parts":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    if-eqz v3, :cond_0

    .line 1199
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->get(Ljava/lang/Integer;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v5

    .line 1201
    .local v5, "state":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    if-ne v5, p3, :cond_2

    move v6, v7

    .line 1202
    goto :goto_0

    .line 1204
    :cond_2
    if-eqz p4, :cond_0

    array-length v8, p4

    if-lez v8, :cond_0

    .line 1205
    move-object v0, p4

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 1206
    .local v4, "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    if-ne v5, v4, :cond_3

    move v6, v7

    .line 1207
    goto :goto_0

    .line 1205
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private localPartition(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZZ)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .locals 8
    .param p1, "p"    # I
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p3, "create"    # Z
    .param p4, "updateSeq"    # Z

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    const/16 v7, 0x5d

    .line 506
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->localNode(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v0

    .line 508
    .local v0, "belongs":Z
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->locParts:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    .line 510
    .local v1, "loc":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->EVICTED:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    if-ne v4, v5, :cond_2

    .line 511
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->locParts:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 513
    if-nez p3, :cond_1

    .line 514
    const/4 v4, 0x0

    .line 549
    :goto_0
    return-object v4

    .line 516
    :cond_1
    if-nez v0, :cond_0

    .line 517
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding entry to evicted partition [part="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", topVer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", this.topVer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 523
    :cond_2
    if-nez v1, :cond_4

    if-eqz p3, :cond_4

    .line 524
    if-nez v0, :cond_3

    .line 525
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating partition which does not belong [part="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", topVer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", this.topVer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 528
    :cond_3
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 531
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->locParts:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v2, v6, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "loc":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .local v2, "loc":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    :try_start_1
    invoke-interface {v4, v5, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 534
    .local v3, "old":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    if-eqz v3, :cond_5

    .line 535
    move-object v1, v3

    .line 545
    .end local v2    # "loc":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .restart local v1    # "loc":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    :goto_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .end local v3    # "old":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    :cond_4
    move-object v4, v1

    .line 549
    goto/16 :goto_0

    .line 537
    .end local v1    # "loc":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .restart local v2    # "loc":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .restart local v3    # "old":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    :cond_5
    if-eqz p4, :cond_6

    .line 538
    :try_start_2
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->updateSeq:Lorg/apache/ignite/internal/util/GridAtomicLong;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridAtomicLong;->incrementAndGet()J

    .line 540
    :cond_6
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 541
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Created local partition: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_7
    move-object v1, v2

    .end local v2    # "loc":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .restart local v1    # "loc":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    goto :goto_1

    .line 545
    .end local v3    # "old":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    :catchall_0
    move-exception v4

    :goto_2
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v4

    .end local v1    # "loc":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .restart local v2    # "loc":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "loc":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .restart local v1    # "loc":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    goto :goto_2
.end method

.method private mapString(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;)Ljava/lang/String;
    .locals 1
    .param p1, "map"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;

    .prologue
    .line 110
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    if-nez p1, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private varargs nodes(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;)Ljava/util/List;
    .locals 14
    .param p1, "p"    # I
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p3, "state"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    .param p4, "states"    # [Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 663
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_1

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p2

    invoke-static {v9, v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->allNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/F;->nodeIds(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    .line 665
    .local v2, "allIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :goto_0
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 668
    :try_start_0
    sget-boolean v9, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->$assertionsDisabled:Z

    if-nez v9, :cond_2

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->valid()Z

    move-result v9

    if-nez v9, :cond_2

    :cond_0
    new-instance v9, Ljava/lang/AssertionError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid node-to-partitions map [topVer="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", allIds="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", node2part="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    :catchall_0
    move-exception v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v9

    .line 663
    .end local v2    # "allIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 671
    .restart local v2    # "allIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :cond_2
    :try_start_1
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->part2node:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    .line 674
    .local v6, "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    if-nez v6, :cond_3

    const/4 v8, 0x0

    .line 676
    .local v8, "size":I
    :goto_1
    if-nez v8, :cond_4

    .line 677
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 696
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_2
    return-object v7

    .line 674
    .end local v8    # "size":I
    :cond_3
    :try_start_2
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v8

    goto :goto_1

    .line 679
    .restart local v8    # "size":I
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 681
    .local v7, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/UUID;

    .line 682
    .local v4, "id":Ljava/util/UUID;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_6

    invoke-interface {v2, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 685
    :cond_6
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, p1, v4, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->hasState(ILjava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 686
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v9

    invoke-virtual {v9, v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    .line 688
    .local v5, "n":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v5, :cond_5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-ltz v9, :cond_7

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-gtz v9, :cond_5

    .line 689
    :cond_7
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 696
    .end local v4    # "id":Ljava/util/UUID;
    .end local v5    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_8
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_2
.end method

.method private ownersAndMoving(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;
    .locals 4
    .param p1, "p"    # I
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 727
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->OWNING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->MOVING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    aput-object v3, v1, v2

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->nodes(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private removeNode(Ljava/util/UUID;)V
    .locals 14
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 1074
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1075
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1077
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->oldest(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v11

    .line 1079
    .local v11, "oldest":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v9

    .line 1081
    .local v9, "loc":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    if-eqz v0, :cond_5

    .line 1082
    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeId()Ljava/util/UUID;

    move-result-object v0

    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1083
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->updateSeq:Lorg/apache/ignite/internal/util/GridAtomicLong;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->updateSequence()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/util/GridAtomicLong;->setIfGreater(J)Z

    .line 1085
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->updateSeq:Lorg/apache/ignite/internal/util/GridAtomicLong;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridAtomicLong;->incrementAndGet()J

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;-><init>(Ljava/util/UUID;JJLjava/util/Map;Z)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    .line 1091
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->part2node:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->part2node:Ljava/util/Map;

    .line 1093
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;

    .line 1095
    .local v13, "parts":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    if-eqz v13, :cond_4

    .line 1096
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 1097
    .local v12, "p":Ljava/lang/Integer;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->part2node:Ljava/util/Map;

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    .line 1099
    .local v10, "nodeIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    if-eqz v10, :cond_2

    .line 1100
    invoke-interface {v10, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1102
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1103
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->part2node:Ljava/util/Map;

    invoke-interface {v0, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1089
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "nodeIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    .end local v12    # "p":Ljava/lang/Integer;
    .end local v13    # "parts":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    :cond_3
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->updateSequence()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;J)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    goto :goto_0

    .line 1108
    .restart local v13    # "parts":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    :cond_4
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->consistencyCheck()V

    .line 1110
    .end local v13    # "parts":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    :cond_5
    return-void
.end method

.method private updateLocal(ILjava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;J)V
    .locals 14
    .param p1, "p"    # I
    .param p2, "nodeId"    # Ljava/util/UUID;
    .param p3, "state"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    .param p4, "updateSeq"    # J

    .prologue
    .line 1023
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLockedByCurrentThread()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1024
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1027
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->oldest(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v10

    .line 1030
    .local v10, "oldest":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v10}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1031
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->updateSequence()J

    move-result-wide v12

    .line 1033
    .local v12, "seq":J
    cmp-long v3, v12, p4

    if-eqz v3, :cond_4

    .line 1034
    cmp-long v3, v12, p4

    if-lez v3, :cond_3

    .line 1035
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->updateSeq:Lorg/apache/ignite/internal/util/GridAtomicLong;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridAtomicLong;->get()J

    move-result-wide v4

    cmp-long v3, v4, v12

    if-gez v3, :cond_7

    .line 1037
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->updateSeq:Lorg/apache/ignite/internal/util/GridAtomicLong;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->updateSeq:Lorg/apache/ignite/internal/util/GridAtomicLong;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridAtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v6, v12

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/apache/ignite/internal/util/GridAtomicLong;->compareAndSet(JJ)Z

    move-result v8

    .line 1039
    .local v8, "b":Z
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    if-nez v8, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid update sequence [updateSeq="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", seq="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", curUpdateSeq="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->updateSeq:Lorg/apache/ignite/internal/util/GridAtomicLong;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridAtomicLong;->get()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", node2part="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->toFullString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 1042
    :cond_2
    const-wide/16 v4, 0x1

    add-long p4, v12, v4

    .line 1048
    .end local v8    # "b":Z
    :cond_3
    :goto_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->updateSequence(J)J

    .line 1052
    .end local v12    # "seq":J
    :cond_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;

    .line 1054
    .local v2, "map":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    if-nez v2, :cond_5

    .line 1055
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;

    .end local v2    # "map":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v3, p2

    move-wide/from16 v4, p4

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;-><init>(Ljava/util/UUID;JLjava/util/Map;Z)V

    .restart local v2    # "map":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    move-object/from16 v0, p2

    invoke-virtual {v11, v0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    :cond_5
    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->updateSequence(J)J

    .line 1060
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->put(Ljava/lang/Integer;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;)V

    .line 1062
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->part2node:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 1064
    .local v9, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    if-nez v9, :cond_6

    .line 1065
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->part2node:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashSet(I)Ljava/util/HashSet;

    move-result-object v9

    invoke-interface {v3, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    :cond_6
    move-object/from16 v0, p2

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1068
    return-void

    .line 1045
    .end local v2    # "map":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    .end local v9    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    .restart local v12    # "seq":J
    :cond_7
    move-wide/from16 p4, v12

    goto :goto_0
.end method

.method private waitForRent()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    const/4 v0, 0x0

    .line 123
    .local v0, "changed":Z
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->locParts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 124
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    .line 126
    .local v2, "p":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v3

    .line 128
    .local v3, "state":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->RENTING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    if-eq v3, v4, :cond_1

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->EVICTED:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    if-ne v3, v4, :cond_0

    .line 129
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 130
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Waiting for renting partition: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 133
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->rent(Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 135
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 136
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finished waiting for renting partition: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 139
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 141
    const/4 v0, 0x1

    goto :goto_0

    .line 145
    .end local v2    # "p":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .end local v3    # "state":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    :cond_4
    return v0
.end method


# virtual methods
.method public afterExchange(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)Z
    .locals 24
    .param p1, "exchFut"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 392
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->waitForRent()Z

    move-result v8

    .line 394
    .local v8, "changed":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v17

    .line 396
    .local v17, "loc":Lorg/apache/ignite/cluster/ClusterNode;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partitions()I

    move-result v19

    .line 398
    .local v19, "num":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v23

    .line 400
    .local v23, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 403
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->stopping:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 404
    const/4 v2, 0x0

    .line 485
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 488
    :goto_0
    return v2

    .line 406
    :cond_0
    :try_start_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid topology version [topVer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", exchId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->exchangeId()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v2

    .line 409
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Partition map before afterExchange [exchId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->exchangeId()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fullMap="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->fullMapString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 413
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->updateSeq:Lorg/apache/ignite/internal/util/GridAtomicLong;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridAtomicLong;->incrementAndGet()J

    move-result-wide v6

    .line 415
    .local v6, "updateSeq":J
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_1
    move/from16 v0, v19

    if-ge v3, v0, :cond_a

    .line 416
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->localPartition(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZZ)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    move-result-object v18

    .line 418
    .local v18, "locPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->localNode(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 421
    if-nez v18, :cond_4

    .line 422
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping local partition afterExchange (will not create): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 415
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 428
    :cond_4
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v22

    .line 430
    .local v22, "state":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->MOVING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-object/from16 v0, v22

    if-ne v0, v2, :cond_3

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->rebalanceEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 432
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->owners(I)Ljava/util/List;

    move-result-object v21

    .line 435
    .local v21, "owners":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-static/range {v21 .. v21}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 436
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->own()Z

    move-result v20

    .line 438
    .local v20, "owned":Z
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_5

    if-nez v20, :cond_5

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to own partition [cacheName"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", locPart="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 441
    :cond_5
    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v5

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->updateLocal(ILjava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;J)V

    .line 443
    const/4 v8, 0x1

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v2

    const/16 v4, 0x56

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 446
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->discoveryEvent()Lorg/apache/ignite/events/DiscoveryEvent;

    move-result-object v16

    .line 448
    .local v16, "discoEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v9

    const/16 v11, 0x56

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v12

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/events/DiscoveryEvent;->type()I

    move-result v13

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/events/DiscoveryEvent;->timestamp()J

    move-result-wide v14

    move v10, v3

    invoke-virtual/range {v9 .. v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addPreloadEvent(IILorg/apache/ignite/cluster/ClusterNode;IJ)V

    .line 453
    .end local v16    # "discoEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Owned partition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 456
    .end local v20    # "owned":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Will not own partition (there are owners to rebalance from) [locPart="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", owners = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 461
    .end local v21    # "owners":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_8
    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v5

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->updateLocal(ILjava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;J)V

    goto/16 :goto_2

    .line 465
    .end local v22    # "state":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    :cond_9
    if-eqz v18, :cond_3

    .line 466
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v22

    .line 468
    .restart local v22    # "state":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->MOVING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-object/from16 v0, v22

    if-ne v0, v2, :cond_3

    .line 469
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->rent(Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 471
    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v5

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->updateLocal(ILjava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;J)V

    .line 473
    const/4 v8, 0x1

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Evicting moving partition (it does not belong to affinity): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 482
    .end local v18    # "locPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .end local v22    # "state":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    :cond_a
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->consistencyCheck()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    move v2, v8

    .line 488
    goto/16 :goto_0
.end method

.method public beforeExchange(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)V
    .locals 20
    .param p1, "exchFut"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->waitForRent()Z

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v14

    .line 225
    .local v14, "loc":Lorg/apache/ignite/cluster/ClusterNode;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partitions()I

    move-result v16

    .line 227
    .local v16, "num":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 230
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->exchangeId()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    move-result-object v13

    .line 232
    .local v13, "exchId":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->stopping:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 388
    :goto_0
    return-void

    .line 235
    :cond_0
    :try_start_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid topology version [topVer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", exchId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    .end local v13    # "exchId":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v2

    .line 238
    .restart local v13    # "exchId":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;
    :cond_1
    :try_start_2
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;->isLeft()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 239
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;->nodeId()Ljava/util/UUID;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->removeNode(Ljava/util/UUID;)V

    .line 242
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->shared()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-static {v2, v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->oldest(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v17

    .line 244
    .local v17, "oldest":Lorg/apache/ignite/cluster/ClusterNode;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Partition map beforeExchange [exchId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fullMap="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->fullMapString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 247
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->updateSeq:Lorg/apache/ignite/internal/util/GridAtomicLong;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridAtomicLong;->incrementAndGet()J

    move-result-wide v6

    .line 250
    .local v6, "updateSeq":J
    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v14}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->isCacheAdded(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 251
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    if-nez v2, :cond_8

    .line 252
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-interface {v14}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v14}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v4

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;-><init>(Ljava/util/UUID;JJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Created brand new full topology map on oldest node [exchId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fullMap="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->fullMapString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 274
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->rebalanceEnabled()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 275
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_2
    move/from16 v0, v16

    if-ge v3, v0, :cond_14

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->isCacheAdded(I)Z

    move-result v10

    .line 279
    .local v10, "added":Z
    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v14}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;->nodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;->isJoined()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    if-eqz v10, :cond_f

    .line 280
    :cond_7
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_a

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;->isJoined()Z

    move-result v2

    if-nez v2, :cond_a

    if-nez v10, :cond_a

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 258
    .end local v3    # "p":I
    .end local v10    # "added":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->valid()Z

    move-result v2

    if-nez v2, :cond_9

    .line 259
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-interface {v14}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v14}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;-><init>(Ljava/util/UUID;JJLjava/util/Map;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Created new full topology map on oldest node [exchId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fullMap="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 265
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v14}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 266
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-interface {v14}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v14}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;-><init>(Ljava/util/UUID;JJLjava/util/Map;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Copied old map into new map on oldest node (previous oldest node left) [exchId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fullMap="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->fullMapString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 283
    .restart local v3    # "p":I
    .restart local v10    # "added":Z
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->localPartition(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZZ)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    move-result-object v15

    .line 285
    .local v15, "locPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_c

    if-nez v15, :cond_c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_3
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 297
    .end local v15    # "locPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    :catch_0
    move-exception v12

    .line 298
    .local v12, "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring invalid partition on oldest node (no need to create a partition if it no longer belongs to local node: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;->partition()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 275
    .end local v12    # "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    :cond_b
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 287
    .restart local v15    # "locPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    :cond_c
    :try_start_5
    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->own()Z

    move-result v18

    .line 289
    .local v18, "owned":Z
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_d

    if-nez v18, :cond_d

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to own partition for oldest node [cacheName"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", part="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 292
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Owned partition for oldest node: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 295
    :cond_e
    invoke-interface {v14}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v5

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->updateLocal(ILjava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;J)V
    :try_end_5
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 305
    .end local v15    # "locPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .end local v18    # "owned":Z
    :cond_f
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->valid()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->localNode(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v2

    if-eqz v2, :cond_b

    .line 310
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->localPartition(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZZ)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    move-result-object v15

    .line 312
    .restart local v15    # "locPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    invoke-interface {v14}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v5

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->updateLocal(ILjava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;J)V
    :try_end_7
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    .line 314
    .end local v15    # "locPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    :catch_1
    move-exception v12

    .line 315
    .restart local v12    # "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring invalid partition (no need to create a partition if it no longer belongs to local node: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;->partition()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 323
    .end local v12    # "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->localNode(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v2

    if-eqz v2, :cond_b

    .line 325
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->localPartition(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZZ)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    :try_end_9
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_3

    .line 327
    :catch_2
    move-exception v12

    .line 328
    .restart local v12    # "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring invalid partition (no need to pre-create a partition if it no longer belongs to local node: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;->partition()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 339
    .end local v3    # "p":I
    .end local v10    # "added":Z
    .end local v12    # "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    :cond_11
    const/4 v3, 0x0

    .restart local v3    # "p":I
    :goto_4
    move/from16 v0, v16

    if-ge v3, v0, :cond_14

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->localPartition(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZZ)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    move-result-object v15

    .line 342
    .restart local v15    # "locPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->localNode(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v11

    .line 344
    .local v11, "belongs":Z
    if-eqz v15, :cond_13

    .line 345
    if-nez v11, :cond_12

    .line 346
    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v19

    .line 348
    .local v19, "state":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->active()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 349
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->rent(Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 351
    invoke-interface {v14}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v5

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->updateLocal(ILjava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;J)V

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Evicting partition with rebalancing disabled (it does not belong to affinity): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 339
    .end local v19    # "state":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    :cond_12
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 359
    :cond_13
    if-eqz v11, :cond_12

    .line 362
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->localPartition(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZZ)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    :try_end_b
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_5

    .line 364
    :catch_3
    move-exception v12

    .line 365
    .restart local v12    # "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring invalid partition with disabled rebalancer (no need to pre-create a partition if it no longer belongs to local node: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;->partition()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_5

    .line 373
    .end local v11    # "belongs":Z
    .end local v12    # "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    .end local v15    # "locPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->valid()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 374
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->checkEvictions(J)Z

    .line 376
    :cond_15
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->consistencyCheck()V

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Partition map after beforeExchange [exchId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fullMap="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->fullMapString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 383
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 387
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->waitForRent()Z

    goto/16 :goto_0
.end method

.method public currentLocalPartitions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 565
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->locParts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public localPartition(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .locals 1
    .param p1, "p"    # I
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p3, "create"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 494
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->localPartition(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZZ)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    move-result-object v0

    return-object v0
.end method

.method public localPartition(Ljava/lang/Object;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "create"    # Z

    .prologue
    .line 555
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->localPartition(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    move-result-object v0

    return-object v0
.end method

.method public localPartitionMap()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    .locals 7

    .prologue
    .line 603
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 606
    :try_start_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->updateSeq:Lorg/apache/ignite/internal/util/GridAtomicLong;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridAtomicLong;->get()J

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->locParts:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->part2state()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v4, v5, v6}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Map;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;-><init>(Ljava/util/UUID;JLjava/util/Map;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public localPartitions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 560
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->locParts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public moving(I)Ljava/util/List;
    .locals 3
    .param p1, "p"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 715
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->rebalanceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    sget-object v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->ownersAndMoving(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;

    move-result-object v0

    .line 718
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->MOVING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->nodes(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public nodes(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;
    .locals 12
    .param p1, "p"    # I
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 616
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->nodes(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;

    move-result-object v1

    .line 618
    .local v1, "affNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 621
    :try_start_0
    sget-boolean v7, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->valid()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    new-instance v7, Ljava/lang/AssertionError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid node-to-partitions map [topVer="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", node2part="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v7

    .line 624
    :cond_1
    const/4 v6, 0x0

    .line 626
    .local v6, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :try_start_1
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->part2node:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 628
    .local v5, "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 629
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->node2id()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v1, v7, v8}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 631
    .local v0, "affIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/UUID;

    .line 632
    .local v4, "nodeId":Ljava/util/UUID;
    invoke-interface {v0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->OWNING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    const/4 v8, 0x2

    new-array v8, v8, [Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    const/4 v9, 0x0

    sget-object v10, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->MOVING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->RENTING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    aput-object v10, v8, v9

    invoke-direct {p0, p1, v4, v7, v8}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->hasState(ILjava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 633
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    .line 635
    .local v3, "n":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_3

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v8

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gtz v7, :cond_2

    .line 636
    :cond_3
    if-nez v6, :cond_4

    .line 637
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 639
    .restart local v6    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v6, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 642
    :cond_4
    invoke-interface {v6, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 648
    .end local v0    # "affIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v4    # "nodeId":Ljava/util/UUID;
    :cond_5
    if-eqz v6, :cond_6

    .line 651
    .end local v6    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :goto_1
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v6

    .restart local v6    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_6
    move-object v6, v1

    .line 648
    goto :goto_1
.end method

.method public onAdded(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .locals 4
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p2, "e"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    .prologue
    .line 576
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v1

    .line 578
    .local v1, "p":I
    const/4 v2, 0x1

    invoke-virtual {p0, v1, p1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->localPartition(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    move-result-object v0

    .line 580
    .local v0, "loc":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 582
    :cond_0
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->onAdded(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;)V

    .line 584
    return-object v0
.end method

.method public onEvicted(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;Z)V
    .locals 6
    .param p1, "part"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .param p2, "updateSeq"    # Z

    .prologue
    .line 1138
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1140
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1143
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->stopping:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1155
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1157
    :goto_0
    return-void

    .line 1146
    :cond_1
    :try_start_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->EVICTED:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1155
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    .line 1148
    :cond_2
    if-eqz p2, :cond_3

    :try_start_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->updateSeq:Lorg/apache/ignite/internal/util/GridAtomicLong;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridAtomicLong;->incrementAndGet()J

    move-result-wide v4

    .line 1150
    .local v4, "seq":J
    :goto_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->id()I

    move-result v1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->updateLocal(ILjava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;J)V

    .line 1152
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->consistencyCheck()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1155
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .line 1148
    .end local v4    # "seq":J
    :cond_3
    :try_start_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->updateSeq:Lorg/apache/ignite/internal/util/GridAtomicLong;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridAtomicLong;->get()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v4

    goto :goto_1
.end method

.method public onRemoved(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;)V
    .locals 4
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    .prologue
    .line 595
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->localPartition(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    move-result-object v0

    .line 597
    .local v0, "loc":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->onRemoved(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;)V

    .line 599
    :cond_0
    return-void
.end method

.method public own(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;)Z
    .locals 7
    .param p1, "part"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    .prologue
    .line 1114
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    .line 1116
    .local v6, "loc":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1119
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->own()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1120
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->id()I

    move-result v1

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v3

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->updateSeq:Lorg/apache/ignite/internal/util/GridAtomicLong;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridAtomicLong;->incrementAndGet()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->updateLocal(ILjava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;J)V

    .line 1122
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->consistencyCheck()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1124
    const/4 v0, 0x1

    .line 1132
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    :goto_0
    return v0

    .line 1127
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->consistencyCheck()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1129
    const/4 v0, 0x0

    .line 1132
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public owners(I)Ljava/util/List;
    .locals 1
    .param p1, "p"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 710
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    sget-object v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->owners(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public owners(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;
    .locals 2
    .param p1, "p"    # I
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 702
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->rebalanceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->ownersAndMoving(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;

    move-result-object v0

    .line 705
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->OWNING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->nodes(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public partitionMap(Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;
    .locals 8
    .param p1, "onlyActive"    # Z

    .prologue
    .line 737
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 740
    :try_start_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->valid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid node2part [node2part: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", locNodeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", locName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    .line 743
    :cond_1
    :try_start_1
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    .line 745
    .local v6, "m":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeOrder()J

    move-result-wide v2

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->updateSequence()J

    move-result-wide v4

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;-><init>(Ljava/util/UUID;JJLjava/util/Map;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 748
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0
.end method

.method public partitions(Ljava/util/UUID;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    .locals 2
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1161
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1164
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1167
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public printMemoryStats(I)V
    .locals 7
    .param p1, "threshold"    # I

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    const/16 v6, 0x5d

    const/4 v5, 0x0

    .line 1173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>  Cache partition topology stats [grid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cache="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1175
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->locParts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    .line 1176
    .local v1, "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->size()I

    move-result v2

    .line 1178
    .local v2, "size":I
    if-lt v2, p1, :cond_0

    .line 1179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>   Local partition [part="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->id()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1181
    .end local v1    # "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .end local v2    # "size":I
    :cond_1
    return-void
.end method

.method public readLock()V
    .locals 1

    .prologue
    .line 151
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 152
    return-void
.end method

.method public readUnlock()V
    .locals 1

    .prologue
    .line 156
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 157
    return-void
.end method

.method public stopping()Z
    .locals 1

    .prologue
    .line 216
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->stopping:Z

    return v0
.end method

.method public topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 4

    .prologue
    .line 187
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 190
    :try_start_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid topology version [topVer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cacheName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    .line 193
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0
.end method

.method public topologyVersionFuture()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;
    .locals 2

    .prologue
    .line 202
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 205
    :try_start_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->topReadyFut:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    .line 207
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->topReadyFut:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0
.end method

.method public update(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    .locals 20
    .param p1, "exchId"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "partMap"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 756
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v13}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 757
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Updating full partition map [exchId="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", parts="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->fullMapString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x5d

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 759
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 762
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->stopping:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v13, :cond_1

    .line 763
    const/4 v13, 0x0

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    :goto_0
    return-object v13

    .line 765
    :cond_1
    if-eqz p1, :cond_3

    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lastExchangeId:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lastExchangeId:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;->compareTo(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;)I

    move-result v13

    if-ltz v13, :cond_3

    .line 766
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v13}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 767
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Stale exchange id for full partition map update (will ignore) [lastExchId="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lastExchangeId:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", exchId="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x5d

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 770
    :cond_2
    const/4 v13, 0x0

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .line 773
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->compareTo(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;)I

    move-result v13

    if-ltz v13, :cond_5

    .line 774
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v13}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 775
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Stale partition map for full partition map update (will ignore) [lastExchId="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lastExchangeId:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", exchId="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", curMap="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", newMap="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x5d

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 778
    :cond_4
    const/4 v13, 0x0

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_0

    .line 781
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->updateSeq:Lorg/apache/ignite/internal/util/GridAtomicLong;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/util/GridAtomicLong;->incrementAndGet()J

    move-result-wide v14

    .line 783
    .local v14, "updateSeq":J
    if-eqz p1, :cond_6

    .line 784
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lastExchangeId:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    .line 786
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    if-eqz v13, :cond_c

    .line 787
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;

    .line 788
    .local v12, "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->nodeId()Ljava/util/UUID;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;

    .line 792
    .local v8, "newPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->updateSequence()J

    move-result-wide v16

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->updateSequence()J

    move-result-wide v18

    cmp-long v13, v16, v18

    if-gez v13, :cond_7

    .line 793
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v13}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 794
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Overriding partition map in full update map [exchId="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", curPart="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->mapString(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", newPart="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->mapString(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x5d

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 797
    :cond_8
    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->nodeId()Ljava/util/UUID;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 843
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v8    # "newPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    .end local v12    # "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    .end local v14    # "updateSeq":J
    :catchall_0
    move-exception v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v13

    .line 801
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v14    # "updateSeq":J
    :cond_9
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/UUID;>;"
    :cond_a
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 802
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/UUID;

    .line 804
    .local v9, "nodeId":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v13

    invoke-virtual {v13, v9}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->alive(Ljava/util/UUID;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 805
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v13}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 806
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Removing left node from full map update [nodeId="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", partMap="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x5d

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 809
    :cond_b
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 814
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/UUID;>;"
    .end local v9    # "nodeId":Ljava/util/UUID;
    :cond_c
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    .line 816
    new-instance v11, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partitions()I

    move-result v13

    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v0, v16

    invoke-direct {v11, v13, v0}, Ljava/util/HashMap;-><init>(IF)V

    .line 818
    .local v11, "p2n":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/util/UUID;>;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 819
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 820
    .local v10, "p":Ljava/lang/Integer;
    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 822
    .local v6, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    if-nez v6, :cond_e

    .line 825
    const/4 v13, 0x3

    invoke-static {v13}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashSet(I)Ljava/util/HashSet;

    move-result-object v6

    invoke-interface {v11, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    :cond_e
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 831
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    .end local v10    # "p":Ljava/lang/Integer;
    :cond_f
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->part2node:Ljava/util/Map;

    .line 833
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->checkEvictions(J)Z

    move-result v2

    .line 835
    .local v2, "changed":Z
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->consistencyCheck()V

    .line 837
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v13}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 838
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Partition map after full update: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->fullMapString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 840
    :cond_10
    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->localPartitionMap()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v13

    .line 843
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_0

    .line 840
    :cond_11
    const/4 v13, 0x0

    goto :goto_4
.end method

.method public update(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    .locals 12
    .param p1, "exchId"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "parts"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    const/16 v11, 0x5d

    const/4 v5, 0x0

    .line 851
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 852
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updating single partition map [exchId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", parts="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->mapString(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 854
    :cond_0
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v8

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->nodeId()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->alive(Ljava/util/UUID;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 855
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 856
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received partition update for non-existing node (will ignore) [exchId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", parts="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 938
    :cond_1
    :goto_0
    return-object v5

    .line 862
    :cond_2
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 865
    :try_start_0
    iget-boolean v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->stopping:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_3

    .line 938
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .line 868
    :cond_3
    :try_start_1
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lastExchangeId:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    if-eqz v8, :cond_5

    if-eqz p1, :cond_5

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lastExchangeId:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    invoke-virtual {v8, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;->compareTo(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;)I

    move-result v8

    if-lez v8, :cond_5

    .line 869
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 870
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Stale exchange id for single partition map update (will ignore) [lastExchId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lastExchangeId:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", exchId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 938
    :cond_4
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .line 876
    :cond_5
    if-eqz p1, :cond_6

    .line 877
    :try_start_2
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lastExchangeId:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    .line 879
    :cond_6
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    if-nez v8, :cond_7

    .line 881
    new-instance v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-direct {v8}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;-><init>()V

    iput-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    .line 883
    :cond_7
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->nodeId()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;

    .line 885
    .local v1, "cur":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->updateSequence()J

    move-result-wide v8

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->updateSequence()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-ltz v8, :cond_9

    .line 886
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 887
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Stale update sequence for single partition map update (will ignore) [exchId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", curSeq="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->updateSequence()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", newSeq="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->updateSequence()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 938
    :cond_8
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_0

    .line 893
    :cond_9
    :try_start_3
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->updateSeq:Lorg/apache/ignite/internal/util/GridAtomicLong;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/util/GridAtomicLong;->incrementAndGet()J

    move-result-wide v6

    .line 895
    .local v6, "updateSeq":J
    new-instance v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-direct {v8, v9, v6, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;J)V

    iput-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    .line 897
    const/4 v0, 0x0

    .line 899
    .local v0, "changed":Z
    if-eqz v1, :cond_a

    invoke-virtual {v1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 900
    :cond_a
    const/4 v0, 0x1

    .line 902
    :cond_b
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->node2part:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->nodeId()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v8, v9, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    new-instance v8, Ljava/util/HashMap;

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->part2node:Ljava/util/Map;

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->part2node:Ljava/util/Map;

    .line 907
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 908
    .local v4, "p":Ljava/lang/Integer;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->part2node:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 910
    .local v3, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    if-nez v3, :cond_c

    .line 913
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->part2node:Ljava/util/Map;

    const/4 v9, 0x3

    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashSet(I)Ljava/util/HashSet;

    move-result-object v3

    invoke-interface {v8, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    :cond_c
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->nodeId()Ljava/util/UUID;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v0, v8

    .line 916
    goto :goto_1

    .line 919
    .end local v3    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    .end local v4    # "p":Ljava/lang/Integer;
    :cond_d
    if-eqz v1, :cond_f

    .line 920
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->keySet()Ljava/util/Set;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v10, 0x0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/ignite/internal/util/F0;->notIn(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 921
    .restart local v4    # "p":Ljava/lang/Integer;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->part2node:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 923
    .restart local v3    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    if-eqz v3, :cond_e

    .line 924
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->nodeId()Ljava/util/UUID;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v0, v8

    goto :goto_2

    .line 928
    .end local v3    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    .end local v4    # "p":Ljava/lang/Integer;
    :cond_f
    invoke-direct {p0, v6, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->checkEvictions(J)Z

    move-result v8

    or-int/2addr v0, v8

    .line 930
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->consistencyCheck()V

    .line 932
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 933
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Partition map after single update: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->fullMapString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 935
    :cond_10
    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->localPartitionMap()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .line 938
    :cond_11
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_0

    .end local v0    # "changed":Z
    .end local v1    # "cur":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "updateSeq":J
    :catchall_0
    move-exception v5

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v5
.end method

.method public updateSequence()J
    .locals 2

    .prologue
    .line 732
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->updateSeq:Lorg/apache/ignite/internal/util/GridAtomicLong;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridAtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public updateTopologyVersion(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;JZ)V
    .locals 3
    .param p1, "exchId"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;
    .param p2, "exchFut"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    .param p3, "updSeq"    # J
    .param p5, "stopping"    # Z

    .prologue
    .line 166
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 169
    :try_start_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->compareTo(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid topology version [topVer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", exchId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    .line 172
    :cond_0
    :try_start_1
    iput-boolean p5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->stopping:Z

    .line 174
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 176
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->updateSeq:Lorg/apache/ignite/internal/util/GridAtomicLong;

    invoke-virtual {v0, p3, p4}, Lorg/apache/ignite/internal/util/GridAtomicLong;->setIfGreater(J)Z

    .line 178
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->topReadyFut:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 183
    return-void
.end method
