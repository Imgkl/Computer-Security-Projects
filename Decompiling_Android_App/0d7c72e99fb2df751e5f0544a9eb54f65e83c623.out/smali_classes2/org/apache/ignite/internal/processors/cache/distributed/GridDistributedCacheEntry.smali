.class public Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
.source "GridDistributedCacheEntry.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private volatile rmts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->$assertionsDisabled:Z

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
    .line 56
    invoke-direct/range {p0 .. p8}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;JI)V

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->rmts:Ljava/util/List;

    .line 57
    return-void
.end method

.method private maskNull(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 847
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .end local p1    # "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    :cond_0
    return-object p1
.end method


# virtual methods
.method public addLocal(JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 20
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkObsolete()V

    .line 96
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v4

    .line 98
    .local v4, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-nez v4, :cond_0

    .line 99
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    .end local v4    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 101
    .restart local v4    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->mvccExtras(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    .line 104
    :cond_0
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v18

    .line 106
    .local v18, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v16

    .local v16, "emptyBefore":Z
    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-object/from16 v8, p3

    move-wide/from16 v9, p4

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    .line 108
    invoke-virtual/range {v4 .. v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->addLocal(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v14

    .line 110
    .local v14, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v17

    .line 112
    .local v17, "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v15

    .line 114
    .local v15, "emptyAfter":Z
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkCallbacks(ZZ)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-object/from16 v19, v0

    .line 118
    .local v19, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v15, :cond_1

    .line 119
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->mvccExtras(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    .line 120
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->reentry()Z

    move-result v5

    if-nez v5, :cond_2

    .line 125
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5, v6, v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->addNext(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z

    .line 127
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 129
    return-object v14

    .line 120
    .end local v4    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .end local v14    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v15    # "emptyAfter":Z
    .end local v16    # "emptyBefore":Z
    .end local v17    # "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v18    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v19    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public addRemote(Ljava/util/UUID;Ljava/util/UUID;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 21
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "otherNodeId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "threadId"    # J
    .param p5, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p6, "timeout"    # J
    .param p8, "tx"    # Z
    .param p9, "implicitSingle"    # Z
    .param p10, "owned"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException;,
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 181
    monitor-enter p0

    .line 183
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkRemoved(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 185
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkObsolete()V

    .line 187
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v4

    .line 189
    .local v4, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-nez v4, :cond_0

    .line 190
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    .end local v4    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 192
    .restart local v4    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->mvccExtras(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    .line 195
    :cond_0
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v19

    .line 197
    .local v19, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v17

    .line 199
    .local v17, "emptyBefore":Z
    const/4 v15, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    move-wide/from16 v11, p6

    move/from16 v13, p8

    move/from16 v14, p9

    invoke-virtual/range {v4 .. v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->addRemote(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Ljava/util/UUID;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 211
    if-eqz p10, :cond_1

    .line 212
    move-object/from16 v0, p5

    move-object/from16 v1, p10

    invoke-virtual {v4, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->markOwned(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 214
    :cond_1
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v18

    .line 216
    .local v18, "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v16

    .line 218
    .local v16, "emptyAfter":Z
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkCallbacks(ZZ)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-object/from16 v20, v0

    .line 222
    .local v20, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->refreshRemotes()V

    .line 224
    if-eqz v16, :cond_2

    .line 225
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->mvccExtras(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    .line 226
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 230
    return-void

    .line 226
    .end local v4    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .end local v16    # "emptyAfter":Z
    .end local v17    # "emptyBefore":Z
    .end local v18    # "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v19    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v20    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public addRemote(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V
    .locals 7
    .param p1, "cand"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException;,
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 247
    monitor-enter p0

    .line 248
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->parent(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 251
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkRemoved(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 253
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkObsolete()V

    .line 255
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v2

    .line 257
    .local v2, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-nez v2, :cond_0

    .line 258
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    .end local v2    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v2, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 260
    .restart local v2    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->mvccExtras(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    .line 263
    :cond_0
    const/4 v6, 0x0

    new-array v6, v6, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v1

    .line 265
    .local v1, "emptyBefore":Z
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v4

    .line 267
    .local v4, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->addRemote(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V

    .line 269
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v3

    .line 271
    .local v3, "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    const/4 v6, 0x0

    new-array v6, v6, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v0

    .line 273
    .local v0, "emptyAfter":Z
    invoke-virtual {p0, v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkCallbacks(ZZ)V

    .line 275
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 277
    .local v5, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->refreshRemotes()V

    .line 279
    if-eqz v0, :cond_1

    .line 280
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->mvccExtras(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    .line 281
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    invoke-virtual {p0, v4, v3, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 285
    return-void

    .line 281
    .end local v0    # "emptyAfter":Z
    .end local v1    # "emptyBefore":Z
    .end local v2    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .end local v3    # "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v4    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v5    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public addRemoved(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 2
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 454
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 456
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->addRemoved(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v0

    return v0
.end method

.method protected checkCallbacks(ZZ)V
    .locals 1
    .param p1, "emptyBefore"    # Z
    .param p2, "emptyAfter"    # Z

    .prologue
    .line 771
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 773
    :cond_0
    if-eq p1, p2, :cond_2

    .line 774
    if-eqz p1, :cond_1

    .line 775
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->callback()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCallback;->onLocked(Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;)V

    .line 777
    :cond_1
    if-eqz p2, :cond_2

    .line 778
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->callback()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCallback;->onFreed(Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;)V

    .line 780
    :cond_2
    return-void
.end method

.method protected checkOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    .locals 13
    .param p1, "prev"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .param p2, "owner"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .param p3, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .prologue
    .line 788
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 790
    :cond_0
    if-eq p2, p1, :cond_3

    .line 791
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->callback()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCallback;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCallback;->onOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V

    .line 793
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->local()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 794
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkThreadChain(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V

    .line 796
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v0

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 797
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->hasValue()Z

    move-result v7

    .line 800
    .local v7, "hasVal":Z
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->partition()I

    move-result v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nodeId()Ljava/util/UUID;

    move-result-object v3

    const/16 v5, 0x43

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, p1

    move-object/from16 v6, p3

    move-object/from16 v8, p3

    move v9, v7

    invoke-virtual/range {v0 .. v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    .end local v7    # "hasVal":Z
    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 805
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->hasValue()Z

    move-result v7

    .line 808
    .restart local v7    # "hasVal":Z
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->partition()I

    move-result v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nodeId()Ljava/util/UUID;

    move-result-object v3

    const/16 v5, 0x42

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p3

    move v9, v7

    invoke-virtual/range {v0 .. v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    .end local v7    # "hasVal":Z
    :cond_3
    return-void
.end method

.method protected checkRemoved(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 4
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException;
        }
    .end annotation

    .prologue
    .line 440
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 442
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->obsoleteVersionExtras()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    .line 444
    .local v0, "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1, v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->isRemoved(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 445
    :cond_2
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lock has been cancelled [key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ver="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 447
    :cond_3
    return-void
.end method

.method protected checkThreadChain(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V
    .locals 5
    .param p1, "owner"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    .line 818
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 820
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 821
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->owner()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->used()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Neither owner or used flags are set on ready local candidate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 824
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->local()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->next()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 825
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->next()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    .local v0, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :goto_0
    if-eqz v0, :cond_4

    .line 826
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->local()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote candidate cannot be part of thread chain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 829
    :cond_3
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->used()Z

    move-result v2

    if-nez v2, :cond_5

    .line 830
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;

    .line 833
    .local v1, "e":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    if-eqz v1, :cond_4

    .line 834
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->recheck()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 840
    .end local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v1    # "e":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    :cond_4
    return-void

    .line 825
    .restart local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_5
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->next()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    goto :goto_0
.end method

.method public doneRemote(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Z)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 9
    .param p1, "lockVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "baseVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "sysInvalidate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;Z)",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;"
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
    .line 642
    .local p3, "pendingVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .local p4, "committedVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .local p5, "rolledbackVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    const/4 v4, 0x0

    .line 643
    .local v4, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    const/4 v3, 0x0

    .line 647
    .local v3, "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    monitor-enter p0

    .line 648
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkObsolete()V

    .line 650
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v2

    .line 652
    .local v2, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-eqz v2, :cond_3

    .line 653
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v4

    .line 655
    const/4 v6, 0x0

    new-array v6, v6, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v1

    .line 658
    .local v1, "emptyBefore":Z
    invoke-static {p4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p5}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 659
    :cond_0
    invoke-virtual {v2, p1, p4, p5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->orderCompleted(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 661
    invoke-virtual {p2, p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 662
    invoke-virtual {v2, p2, p4, p5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->orderCompleted(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 665
    :cond_1
    if-eqz p6, :cond_2

    if-eqz p2, :cond_2

    .line 666
    invoke-virtual {v2, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->salvageRemote(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 668
    :cond_2
    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->maskNull(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    invoke-direct {p0, p4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->maskNull(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v7

    invoke-direct {p0, p5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->maskNull(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v2, p1, v6, v7, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->doneRemote(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v3

    .line 671
    const/4 v6, 0x0

    new-array v6, v6, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v0

    .line 673
    .local v0, "emptyAfter":Z
    invoke-virtual {p0, v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkCallbacks(ZZ)V

    .line 675
    if-eqz v0, :cond_3

    .line 676
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->mvccExtras(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    .line 679
    .end local v0    # "emptyAfter":Z
    .end local v1    # "emptyBefore":Z
    :cond_3
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 680
    .local v5, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    invoke-virtual {p0, v4, v3, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 685
    return-object v3

    .line 680
    .end local v2    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .end local v5    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public doneRemote(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;Z)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 7
    .param p1, "lockVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "baseVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p5, "sysInvalidate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;Z)",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;"
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
    .line 618
    .local p3, "committedVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .local p4, "rolledbackVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->doneRemote(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Z)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    return-object v0
.end method

.method public orderCompleted(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 7
    .param p1, "baseVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 566
    .local p2, "committedVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .local p3, "rolledbackVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 567
    :cond_0
    const/4 v4, 0x0

    .line 568
    .local v4, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    const/4 v3, 0x0

    .line 572
    .local v3, "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    monitor-enter p0

    .line 573
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkObsolete()V

    .line 575
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v2

    .line 577
    .local v2, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-eqz v2, :cond_1

    .line 578
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v4

    .line 580
    const/4 v6, 0x0

    new-array v6, v6, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v1

    .line 582
    .local v1, "emptyBefore":Z
    invoke-virtual {v2, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->orderCompleted(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v3

    .line 584
    const/4 v6, 0x0

    new-array v6, v6, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v0

    .line 586
    .local v0, "emptyAfter":Z
    invoke-virtual {p0, v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkCallbacks(ZZ)V

    .line 588
    if-eqz v0, :cond_1

    .line 589
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->mvccExtras(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    .line 592
    .end local v0    # "emptyAfter":Z
    .end local v1    # "emptyBefore":Z
    :cond_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 593
    .local v5, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    invoke-virtual {p0, v4, v3, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 598
    .end local v2    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .end local v3    # "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v4    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v5    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_2
    return-void

    .line 593
    .restart local v3    # "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .restart local v4    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public readyLock(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 9
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 467
    const/4 v4, 0x0

    .line 468
    .local v4, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    const/4 v3, 0x0

    .line 472
    .local v3, "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    monitor-enter p0

    .line 473
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkObsolete()V

    .line 475
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v2

    .line 477
    .local v2, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-eqz v2, :cond_1

    .line 478
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v4

    .line 480
    const/4 v6, 0x0

    new-array v6, v6, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v1

    .line 482
    .local v1, "emptyBefore":Z
    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->readyLocal(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v3

    .line 484
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->owner()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Owner flag not set for owner: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 495
    .end local v1    # "emptyBefore":Z
    .end local v2    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 486
    .restart local v1    # "emptyBefore":Z
    .restart local v2    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :cond_0
    const/4 v6, 0x0

    :try_start_1
    new-array v6, v6, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v0

    .line 488
    .local v0, "emptyAfter":Z
    invoke-virtual {p0, v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkCallbacks(ZZ)V

    .line 490
    if-eqz v0, :cond_1

    .line 491
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->mvccExtras(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    .line 494
    .end local v0    # "emptyAfter":Z
    .end local v1    # "emptyBefore":Z
    :cond_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 495
    .local v5, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 498
    invoke-virtual {p0, v4, v3, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 500
    return-object v3
.end method

.method public readyNearLock(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 11
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "mapped"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;"
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
    .line 519
    .local p3, "committed":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .local p4, "rolledBack":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .local p5, "pending":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    const/4 v9, 0x0

    .line 520
    .local v9, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    const/4 v8, 0x0

    .line 524
    .local v8, "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    monitor-enter p0

    .line 525
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkObsolete()V

    .line 527
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v0

    .line 529
    .local v0, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-eqz v0, :cond_1

    .line 530
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v9

    .line 532
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v7

    .local v7, "emptyBefore":Z
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    .line 534
    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->readyNearLocal(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v8

    .line 536
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->owner()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Owner flag is not set for owner: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 547
    .end local v0    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .end local v7    # "emptyBefore":Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 538
    .restart local v0    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .restart local v7    # "emptyBefore":Z
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v6

    .line 540
    .local v6, "emptyAfter":Z
    invoke-virtual {p0, v7, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkCallbacks(ZZ)V

    .line 542
    if-eqz v6, :cond_1

    .line 543
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->mvccExtras(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    .line 546
    .end local v6    # "emptyAfter":Z
    .end local v7    # "emptyBefore":Z
    :cond_1
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 547
    .local v10, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 550
    invoke-virtual {p0, v9, v8, v10}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 552
    return-object v8
.end method

.method public recheck()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 694
    const/4 v4, 0x0

    .line 695
    .local v4, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    const/4 v3, 0x0

    .line 699
    .local v3, "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    monitor-enter p0

    .line 700
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v2

    .line 702
    .local v2, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-eqz v2, :cond_0

    .line 703
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v4

    .line 705
    const/4 v6, 0x0

    new-array v6, v6, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v1

    .line 707
    .local v1, "emptyBefore":Z
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->recheck()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v3

    .line 709
    const/4 v6, 0x0

    new-array v6, v6, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v0

    .line 711
    .local v0, "emptyAfter":Z
    invoke-virtual {p0, v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkCallbacks(ZZ)V

    .line 713
    if-eqz v0, :cond_0

    .line 714
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->mvccExtras(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    .line 717
    .end local v0    # "emptyAfter":Z
    .end local v1    # "emptyBefore":Z
    :cond_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 718
    .local v5, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    invoke-virtual {p0, v4, v3, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 723
    return-object v3

    .line 718
    .end local v2    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .end local v5    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method protected refreshRemotes()V
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v0

    .line 65
    .local v0, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->rmts:Ljava/util/List;

    .line 66
    return-void

    .line 65
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->remoteCandidates([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public varargs remoteMvccSnapshot([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;
    .locals 6
    .param p1, "exclude"    # [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->rmts:Ljava/util/List;

    .line 136
    .local v3, "rmts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move-object v1, v3

    .line 149
    :cond_1
    return-object v1

    .line 139
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    .local v1, "cands":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 142
    .local v0, "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->$assertionsDisabled:Z

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->reentry()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 145
    :cond_4
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1, v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->containsObjectArray([Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 146
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeExplicitNodeLocks(Ljava/util/UUID;)V
    .locals 7
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 294
    const/4 v4, 0x0

    .line 295
    .local v4, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    const/4 v3, 0x0

    .line 297
    .local v3, "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    const/4 v5, 0x0

    .line 299
    .local v5, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    monitor-enter p0

    .line 300
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkObsolete()V

    .line 302
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v2

    .line 304
    .local v2, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-eqz v2, :cond_0

    .line 305
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v4

    .line 307
    const/4 v6, 0x0

    new-array v6, v6, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v1

    .line 309
    .local v1, "emptyBefore":Z
    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->removeExplicitNodeCandidates(Ljava/util/UUID;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v3

    .line 311
    const/4 v6, 0x0

    new-array v6, v6, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v0

    .line 313
    .local v0, "emptyAfter":Z
    invoke-virtual {p0, v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkCallbacks(ZZ)V

    .line 315
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 317
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->refreshRemotes()V

    .line 319
    if-eqz v0, :cond_0

    .line 320
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->mvccExtras(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    .line 322
    .end local v0    # "emptyAfter":Z
    .end local v1    # "emptyBefore":Z
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    invoke-virtual {p0, v4, v3, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 326
    return-void

    .line 322
    .end local v2    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public removeLock()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 334
    const/4 v4, 0x0

    .line 335
    .local v4, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    const/4 v3, 0x0

    .line 339
    .local v3, "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    monitor-enter p0

    .line 340
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v2

    .line 342
    .local v2, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-eqz v2, :cond_0

    .line 343
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v4

    .line 345
    const/4 v7, 0x0

    new-array v7, v7, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v2, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v1

    .line 347
    .local v1, "emptyBefore":Z
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->releaseLocal()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v3

    .line 349
    const/4 v7, 0x0

    new-array v7, v7, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v2, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v0

    .line 351
    .local v0, "emptyAfter":Z
    invoke-virtual {p0, v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkCallbacks(ZZ)V

    .line 353
    if-eqz v0, :cond_0

    .line 354
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->mvccExtras(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    .line 357
    .end local v0    # "emptyAfter":Z
    .end local v1    # "emptyBefore":Z
    :cond_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 358
    .local v5, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    sget-object v7, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 361
    sget-object v7, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Released local candidate from entry [owner="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", prev="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", entry="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 364
    :cond_1
    if-eqz v4, :cond_2

    if-eq v3, v4, :cond_2

    .line 365
    invoke-virtual {p0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkThreadChain(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V

    .line 368
    :cond_2
    invoke-virtual {p0, v4, v3, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 370
    if-eq v3, v4, :cond_3

    .end local v4    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :goto_0
    return-object v4

    .line 358
    .end local v2    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .end local v5    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v4    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .restart local v2    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .restart local v5    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_3
    move-object v4, v6

    .line 370
    goto :goto_0
.end method

.method public removeLock(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 12
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 375
    const/4 v6, 0x0

    .line 376
    .local v6, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    const/4 v5, 0x0

    .line 382
    .local v5, "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    monitor-enter p0

    .line 383
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v3

    .line 385
    .local v3, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-nez v3, :cond_3

    .line 387
    .local v0, "doomed":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->dhtLocal()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->local()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nearLocal()Z

    move-result v9

    if-nez v9, :cond_1

    .line 388
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->addRemoved(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    .line 390
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->obsoleteVersionExtras()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    .line 392
    .local v4, "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-eqz v4, :cond_2

    invoke-virtual {v4, p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 393
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkObsolete()V

    .line 395
    :cond_2
    if-eqz v0, :cond_6

    .line 396
    sget-boolean v9, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->$assertionsDisabled:Z

    if-nez v9, :cond_4

    if-nez v3, :cond_4

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 416
    .end local v0    # "doomed":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v3    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .end local v4    # "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 385
    .restart local v3    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :cond_3
    :try_start_1
    invoke-virtual {v3, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->candidate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    goto :goto_0

    .line 398
    .restart local v0    # "doomed":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .restart local v4    # "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_4
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v6

    .line 400
    const/4 v9, 0x0

    new-array v9, v9, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v3, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v2

    .line 402
    .local v2, "emptyBefore":Z
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->remove(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v5

    .line 404
    const/4 v9, 0x0

    new-array v9, v9, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v3, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v1

    .line 406
    .local v1, "emptyAfter":Z
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->local()Z

    move-result v9

    if-nez v9, :cond_5

    .line 407
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->refreshRemotes()V

    .line 409
    :cond_5
    invoke-virtual {p0, v2, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkCallbacks(ZZ)V

    .line 411
    if-eqz v1, :cond_6

    .line 412
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->mvccExtras(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    .line 415
    .end local v1    # "emptyAfter":Z
    .end local v2    # "emptyBefore":Z
    :cond_6
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 416
    .local v7, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 418
    sget-object v9, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 419
    sget-object v9, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Removed lock candidate from entry [doomed="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", owner="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", prev="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", entry="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 422
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nearLocal()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 423
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v9

    invoke-virtual {v9, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->removeExplicitLock(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V

    .line 425
    :cond_8
    if-eqz v0, :cond_9

    .line 426
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkThreadChain(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V

    .line 429
    :cond_9
    invoke-virtual {p0, v6, v5, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->checkOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 431
    if-eqz v0, :cond_a

    const/4 v8, 0x1

    :cond_a
    return v8
.end method

.method public tmLock(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;J)Z
    .locals 12
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;,
            Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException;
        }
    .end annotation

    .prologue
    .line 729
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->local()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 731
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->threadId()J

    move-result-wide v1

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->implicitSingle()Z

    move-result v8

    move-object v0, p0

    move-wide v4, p2

    invoke-virtual/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->addLocal(JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 757
    :goto_0
    return v0

    .line 731
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 740
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

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->implicitSingle()Z

    move-result v9

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->ownedVersion(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v10

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->addRemote(Ljava/util/UUID;Ljava/util/UUID;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    const/4 v0, 0x1

    goto :goto_0

    .line 753
    :catch_0
    move-exception v11

    .line 754
    .local v11, "ignored":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException;
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 755
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->log:Lorg/apache/ignite/IgniteLogger;

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

    .line 757
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 852
    monitor-enter p0

    :try_start_0
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
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

.method public txUnlock(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V
    .locals 1
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 763
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->removeLock(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    .line 764
    return-void
.end method
