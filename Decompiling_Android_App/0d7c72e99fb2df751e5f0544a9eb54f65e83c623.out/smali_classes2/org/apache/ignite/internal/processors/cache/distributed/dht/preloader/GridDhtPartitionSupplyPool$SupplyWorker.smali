.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "GridDhtPartitionSupplyPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupplyWorker"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private log:Lorg/apache/ignite/IgniteLogger;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 201
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)V
    .locals 3

    .prologue
    .line 208
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool<TK;TV;>.SupplyWorker;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    .line 209
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "preloader-supply-worker"

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 203
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->log:Lorg/apache/ignite/IgniteLogger;

    .line 210
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$1;

    .prologue
    .line 201
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool<TK;TV;>.SupplyWorker;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)V

    return-void
.end method

.method private processMessage(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$DemandMessage;Lorg/apache/ignite/cluster/ClusterNode;)V
    .locals 31
    .param p1, "msg"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$DemandMessage;
    .param p2, "node"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 238
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool<TK;TV;>.SupplyWorker;"
    sget-boolean v27, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->$assertionsDisabled:Z

    if-nez v27, :cond_0

    if-nez p1, :cond_0

    new-instance v27, Ljava/lang/AssertionError;

    invoke-direct/range {v27 .. v27}, Ljava/lang/AssertionError;-><init>()V

    throw v27

    .line 239
    :cond_0
    sget-boolean v27, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->$assertionsDisabled:Z

    if-nez v27, :cond_1

    if-nez p2, :cond_1

    new-instance v27, Ljava/lang/AssertionError;

    invoke-direct/range {v27 .. v27}, Ljava/lang/AssertionError;-><init>()V

    throw v27

    .line 241
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$DemandMessage;->message()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;

    move-result-object v7

    .line 243
    .local v7, "d":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;
    new-instance v22, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;->workerId()I

    move-result v27

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;->updateSequence()J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v30 .. v30}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v30

    move-object/from16 v0, v22

    move/from16 v1, v27

    move-wide/from16 v2, v28

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;-><init>(IJI)V

    .line 246
    .local v22, "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceThrottle()J

    move-result-wide v20

    .line 248
    .local v20, "preloadThrottle":J
    const/4 v6, 0x0

    .line 254
    .local v6, "ack":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v27

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->finishLocks(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 256
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;->partitions()Ljava/util/Collection;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_20

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 257
    .local v17, "part":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v29

    const/16 v30, 0x0

    invoke-interface/range {v27 .. v30}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->localPartition(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    move-result-object v16

    .line 259
    .local v16, "loc":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v27

    sget-object v28, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->OWNING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_3

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->reserve()Z

    move-result v27

    if-nez v27, :cond_4

    .line 262
    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->missed(I)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v27

    if-eqz v27, :cond_2

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Requested partition is not owned by local node [part="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", demander="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$DemandMessage;->senderId()Ljava/util/UUID;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x5d

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 476
    .end local v16    # "loc":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .end local v17    # "part":Ljava/lang/Integer;
    :catch_0
    move-exception v8

    .line 477
    .local v8, "e":Lorg/apache/ignite/IgniteCheckedException;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Failed to send partition supply message to node: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface/range {p2 .. p2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 479
    .end local v8    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :goto_2
    return-void

    .line 271
    .restart local v16    # "loc":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .restart local v17    # "part":Ljava/lang/Integer;
    :cond_4
    const/16 v25, 0x0

    .line 274
    .local v25, "swapLsnr":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfoCollectSwapListener;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isSwapOrOffheapEnabled()Z

    move-result v27

    if-eqz v27, :cond_5

    .line 275
    new-instance v26, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfoCollectSwapListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfoCollectSwapListener;-><init>(Lorg/apache/ignite/IgniteLogger;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    .end local v25    # "swapLsnr":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfoCollectSwapListener;
    .local v26, "swapLsnr":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfoCollectSwapListener;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->addOffHeapListener(ILorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->addSwapListener(ILorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v25, v26

    .line 281
    .end local v26    # "swapLsnr":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfoCollectSwapListener;
    .restart local v25    # "swapLsnr":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfoCollectSwapListener;
    :cond_5
    const/16 v18, 0x0

    .line 283
    .local v18, "partMissing":Z
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->entries()Ljava/util/Collection;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    move-object/from16 v23, v22

    .end local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .local v23, "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    :goto_3
    :try_start_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 284
    .local v8, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v27

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->belongs(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v27

    if-nez v27, :cond_8

    .line 286
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->missed(I)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v27

    if-eqz v27, :cond_6

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Demanding node does not need requested partition [part="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", nodeId="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$DemandMessage;->senderId()Ljava/util/UUID;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x5d

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 292
    :cond_6
    const/16 v18, 0x1

    .line 322
    .end local v8    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_7
    if-eqz v18, :cond_10

    .line 465
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->release()V

    .line 467
    if-eqz v25, :cond_2a

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->removeOffHeapListener(ILorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->removeSwapListener(ILorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v22, v23

    .end local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    goto/16 :goto_0

    .line 297
    .end local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v8    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    :cond_8
    :try_start_6
    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->messageSize()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v28, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceBatchSize()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_2e

    .line 298
    const/4 v6, 0x1

    .line 300
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->reply(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result v27

    if-nez v27, :cond_a

    .line 465
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->release()V

    .line 467
    if-eqz v25, :cond_9

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->removeOffHeapListener(ILorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->removeSwapListener(ILorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V
    :try_end_7
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_9
    move-object/from16 v22, v23

    .end local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    goto/16 :goto_2

    .line 304
    .end local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    :cond_a
    const-wide/16 v28, 0x0

    cmp-long v27, v20, v28

    if-lez v27, :cond_b

    .line 305
    :try_start_8
    invoke-static/range {v20 .. v21}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V

    .line 307
    :cond_b
    new-instance v22, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;->workerId()I

    move-result v27

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;->updateSequence()J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v30 .. v30}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v30

    move-object/from16 v0, v22

    move/from16 v1, v27

    move-wide/from16 v2, v28

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;-><init>(IJI)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 311
    .end local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    :goto_4
    :try_start_9
    invoke-interface {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->info()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;

    move-result-object v13

    .line 313
    .local v13, "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    if-eqz v13, :cond_d

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->isNew()Z

    move-result v27

    if-nez v27, :cond_d

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->preloadPred:Lorg/apache/ignite/lang/IgnitePredicate;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v27

    if-eqz v27, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->preloadPred:Lorg/apache/ignite/lang/IgnitePredicate;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 315
    :cond_c
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v28, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v28

    move-object/from16 v0, v22

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v13, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->addEntry(ILorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    :cond_d
    :goto_5
    move-object/from16 v23, v22

    .line 320
    .end local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    goto/16 :goto_3

    .line 316
    .end local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v27

    if-eqz v27, :cond_d

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Rebalance predicate evaluated to false (will not sender cache entry): "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    .line 465
    .end local v8    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .end local v18    # "partMissing":Z
    :catchall_0
    move-exception v27

    :goto_6
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->release()V

    .line 467
    if-eqz v25, :cond_f

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v28, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v28

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->removeOffHeapListener(ILorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v28, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v28

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->removeSwapListener(ILorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V

    :cond_f
    throw v27
    :try_end_a
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_a .. :try_end_a} :catch_0

    .line 325
    .end local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v18    # "partMissing":Z
    .restart local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    :cond_10
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isSwapOrOffheapEnabled()Z

    move-result v27

    if-eqz v27, :cond_2d

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->iterator(I)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-result-object v14

    .line 330
    .local v14, "iter":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<Ljava/util/Map$Entry<[BLorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;>;>;"
    if-eqz v14, :cond_2d

    .line 332
    const/16 v19, 0x0

    .line 334
    .local v19, "prepared":Z
    :try_start_c
    invoke-interface {v14}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 335
    .local v9, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[BLorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v27

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->belongs(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v27

    if-nez v27, :cond_13

    .line 338
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->missed(I)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v27

    if-eqz v27, :cond_11

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Demanding node does not need requested partition [part="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", nodeId="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$DemandMessage;->senderId()Ljava/util/UUID;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x5d

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 344
    :cond_11
    const/16 v18, 0x1

    .line 402
    .end local v9    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[BLorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;>;"
    :cond_12
    if-eqz v18, :cond_1d

    .line 406
    :try_start_d
    invoke-interface {v14}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 465
    :try_start_e
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->release()V

    .line 467
    if-eqz v25, :cond_2a

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->removeOffHeapListener(ILorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->removeSwapListener(ILorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V
    :try_end_e
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_e .. :try_end_e} :catch_1

    move-object/from16 v22, v23

    .end local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    goto/16 :goto_0

    .line 349
    .end local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v9    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[BLorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;>;"
    .restart local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    :cond_13
    :try_start_f
    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->messageSize()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v28, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceBatchSize()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_2c

    .line 350
    const/4 v6, 0x1

    .line 352
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->reply(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result v27

    if-nez v27, :cond_15

    .line 406
    :try_start_10
    invoke-interface {v14}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 465
    :try_start_11
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->release()V

    .line 467
    if-eqz v25, :cond_14

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->removeOffHeapListener(ILorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->removeSwapListener(ILorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V
    :try_end_11
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_11 .. :try_end_11} :catch_1

    :cond_14
    move-object/from16 v22, v23

    .end local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    goto/16 :goto_2

    .line 356
    .end local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    :cond_15
    const-wide/16 v28, 0x0

    cmp-long v27, v20, v28

    if-lez v27, :cond_16

    .line 357
    :try_start_12
    invoke-static/range {v20 .. v21}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V

    .line 359
    :cond_16
    new-instance v22, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;->workerId()I

    move-result v27

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;->updateSequence()J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v30 .. v30}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v30

    move-object/from16 v0, v22

    move/from16 v1, v27

    move-wide/from16 v2, v28

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;-><init>(IJI)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 363
    .end local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    :goto_8
    :try_start_13
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    .line 365
    .local v24, "swapEntry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    new-instance v13, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;

    invoke-direct {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;-><init>()V

    .line 367
    .restart local v13    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [B

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->keyBytes([B)V

    .line 368
    invoke-interface/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->ttl()J

    move-result-wide v28

    move-wide/from16 v0, v28

    invoke-virtual {v13, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->ttl(J)V

    .line 369
    invoke-interface/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->expireTime()J

    move-result-wide v28

    move-wide/from16 v0, v28

    invoke-virtual {v13, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->expireTime(J)V

    .line 370
    invoke-interface/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->version(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 371
    invoke-interface/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->preloadPred:Lorg/apache/ignite/lang/IgnitePredicate;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v27

    if-eqz v27, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->preloadPred:Lorg/apache/ignite/lang/IgnitePredicate;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_18

    .line 374
    :cond_17
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v28, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v28

    move-object/from16 v0, v22

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v13, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->addEntry0(ILorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->depEnabled:Z
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$800(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Z

    move-result v27

    if-eqz v27, :cond_1c

    if-nez v19, :cond_1c

    .line 385
    invoke-interface/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->keyClassLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v27

    if-eqz v27, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v27

    invoke-interface/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->keyClassLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->getClassLoader(Lorg/apache/ignite/lang/IgniteUuid;)Ljava/lang/ClassLoader;

    move-result-object v15

    .line 391
    .local v15, "ldr":Ljava/lang/ClassLoader;
    :goto_9
    if-nez v15, :cond_1b

    move-object/from16 v23, v22

    .line 392
    .end local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    goto/16 :goto_7

    .line 376
    .end local v15    # "ldr":Ljava/lang/ClassLoader;
    .end local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v27

    if-eqz v27, :cond_2b

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Rebalance predicate evaluated to false (will not send cache entry): "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    move-object/from16 v23, v22

    .end local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    goto/16 :goto_7

    .line 385
    .end local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    :cond_19
    invoke-interface/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->valueClassLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v27

    if-eqz v27, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v27

    invoke-interface/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->valueClassLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->getClassLoader(Lorg/apache/ignite/lang/IgniteUuid;)Ljava/lang/ClassLoader;

    move-result-object v15

    goto :goto_9

    :cond_1a
    const/4 v15, 0x0

    goto :goto_9

    .line 394
    .restart local v15    # "ldr":Ljava/lang/ClassLoader;
    :cond_1b
    instance-of v0, v15, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    move/from16 v27, v0

    if-eqz v27, :cond_1c

    .line 395
    check-cast v15, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    .end local v15    # "ldr":Ljava/lang/ClassLoader;
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->prepare(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 397
    const/16 v19, 0x1

    :cond_1c
    move-object/from16 v23, v22

    .line 400
    .end local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    goto/16 :goto_7

    .line 406
    .end local v9    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[BLorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;>;"
    .end local v13    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .end local v24    # "swapEntry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    :cond_1d
    :try_start_14
    invoke-interface {v14}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    move-object/from16 v22, v23

    .line 412
    .end local v14    # "iter":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<Ljava/util/Map$Entry<[BLorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;>;>;"
    .end local v19    # "prepared":Z
    .end local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    :goto_a
    if-eqz v25, :cond_1e

    .line 413
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->removeOffHeapListener(ILorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->removeSwapListener(ILorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V

    .line 417
    :cond_1e
    if-eqz v25, :cond_1f

    .line 418
    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfoCollectSwapListener;->entries()Ljava/util/Collection;

    move-result-object v10

    .line 420
    .local v10, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;"
    const/16 v25, 0x0

    .line 422
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move-result-object v12

    move-object/from16 v23, v22

    .end local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    :goto_b
    :try_start_16
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_29

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;

    .line 423
    .restart local v13    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v27

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->belongs(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v27

    if-nez v27, :cond_21

    .line 426
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->missed(I)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v27

    if-eqz v27, :cond_29

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Demanding node does not need requested partition [part="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", nodeId="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$DemandMessage;->senderId()Ljava/util/UUID;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x5d

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    move-object/from16 v22, v23

    .line 456
    .end local v10    # "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;"
    .end local v13    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .end local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    :cond_1f
    :goto_c
    :try_start_17
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->last(I)V

    .line 458
    if-eqz v6, :cond_27

    .line 459
    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->markAck()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 465
    :try_start_18
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->release()V

    .line 467
    if-eqz v25, :cond_20

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->removeOffHeapListener(ILorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->removeSwapListener(ILorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V

    .line 474
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v16    # "loc":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .end local v17    # "part":Ljava/lang/Integer;
    .end local v18    # "partMissing":Z
    .end local v25    # "swapLsnr":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfoCollectSwapListener;
    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->reply(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;)Z
    :try_end_18
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_18 .. :try_end_18} :catch_0

    goto/16 :goto_2

    .line 406
    .end local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v14    # "iter":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<Ljava/util/Map$Entry<[BLorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;>;>;"
    .restart local v16    # "loc":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .restart local v17    # "part":Ljava/lang/Integer;
    .restart local v18    # "partMissing":Z
    .restart local v19    # "prepared":Z
    .restart local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v25    # "swapLsnr":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfoCollectSwapListener;
    :catchall_1
    move-exception v27

    move-object/from16 v22, v23

    .end local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    :goto_d
    :try_start_19
    invoke-interface {v14}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V

    throw v27
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 436
    .end local v14    # "iter":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<Ljava/util/Map$Entry<[BLorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;>;>;"
    .end local v19    # "prepared":Z
    .end local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v10    # "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;"
    .restart local v13    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .restart local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    :cond_21
    :try_start_1a
    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->messageSize()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v28, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceBatchSize()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_28

    .line 437
    const/4 v6, 0x1

    .line 439
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->reply(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;)Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    move-result v27

    if-nez v27, :cond_23

    .line 465
    :try_start_1b
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->release()V

    .line 467
    if-eqz v25, :cond_22

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->removeOffHeapListener(ILorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->removeSwapListener(ILorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V
    :try_end_1b
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1b .. :try_end_1b} :catch_1

    :cond_22
    move-object/from16 v22, v23

    .end local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    goto/16 :goto_2

    .line 442
    .end local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    :cond_23
    :try_start_1c
    new-instance v22, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;->workerId()I

    move-result v27

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;->updateSequence()J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v30 .. v30}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v30

    move-object/from16 v0, v22

    move/from16 v1, v27

    move-wide/from16 v2, v28

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;-><init>(IJI)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    .line 447
    .end local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    :goto_e
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->preloadPred:Lorg/apache/ignite/lang/IgnitePredicate;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v27

    if-eqz v27, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->preloadPred:Lorg/apache/ignite/lang/IgnitePredicate;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_26

    .line 448
    :cond_24
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v28, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v28

    move-object/from16 v0, v22

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v13, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->addEntry(ILorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    :cond_25
    :goto_f
    move-object/from16 v23, v22

    .line 452
    .end local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    goto/16 :goto_b

    .line 449
    .end local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v27

    if-eqz v27, :cond_25

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Rebalance predicate evaluated to false (will not sender cache entry): "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    goto :goto_f

    .line 465
    .end local v10    # "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;"
    .end local v13    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    :cond_27
    :try_start_1e
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->release()V

    .line 467
    if-eqz v25, :cond_2

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->removeOffHeapListener(ILorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->removeSwapListener(ILorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V
    :try_end_1e
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1e .. :try_end_1e} :catch_0

    goto/16 :goto_0

    .line 476
    .end local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    :catch_1
    move-exception v8

    move-object/from16 v22, v23

    .end local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    goto/16 :goto_1

    .line 465
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v18    # "partMissing":Z
    .end local v25    # "swapLsnr":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfoCollectSwapListener;
    .restart local v26    # "swapLsnr":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfoCollectSwapListener;
    :catchall_2
    move-exception v27

    move-object/from16 v25, v26

    .end local v26    # "swapLsnr":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfoCollectSwapListener;
    .restart local v25    # "swapLsnr":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfoCollectSwapListener;
    goto/16 :goto_6

    .end local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v18    # "partMissing":Z
    .restart local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    :catchall_3
    move-exception v27

    move-object/from16 v22, v23

    .end local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    goto/16 :goto_6

    .line 406
    .restart local v9    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[BLorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;>;"
    .restart local v14    # "iter":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<Ljava/util/Map$Entry<[BLorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;>;>;"
    .restart local v19    # "prepared":Z
    :catchall_4
    move-exception v27

    goto/16 :goto_d

    .end local v9    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[BLorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;>;"
    .end local v14    # "iter":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<Ljava/util/Map$Entry<[BLorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;>;>;"
    .end local v19    # "prepared":Z
    .end local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v10    # "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;"
    .restart local v13    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .restart local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    :cond_28
    move-object/from16 v22, v23

    .end local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    goto/16 :goto_e

    .end local v13    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .end local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    :cond_29
    move-object/from16 v22, v23

    .end local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    goto/16 :goto_c

    .end local v10    # "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;"
    .end local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    :cond_2a
    move-object/from16 v22, v23

    .end local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    goto/16 :goto_0

    .restart local v9    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[BLorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;>;"
    .restart local v13    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .restart local v14    # "iter":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<Ljava/util/Map$Entry<[BLorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;>;>;"
    .restart local v19    # "prepared":Z
    .restart local v24    # "swapEntry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    :cond_2b
    move-object/from16 v23, v22

    .end local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    goto/16 :goto_7

    .end local v13    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .end local v24    # "swapEntry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    :cond_2c
    move-object/from16 v22, v23

    .end local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    goto/16 :goto_8

    .end local v9    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[BLorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;>;"
    .end local v14    # "iter":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<Ljava/util/Map$Entry<[BLorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;>;>;"
    .end local v19    # "prepared":Z
    .end local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    :cond_2d
    move-object/from16 v22, v23

    .end local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    goto/16 :goto_a

    .end local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v8    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    :cond_2e
    move-object/from16 v22, v23

    .end local v23    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .restart local v22    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    goto/16 :goto_4
.end method

.method private reply(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;)Z
    .locals 8
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "d"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;
    .param p3, "s"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 491
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool<TK;TV;>.SupplyWorker;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Replying to partition demand [node="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", demand="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", supply="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 494
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;->topic()Ljava/lang/Object;

    move-result-object v3

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;->timeout()J

    move-result-wide v6

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->sendOrderedMessage(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;J)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    const/4 v1, 0x1

    .line 502
    :goto_0
    return v1

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, "ignore":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 500
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send partition supply message because node left grid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 502
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected body()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool<TK;TV;>.SupplyWorker;"
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 215
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->queue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->poll(Ljava/util/concurrent/BlockingQueue;Lorg/apache/ignite/internal/util/worker/GridWorker;)Ljava/lang/Object;
    invoke-static {v2, v3, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;Ljava/util/concurrent/BlockingQueue;Lorg/apache/ignite/internal/util/worker/GridWorker;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$DemandMessage;

    .line 217
    .local v0, "msg":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$DemandMessage;
    if-eqz v0, :cond_0

    .line 220
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$DemandMessage;->senderId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    .line 222
    .local v1, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v1, :cond_1

    .line 223
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received message from non-existing node (will ignore): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_1
    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;->processMessage(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$DemandMessage;Lorg/apache/ignite/cluster/ClusterNode;)V

    goto :goto_0

    .line 231
    .end local v0    # "msg":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$DemandMessage;
    .end local v1    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_2
    return-void
.end method
