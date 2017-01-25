.class Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable;
.super Ljava/lang/Object;
.source "GridDistributedCacheAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GlobalRemoveAllCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Externalizable;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/processors/task/GridInternal;
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private cacheName:Ljava/lang/String;

.field private ignite:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field

.field private topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 251
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 0
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 259
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable;->cacheName:Ljava/lang/String;

    .line 261
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 262
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$1;

    .prologue
    .line 234
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 268
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable;->ignite:Lorg/apache/ignite/Ignite;

    move-object/from16 v17, v0

    check-cast v17, Lorg/apache/ignite/internal/IgniteKernal;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/IgniteKernal;->context()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable;->cacheName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    .line 270
    .local v4, "cacheAdapter":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v5

    .line 272
    .local v5, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityReadyFuture(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 274
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 277
    :try_start_0
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v17

    if-nez v17, :cond_0

    .line 278
    const/16 v17, 0x0

    .line 326
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    .line 329
    :goto_0
    return-object v17

    .line 281
    :cond_0
    const/4 v13, 0x0

    .line 283
    .local v13, "near":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter<TK;TV;>;"
    :try_start_1
    instance-of v0, v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 284
    move-object v0, v4

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-object v13, v0

    .line 285
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v7

    .line 290
    .local v7, "dht":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable;->ignite:Lorg/apache/ignite/Ignite;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable;->cacheName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lorg/apache/ignite/Ignite;->dataStreamer(Ljava/lang/String;)Lorg/apache/ignite/IgniteDataStreamer;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v6, "dataLdr":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;>;"
    const/16 v18, 0x0

    .line 292
    const/16 v17, 0x0

    :try_start_2
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->maxRemapCount(I)V

    .line 294
    invoke-static {}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters;->batched()Lorg/apache/ignite/stream/StreamReceiver;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->receiver(Lorg/apache/ignite/stream/StreamReceiver;)V

    .line 296
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->currentLocalPartitions()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    .line 297
    .local v12, "locPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->primary(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 298
    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->entries()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    .line 299
    .local v14, "o":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->obsoleteOrDeleted()Z

    move-result v17

    if-nez v17, :cond_2

    .line 300
    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->removeDataInternal(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/lang/IgniteFuture;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    .line 290
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "locPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .end local v14    # "o":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    :catch_0
    move-exception v17

    :try_start_3
    throw v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 314
    :catchall_0
    move-exception v18

    move-object/from16 v22, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v22

    :goto_3
    if-eqz v6, :cond_3

    if-eqz v18, :cond_b

    :try_start_4
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_3
    :goto_4
    :try_start_5
    throw v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 326
    .end local v6    # "dataLdr":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;>;"
    .end local v7    # "dht":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    .end local v13    # "near":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter<TK;TV;>;"
    :catchall_1
    move-exception v17

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v17

    .line 288
    .restart local v13    # "near":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter<TK;TV;>;"
    :cond_4
    :try_start_6
    move-object v0, v4

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-object v7, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .restart local v7    # "dht":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    goto/16 :goto_1

    .line 305
    .restart local v6    # "dataLdr":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;>;"
    :cond_5
    :try_start_7
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v17

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offHeapKeyIterator(ZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Iterator;

    move-result-object v11

    .line 307
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 308
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->removeDataInternal(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/lang/IgniteFuture;

    goto :goto_5

    .line 314
    .end local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :catchall_2
    move-exception v17

    goto :goto_3

    .line 310
    .restart local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_6
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v17

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapKeyIterator(ZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Iterator;

    move-result-object v11

    .line 312
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 313
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->removeDataInternal(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/lang/IgniteFuture;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_6

    .line 314
    :cond_7
    if-eqz v6, :cond_8

    if-eqz v18, :cond_a

    :try_start_8
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 316
    :cond_8
    :goto_7
    if-eqz v13, :cond_c

    .line 317
    :try_start_9
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v15

    .line 319
    .local v15, "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->map()Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->allEntries0()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 320
    .local v8, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->valid(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v17

    if-nez v17, :cond_9

    invoke-interface {v8, v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->markObsolete(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 321
    invoke-virtual {v13, v8}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    goto :goto_8

    .line 314
    .end local v8    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v15    # "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :catch_1
    move-exception v16

    .local v16, "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    .end local v16    # "x2":Ljava/lang/Throwable;
    :cond_a
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->close()V

    goto :goto_7

    .end local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :catch_2
    move-exception v16

    .restart local v16    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .end local v16    # "x2":Ljava/lang/Throwable;
    :cond_b
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_4

    .line 326
    .restart local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_c
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    .line 329
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable<TK;TV;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable;->cacheName:Ljava/lang/String;

    .line 341
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 342
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable;->cacheName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 336
    return-void
.end method
