.class public Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
.super Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
.source "GridNearCacheEntry.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NEAR_SIZE_OVERHEAD:I = 0x24


# instance fields
.field private dhtVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field private part:I

.field private volatile topVer:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;JI)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p3, "hash"    # I
    .param p4, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .param p5, "next"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .param p6, "ttl"    # J
    .param p8, "hdrId"    # I

    .prologue
    .line 72
    invoke-direct/range {p0 .. p8}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;JI)V

    .line 46
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->topVer:J

    .line 74
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->part:I

    .line 75
    return-void
.end method

.method private primaryNode(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 627
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 628
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 630
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->part:I

    invoke-virtual {v1, v2, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    .line 632
    .local v0, "primary":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 633
    :cond_2
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->topVer:J

    .line 640
    :cond_3
    :goto_0
    return-void

    .line 638
    :cond_4
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->topVer:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 639
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->topVer:J

    goto :goto_0
.end method


# virtual methods
.method public addLocal(JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 10
    .param p1, "threadId"    # J
    .param p3, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p4, "timeout"    # J
    .param p6, "reenter"    # Z
    .param p7, "tx"    # Z
    .param p8, "implicitSingle"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 436
    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->addNearLocal(Ljava/util/UUID;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    return-object v0
.end method

.method public addNearLocal(Ljava/util/UUID;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 22
    .param p1, "dhtNodeId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "threadId"    # J
    .param p4, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p5, "timeout"    # J
    .param p7, "reenter"    # Z
    .param p8, "tx"    # Z
    .param p9, "implicitSingle"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 475
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v6

    .line 477
    .local v6, "locId":Ljava/util/UUID;
    monitor-enter p0

    .line 478
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->checkObsolete()V

    .line 480
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v4

    .line 482
    .local v4, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-nez v4, :cond_0

    .line 483
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    .end local v4    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 485
    .restart local v4    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->mvccExtras(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    .line 488
    :cond_0
    move-wide/from16 v0, p2

    invoke-virtual {v4, v6, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->localCandidate(Ljava/util/UUID;J)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v15

    .line 490
    .local v15, "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v15, :cond_2

    .line 491
    if-eqz p7, :cond_1

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->reenter()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v16

    :goto_0
    monitor-exit p0

    .line 519
    :goto_1
    return-object v16

    .line 491
    :cond_1
    const/16 v16, 0x0

    goto :goto_0

    .line 493
    :cond_2
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v20

    .line 495
    .local v20, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v18

    .line 498
    .local v18, "emptyBefore":Z
    const-wide/16 v8, 0x0

    cmp-long v5, p5, v8

    if-gez v5, :cond_3

    if-nez v18, :cond_3

    .line 499
    const/16 v16, 0x0

    monitor-exit p0

    goto :goto_1

    .line 514
    .end local v4    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .end local v15    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v18    # "emptyBefore":Z
    .end local v20    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v4    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .restart local v15    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .restart local v18    # "emptyBefore":Z
    .restart local v20    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_3
    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v10, p4

    move-wide/from16 v11, p5

    move/from16 v13, p8

    move/from16 v14, p9

    .line 502
    :try_start_1
    invoke-virtual/range {v4 .. v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->addNearLocal(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Ljava/util/UUID;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v16

    .line 504
    .local v16, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v19

    .line 506
    .local v19, "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v17

    .line 508
    .local v17, "emptyAfter":Z
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->checkCallbacks(ZZ)V

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-object/from16 v21, v0

    .line 512
    .local v21, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v17, :cond_4

    .line 513
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->mvccExtras(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    .line 514
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->checkOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    goto :goto_1
.end method

.method protected clearIndex(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    .locals 0
    .param p1, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .prologue
    .line 426
    return-void
.end method

.method public declared-synchronized dhtNodeId(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/UUID;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 3
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "dhtNodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 530
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->checkObsolete()V

    .line 532
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 534
    .local v1, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-nez v1, :cond_0

    move-object v0, v2

    .line 536
    .local v0, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :goto_0
    if-nez v0, :cond_1

    move-object v0, v2

    .line 541
    .end local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :goto_1
    monitor-exit p0

    return-object v0

    .line 534
    :cond_0
    :try_start_1
    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->candidate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    goto :goto_0

    .line 539
    .restart local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_1
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->otherNodeId(Ljava/util/UUID;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 530
    .end local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v1    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized dhtVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->checkObsolete()V

    .line 283
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->dhtVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initializeFromDht(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z
    .locals 13
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->peekExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    move-result-object v10

    .line 148
    .local v10, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    if-eqz v10, :cond_b

    .line 149
    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->info()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;

    move-result-object v8

    .line 151
    .local v8, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    if-eqz v8, :cond_0

    .line 152
    const/4 v9, 0x0

    .line 155
    .local v9, "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 156
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->checkObsolete()V

    .line 158
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->isNew()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->valid(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 160
    :cond_1
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->expireTime()J

    move-result-wide v2

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->ttl()J

    move-result-wide v4

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->isNew()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    :goto_0
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->update(Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 162
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deferredDelete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-nez v0, :cond_6

    move v7, v12

    .line 165
    .local v7, "deleted":Z
    :goto_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->deletedUnlocked()Z

    move-result v0

    if-eq v7, v0, :cond_2

    .line 166
    invoke-virtual {p0, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->deletedUnlocked(Z)V

    .line 168
    if-eqz v7, :cond_2

    .line 169
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v9

    .line 173
    .end local v7    # "deleted":Z
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {v0, v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->recordNodeId(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 175
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->isNew()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->dhtVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 177
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    if-eqz v9, :cond_4

    .line 185
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, p0, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->onDeferredDelete(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    :cond_4
    move v0, v12

    .line 190
    .end local v8    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .end local v9    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :goto_3
    return v0

    .line 160
    .restart local v8    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .restart local v9    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_5
    :try_start_2
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    goto :goto_0

    :cond_6
    move v7, v11

    .line 163
    goto :goto_1

    .line 175
    :cond_7
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    goto :goto_2

    .line 180
    :cond_8
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    if-eqz v9, :cond_9

    .line 185
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, p0, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->onDeferredDelete(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    :cond_9
    move v0, v11

    goto :goto_3

    .line 181
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 184
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_a

    .line 185
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1, p0, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->onDeferredDelete(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    :cond_a
    throw v0

    .end local v8    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .end local v9    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_b
    move v0, v11

    .line 190
    goto :goto_3
.end method

.method public isNear()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public loadedValue(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/UUID;)Z
    .locals 21
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "primaryNodeId"    # Ljava/util/UUID;
    .param p3, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .param p4, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p5, "dhtVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p6, "expVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7, "ttl"    # J
    .param p9, "expireTime"    # J
    .param p11, "evt"    # Z
    .param p12, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p13, "subjId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 364
    if-eqz p1, :cond_6

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v4

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->valid(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v20

    .line 366
    .local v20, "valid":Z
    const/16 v18, 0x0

    .line 369
    .local v18, "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 370
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->checkObsolete()V

    .line 372
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 373
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->onRead(Z)V

    .line 375
    :cond_0
    const/16 v19, 0x0

    .line 377
    .local v19, "ret":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 378
    .local v12, "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->hasValueUnlocked()Z

    move-result v13

    .line 380
    .local v13, "hasVal":Z
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->isNew()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v20, :cond_1

    if-eqz p6, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->dhtVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 381
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p12

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->primaryNode(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 384
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->dhtVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-wide/from16 v6, p9

    move-wide/from16 v8, p7

    move-object/from16 v10, p4

    .line 385
    invoke-virtual/range {v4 .. v10}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->update(Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deferredDelete()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 388
    if-nez p3, :cond_7

    const/16 v17, 0x1

    .line 390
    .local v17, "deleted":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->deletedUnlocked()Z

    move-result v4

    move/from16 v0, v17

    if-eq v0, v4, :cond_2

    .line 391
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->deletedUnlocked(Z)V

    .line 393
    if-eqz v17, :cond_2

    .line 394
    move-object/from16 v18, p4

    .line 398
    .end local v17    # "deleted":Z
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->recordDhtVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 400
    const/16 v19, 0x1

    .line 404
    :cond_3
    if-eqz p11, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 405
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->partition()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    const/4 v8, 0x0

    const/16 v9, 0x40

    if-eqz p3, :cond_8

    const/4 v11, 0x1

    :goto_2
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v7, p1

    move-object/from16 v10, p3

    move-object/from16 v14, p13

    invoke-virtual/range {v4 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    if-eqz v18, :cond_5

    .line 413
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->onDeferredDelete(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    :cond_5
    return v19

    .line 364
    .end local v12    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v13    # "hasVal":Z
    .end local v18    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v19    # "ret":Z
    .end local v20    # "valid":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v4

    goto/16 :goto_0

    .line 388
    .restart local v12    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v13    # "hasVal":Z
    .restart local v18    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v19    # "ret":Z
    .restart local v20    # "valid":Z
    :cond_7
    const/16 v17, 0x0

    goto :goto_1

    .line 405
    :cond_8
    const/4 v11, 0x0

    goto :goto_2

    .line 409
    .end local v12    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v13    # "hasVal":Z
    .end local v19    # "ret":Z
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 412
    :catchall_1
    move-exception v4

    if-eqz v18, :cond_9

    .line 413
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->onDeferredDelete(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    :cond_9
    throw v4
.end method

.method public memorySize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->memorySize()I

    move-result v0

    add-int/lit8 v0, v0, 0x24

    return v0
.end method

.method protected onInvalidate()V
    .locals 2

    .prologue
    .line 619
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->topVer:J

    .line 620
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->dhtVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 621
    return-void
.end method

.method public partition()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->part:I

    return v0
.end method

.method protected readThrough(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ZLjava/util/UUID;Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p3, "reload"    # Z
    .param p4, "subjId"    # Ljava/util/UUID;
    .param p5, "taskName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 324
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p1

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    move v9, v4

    invoke-virtual/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->loadAsync(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;ZZLjava/util/UUID;Ljava/lang/String;ZLjavax/cache/expiry/ExpiryPolicy;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->keyValue(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized recordDhtVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 1
    .param p1, "dhtVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->dhtVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    monitor-exit p0

    return-void

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected recordNodeId(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 1
    .param p1, "primaryNodeId"    # Ljava/util/UUID;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 305
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 307
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->primaryNode(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 308
    return-void
.end method

.method public removeLock()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 13
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 550
    const/4 v6, 0x0

    .line 551
    .local v6, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    const/4 v5, 0x0

    .line 555
    .local v5, "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v3

    .line 557
    .local v3, "locId":Ljava/util/UUID;
    const/4 v0, 0x0

    .line 559
    .local v0, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    monitor-enter p0

    .line 560
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v4

    .line 562
    .local v4, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-eqz v4, :cond_4

    .line 563
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v6

    .line 565
    const/4 v10, 0x0

    new-array v10, v10, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v4, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v2

    .line 567
    .local v2, "emptyBefore":Z
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v4, v3, v10, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->localCandidate(Ljava/util/UUID;J)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    .line 569
    sget-boolean v10, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nearLocal()Z

    move-result v10

    if-nez v10, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 597
    .end local v2    # "emptyBefore":Z
    .end local v4    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 571
    .restart local v2    # "emptyBefore":Z
    .restart local v4    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :cond_0
    if-eqz v0, :cond_5

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->owner()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 573
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->unenter()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v7

    .line 575
    .local v7, "reentry":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v7, :cond_3

    .line 576
    sget-boolean v9, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->$assertionsDisabled:Z

    if-nez v9, :cond_1

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->reentry()Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 578
    :cond_1
    monitor-exit p0

    move-object v9, v7

    .line 614
    .end local v2    # "emptyBefore":Z
    .end local v7    # "reentry":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_2
    :goto_0
    return-object v9

    .line 581
    .restart local v2    # "emptyBefore":Z
    .restart local v7    # "reentry":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_3
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->remove(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 583
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v5

    .line 588
    const/4 v10, 0x0

    new-array v10, v10, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v4, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v1

    .line 590
    .local v1, "emptyAfter":Z
    invoke-virtual {p0, v2, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->checkCallbacks(ZZ)V

    .line 592
    if-eqz v1, :cond_4

    .line 593
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->mvccExtras(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    .line 596
    .end local v1    # "emptyAfter":Z
    .end local v2    # "emptyBefore":Z
    .end local v7    # "reentry":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_4
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 597
    .local v8, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 599
    sget-boolean v10, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->$assertionsDisabled:Z

    if-nez v10, :cond_6

    if-nez v0, :cond_6

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 586
    .end local v8    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v2    # "emptyBefore":Z
    :cond_5
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 600
    .end local v2    # "emptyBefore":Z
    .restart local v8    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_6
    sget-boolean v10, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->$assertionsDisabled:Z

    if-nez v10, :cond_7

    if-ne v5, v6, :cond_7

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 602
    :cond_7
    sget-object v10, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v10}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 603
    sget-object v10, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Released local candidate from entry [owner="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", prev="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", entry="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5d

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 606
    :cond_8
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v10

    invoke-virtual {v10, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->removeExplicitLock(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V

    .line 608
    if-eqz v6, :cond_9

    if-eq v5, v6, :cond_9

    .line 609
    invoke-virtual {p0, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->checkThreadChain(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V

    .line 612
    :cond_9
    invoke-virtual {p0, v6, v5, v8}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->checkOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 614
    if-eq v5, v6, :cond_2

    move-object v9, v6

    goto/16 :goto_0
.end method

.method public resetFromPrimary(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z
    .locals 1
    .param p1, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p3, "dhtVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p4, "primaryNodeId"    # Ljava/util/UUID;
    .param p5, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 213
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 215
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v0

    invoke-virtual {v0, p4, p3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->onReceived(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 217
    monitor-enter p0

    .line 218
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->checkObsolete()V

    .line 220
    invoke-direct {p0, p4, p5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->primaryNode(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 222
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->dhtVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-static {v0, p3}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 225
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 226
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->dhtVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 228
    const/4 v0, 0x1

    monitor-exit p0

    .line 232
    :goto_0
    return v0

    .line 230
    :cond_1
    monitor-exit p0

    .line 232
    const/4 v0, 0x0

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 644
    monitor-enter p0

    :try_start_0
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;

    const-string v1, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected updateIndex(Lorg/apache/ignite/internal/processors/cache/CacheObject;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    .locals 0
    .param p1, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .param p2, "expireTime"    # J
    .param p4, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p5, "old"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 421
    return-void
.end method

.method public updateOrEvict(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLjava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 3
    .param p1, "dhtVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "expireTime"    # J
    .param p5, "ttl"    # J
    .param p7, "primaryNodeId"    # Ljava/util/UUID;
    .param p8, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 251
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 253
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v0

    invoke-virtual {v0, p7, p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->onReceived(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 255
    monitor-enter p0

    .line 256
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->obsolete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 258
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->dhtVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->dhtVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 263
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->dhtVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    if-nez v0, :cond_2

    .line 264
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->markObsolete(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 265
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 267
    long-to-int v0, p5

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1, p3, p4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->ttlAndExpireTimeExtras(JJ)V

    .line 269
    invoke-direct {p0, p7, p8}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->primaryNode(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 273
    :cond_2
    monitor-exit p0

    .line 274
    return-void

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public valid(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z
    .locals 12
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 94
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-gtz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Topology version is invalid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 96
    :cond_0
    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->topVer:J

    .line 98
    .local v4, "topVer0":J
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v8

    cmp-long v3, v4, v8

    if-nez v3, :cond_1

    .line 99
    const/4 v3, 0x1

    .line 135
    :goto_0
    return v3

    .line 101
    :cond_1
    const-wide/16 v8, -0x1

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v8

    cmp-long v3, v8, v4

    if-gez v3, :cond_3

    .line 102
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 105
    :cond_3
    const/4 v1, 0x0

    .line 107
    .local v1, "primary":Lorg/apache/ignite/cluster/ClusterNode;
    move-wide v6, v4

    .local v6, "ver":J
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-gtz v3, :cond_7

    .line 108
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v3

    iget v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->part:I

    new-instance v9, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-direct {v9, v6, v7}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(J)V

    invoke-virtual {v3, v8, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    .line 110
    .local v2, "primary0":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v2, :cond_4

    .line 111
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->topVer:J

    .line 113
    const/4 v3, 0x0

    goto :goto_0

    .line 116
    :cond_4
    if-nez v1, :cond_6

    .line 117
    move-object v1, v2

    .line 107
    :cond_5
    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    goto :goto_1

    .line 119
    :cond_6
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 120
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->topVer:J

    .line 122
    const/4 v3, 0x0

    goto :goto_0

    .line 127
    .end local v2    # "primary0":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_7
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->topVer:J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    const/4 v3, 0x1

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 133
    .local v0, "ignore":Ljava/lang/IllegalStateException;
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->topVer:J

    .line 135
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public declared-synchronized versionedValue()Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->checkObsolete()V

    .line 294
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->dhtVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 295
    const/4 v1, 0x0

    .line 299
    :goto_0
    monitor-exit p0

    return-object v1

    .line 297
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->valueBytesUnlocked()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v0

    .line 299
    .local v0, "val0":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-static {v1, v0}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 292
    .end local v0    # "val0":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
