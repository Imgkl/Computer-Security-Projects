.class public Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
.super Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
.source "GridDhtCacheEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DHT_SIZE_OVERHEAD:I = 0x10

.field private static final R2N:Lorg/apache/ignite/lang/IgniteClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final locPart:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

.field private volatile rdrs:[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->$assertionsDisabled:Z

    .line 46
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->R2N:Lorg/apache/ignite/lang/IgniteClosure;

    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;JI)V
    .locals 9
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p3, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p4, "hash"    # I
    .param p5, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .param p6, "next"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .param p7, "ttl"    # J
    .param p9, "hdrId"    # I

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-wide/from16 v6, p7

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;JI)V

    .line 53
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->access$000()[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->rdrs:[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    .line 81
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v0

    invoke-interface {v0, p2, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->onAdded(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->locPart:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    .line 82
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method


# virtual methods
.method public addDhtLocal(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 23
    .param p1, "nearNodeId"    # Ljava/util/UUID;
    .param p2, "nearVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p3, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p4, "threadId"    # J
    .param p6, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p7, "timeout"    # J
    .param p9, "reenter"    # Z
    .param p10, "tx"    # Z
    .param p11, "implicitSingle"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;,
            Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 177
    monitor-enter p0

    .line 179
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->checkRemoved(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 180
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->checkRemoved(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 182
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->checkObsolete()V

    .line 184
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v4

    .line 186
    .local v4, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-nez v4, :cond_0

    .line 187
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    .end local v4    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 189
    .restart local v4    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->mvccExtras(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    .line 192
    :cond_0
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v21

    .line 194
    .local v21, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v19

    .line 196
    .local v19, "emptyBefore":Z
    const/16 v16, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    move-wide/from16 v11, p7

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    invoke-virtual/range {v4 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->addLocal(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v17

    .line 209
    .local v17, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-nez v17, :cond_1

    .line 210
    const/16 v17, 0x0

    monitor-exit p0

    .line 236
    .end local v17    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :goto_0
    return-object v17

    .line 212
    .restart local v17    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_1
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->topologyVersion(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 214
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v20

    .line 216
    .local v20, "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v20, :cond_2

    .line 217
    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ownerVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    .line 219
    :cond_2
    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v18

    .line 221
    .local v18, "emptyAfter":Z
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->checkCallbacks(ZZ)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-object/from16 v22, v0

    .line 225
    .local v22, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v4, :cond_3

    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 226
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->mvccExtras(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    .line 227
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    if-eqz v17, :cond_4

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->reentry()Z

    move-result v5

    if-nez v5, :cond_4

    .line 232
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->addNext(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z

    .line 234
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->checkOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    goto :goto_0

    .line 227
    .end local v4    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .end local v17    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v18    # "emptyAfter":Z
    .end local v19    # "emptyBefore":Z
    .end local v20    # "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v21    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v22    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public addReader(Ljava/util/UUID;JLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 20
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msgId"    # J
    .param p4, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "J",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
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
    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 357
    const/4 v15, 0x0

    .line 470
    :cond_0
    :goto_0
    return-object v15

    .line 359
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    .line 361
    .local v7, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v7, :cond_3

    .line 362
    sget-object v16, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 363
    sget-object v16, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Ignoring near reader because node left the grid: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 365
    :cond_2
    const/4 v15, 0x0

    goto :goto_0

    .line 369
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->cacheName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cacheNearNode(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 370
    sget-object v16, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 371
    sget-object v16, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Ignoring near reader because near cache is disabled: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 373
    :cond_4
    const/4 v15, 0x0

    goto :goto_0

    .line 377
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->partition()I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, p4

    invoke-virtual {v0, v7, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->belongs(Lorg/apache/ignite/cluster/ClusterNode;ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 378
    sget-object v16, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 379
    sget-object v16, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Ignoring near reader because remote node is affinity node [locNodeId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", rmtNodeId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", key="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x5d

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 382
    :cond_6
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 385
    :cond_7
    const/4 v13, 0x0

    .line 387
    .local v13, "ret":Z
    const/4 v15, 0x0

    .line 389
    .local v15, "txFut":Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;
    const/4 v5, 0x0

    .line 393
    .local v5, "cands":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    monitor-enter p0

    .line 394
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->checkObsolete()V

    .line 396
    invoke-virtual/range {p0 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->readerId(Ljava/util/UUID;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    move-result-object v11

    .line 398
    .local v11, "reader":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
    if-nez v11, :cond_9

    .line 399
    new-instance v11, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    .end local v11    # "reader":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-direct {v11, v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;-><init>(Ljava/util/UUID;J)V

    .line 401
    .restart local v11    # "reader":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->rdrs:[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->rdrs:[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    invoke-static/range {v16 .. v17}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    .line 403
    .local v10, "rdrs":[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
    array-length v0, v10

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    aput-object v11, v10, v16

    .line 406
    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->rdrs:[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->atomic()Z

    move-result v16

    if-nez v16, :cond_8

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->getOrCreateTxFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;

    move-result-object v15

    .line 412
    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->localCandidates([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;

    move-result-object v5

    .line 414
    const/4 v13, 0x1

    .line 425
    .end local v10    # "rdrs":[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
    :cond_8
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    if-eqz v13, :cond_0

    .line 428
    sget-boolean v16, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->$assertionsDisabled:Z

    if-nez v16, :cond_a

    if-nez v15, :cond_a

    new-instance v16, Ljava/lang/AssertionError;

    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    throw v16

    .line 418
    :cond_9
    :try_start_1
    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->txFuture()Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;

    move-result-object v15

    .line 420
    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->messageId()J

    move-result-wide v8

    .line 422
    .local v8, "id":J
    cmp-long v16, v8, p2

    if-gez v16, :cond_8

    .line 423
    move-wide/from16 v0, p2

    invoke-virtual {v11, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->messageId(J)V

    goto :goto_1

    .line 425
    .end local v8    # "id":J
    .end local v11    # "reader":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
    :catchall_0
    move-exception v16

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v16

    .line 430
    .restart local v11    # "reader":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
    :cond_a
    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v16

    if-nez v16, :cond_d

    .line 431
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 432
    .local v4, "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v16

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->tx(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v14

    .line 434
    .local v14, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    if-eqz v14, :cond_b

    .line 435
    sget-boolean v16, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->$assertionsDisabled:Z

    if-nez v16, :cond_c

    invoke-interface {v14}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->local()Z

    move-result v16

    if-nez v16, :cond_c

    new-instance v16, Ljava/lang/AssertionError;

    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    throw v16

    .line 437
    :cond_c
    invoke-virtual {v15, v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->addTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    goto :goto_2

    .line 442
    .end local v4    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v14    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_d
    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->init()V

    .line 444
    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->isDone()Z

    move-result v16

    if-nez v16, :cond_e

    .line 445
    move-object v12, v11

    .line 447
    .local v12, "reader0":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
    new-instance v16, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$2;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;)V

    invoke-virtual/range {v15 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto/16 :goto_0

    .line 461
    .end local v12    # "reader0":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
    :cond_e
    monitor-enter p0

    .line 463
    :try_start_2
    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->resetTxFuture()Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;

    .line 464
    monitor-exit p0

    .line 466
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 464
    :catchall_1
    move-exception v16

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v16
.end method

.method protected cacheName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized checkReaders()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 586
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->checkReadersLocked()Ljava/util/Collection;
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

.method protected checkReadersLocked()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 595
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 597
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->checkObsolete()V

    .line 599
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->rdrs:[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    .line 601
    .local v3, "rdrs":[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
    array-length v4, v3

    if-nez v4, :cond_1

    .line 602
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    .line 630
    :goto_0
    return-object v4

    .line 604
    :cond_1
    const/4 v2, 0x0

    .line 606
    .local v2, "newRdrs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_4

    .line 607
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->nodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->alive(Ljava/util/UUID;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 610
    if-nez v2, :cond_3

    .line 611
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "newRdrs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;>;"
    array-length v4, v3

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 613
    .restart local v2    # "newRdrs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;>;"
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 614
    aget-object v4, v3, v1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 619
    .end local v1    # "k":I
    :cond_2
    if-eqz v2, :cond_3

    .line 621
    aget-object v4, v3, v0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 624
    :cond_4
    if-eqz v2, :cond_5

    .line 625
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "rdrs":[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
    check-cast v3, [Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    .line 627
    .restart local v3    # "rdrs":[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->rdrs:[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    .line 630
    :cond_5
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto :goto_0
.end method

.method public clearInternal(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)Z
    .locals 9
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "swap"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 535
    const/4 v8, 0x0

    .line 538
    .local v8, "rmv":Z
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 539
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->saveValueForIndexUnlocked()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v7

    .line 543
    .local v7, "prev":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->markObsolete0(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 544
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entry could not be marked obsolete (it is still used or has readers): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 547
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    if-eqz v8, :cond_1

    .line 577
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removeIfObsolete(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V

    :cond_1
    :goto_0
    return v0

    .line 550
    :cond_2
    :try_start_2
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->access$000()[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->rdrs:[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    .line 552
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 553
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entry has been marked obsolete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 555
    :cond_3
    invoke-virtual {p0, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->clearIndex(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 558
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->update(Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 560
    if-eqz p2, :cond_4

    .line 561
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->releaseSwap()V

    .line 563
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 564
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entry has been cleared from swap storage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 567
    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->isLocalStore()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 568
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->keyValue(Z)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->removeFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Object;)Z

    .line 570
    :cond_5
    const/4 v8, 0x1

    .line 572
    const/4 v0, 0x1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 576
    if-eqz v8, :cond_1

    .line 577
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removeIfObsolete(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V

    goto/16 :goto_0

    .line 573
    .end local v7    # "prev":Lorg/apache/ignite/internal/processors/cache/CacheObject;
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

    .line 576
    :catchall_1
    move-exception v0

    if-eqz v8, :cond_6

    .line 577
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removeIfObsolete(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V

    :cond_6
    throw v0
.end method

.method public declared-synchronized clearReader(Ljava/util/UUID;)V
    .locals 2
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 522
    monitor-enter p0

    const-wide/16 v0, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->removeReader(Ljava/util/UUID;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    monitor-exit p0

    return-void

    .line 522
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearReaders()V
    .locals 1

    .prologue
    .line 517
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->access$000()[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->rdrs:[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    monitor-exit p0

    return-void

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized hasReaders()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 635
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->checkReadersLocked()Ljava/util/Collection;

    .line 637
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->rdrs:[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 635
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDht()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized localCandidateByNearVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 5
    .param p1, "nearVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "rmv"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->checkObsolete()V

    .line 128
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v2

    .line 130
    .local v2, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-eqz v2, :cond_1

    .line 131
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->localCandidatesNoCopy(Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 132
    .local v0, "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->otherVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    .line 134
    .local v3, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    .end local v0    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 139
    :cond_1
    if-eqz p2, :cond_2

    .line 140
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->addRemoved(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    .end local v2    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized mappings(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 2
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 649
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->checkObsolete()V

    .line 651
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 653
    .local v0, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->candidate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 649
    .end local v0    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public memorySize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->rdrs:[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    array-length v1, v1

    mul-int/lit8 v0, v1, 0x18

    .line 90
    .local v0, "rdrsOverhead":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->memorySize()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v0

    return v1

    .line 90
    .end local v0    # "rdrsOverhead":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onMarkedObsolete()V
    .locals 1

    .prologue
    .line 112
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->onRemoved(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;)V

    .line 116
    return-void
.end method

.method public onUnlock()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->locPart:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->onUnlock()V

    .line 302
    return-void
.end method

.method public partition()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->locPart:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->id()I

    move-result v0

    return v0
.end method

.method public partitionValid()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->locPart:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->valid()Z

    move-result v0

    return v0
.end method

.method public readerId(Ljava/util/UUID;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 334
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->rdrs:[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    .line 336
    .local v3, "rdrs":[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
    move-object v0, v3

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 337
    .local v4, "reader":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->nodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 341
    .end local v4    # "reader":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
    :goto_1
    return-object v4

    .line 336
    .restart local v4    # "reader":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    .end local v4    # "reader":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public readers()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->checkReaders()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->R2N:Lorg/apache/ignite/lang/IgniteClosure;

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public removeLock()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 2

    .prologue
    .line 281
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->removeLock()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    .line 283
    .local v0, "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->locPart:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->onUnlock()V

    .line 285
    return-object v0
.end method

.method public removeLock(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 2
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->removeLock(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v0

    .line 292
    .local v0, "ret":Z
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->locPart:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->onUnlock()V

    .line 294
    return v0
.end method

.method public declared-synchronized removeReader(Ljava/util/UUID;J)Z
    .locals 8
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msgId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 481
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->checkObsolete()V

    .line 483
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->rdrs:[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    .line 485
    .local v2, "rdrs":[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
    const/4 v3, -0x1

    .line 487
    .local v3, "readerIdx":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    .line 488
    aget-object v5, v2, v0

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->nodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 489
    move v3, v0

    .line 495
    :cond_0
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    aget-object v5, v2, v3

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->messageId()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    cmp-long v5, v6, p2

    if-lez v5, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-ltz v5, :cond_3

    .line 496
    :cond_1
    const/4 v4, 0x0

    .line 509
    :goto_1
    monitor-exit p0

    return v4

    .line 487
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 498
    :cond_3
    :try_start_1
    array-length v5, v2

    if-ne v5, v4, :cond_4

    .line 499
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->access$000()[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->rdrs:[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 481
    .end local v0    # "i":I
    .end local v2    # "rdrs":[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
    .end local v3    # "readerIdx":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 501
    .restart local v0    # "i":I
    .restart local v2    # "rdrs":[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
    .restart local v3    # "readerIdx":I
    :cond_4
    :try_start_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    .line 503
    .local v1, "newRdrs":[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
    add-int/lit8 v5, v3, 0x1

    array-length v6, v2

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v2, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 506
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->rdrs:[Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public tmLock(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;J)Z
    .locals 14
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;,
            Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->local()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v12, p1

    .line 243
    check-cast v12, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    .line 246
    .local v12, "dhtTx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;
    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->nearNodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->nearXidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->threadId()J

    move-result-wide v4

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->implicitSingle()Z

    move-result v11

    move-object v0, p0

    move-wide/from16 v7, p2

    invoke-virtual/range {v0 .. v11}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->addDhtLocal(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 275
    .end local v12    # "dhtTx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;
    :goto_0
    return v0

    .line 246
    .restart local v12    # "dhtTx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 259
    .end local v12    # "dhtTx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->nodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->otherNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->threadId()J

    move-result-wide v3

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->timeout()J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->implicit()Z

    move-result v9

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->addRemote(Ljava/util/UUID;Ljava/util/UUID;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    const/4 v0, 0x1

    goto :goto_0

    .line 271
    :catch_0
    move-exception v13

    .line 272
    .local v13, "ignored":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException;
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to enter tx lock for cancelled ID (will ignore): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 275
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 665
    monitor-enter p0

    :try_start_0
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

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

.method public declared-synchronized versionedValue(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 2
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
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
    .line 312
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->isNew()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->valid(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->deletedUnlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    :cond_0
    const/4 v1, 0x0

    .line 317
    :goto_0
    monitor-exit p0

    return-object v1

    .line 315
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->valueBytesUnlocked()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v0

    .line 317
    .local v0, "val0":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-static {v1, v0}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 312
    .end local v0    # "val0":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
