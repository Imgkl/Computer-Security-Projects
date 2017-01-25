.class public Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
.source "GridLocalCacheEntry.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;JI)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p3, "hash"    # I
    .param p4, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .param p5, "next"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .param p6, "ttl"    # J
    .param p8, "hdrId"    # I

    .prologue
    .line 49
    invoke-direct/range {p0 .. p8}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;JI)V

    .line 50
    return-void
.end method

.method private checkOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V
    .locals 1
    .param p1, "prev"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .param p2, "owner"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    .line 237
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 239
    :cond_0
    if-eq p2, p1, :cond_1

    .line 240
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->callback()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCallback;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCallback;->onOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V

    .line 242
    if-eqz p2, :cond_1

    .line 243
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->checkThreadChain(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V

    .line 245
    :cond_1
    return-void
.end method

.method private checkThreadChain(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V
    .locals 5
    .param p1, "owner"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    .line 251
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 253
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 254
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->$assertionsDisabled:Z

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

    .line 257
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->next()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 258
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->next()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    .local v0, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :goto_0
    if-eqz v0, :cond_4

    .line 259
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->local()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 262
    :cond_3
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->used()Z

    move-result v2

    if-nez v2, :cond_5

    .line 263
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;

    .line 267
    .local v1, "e":Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;
    if-eqz v1, :cond_4

    .line 268
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->recheck()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 274
    .end local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v1    # "e":Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;
    :cond_4
    return-void

    .line 258
    .restart local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_5
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->next()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addLocal(JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 19
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
    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->checkObsolete()V

    .line 86
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v3

    .line 88
    .local v3, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-nez v3, :cond_0

    .line 89
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    .end local v3    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 91
    .restart local v3    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->mvccExtras(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    .line 94
    :cond_0
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->localOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v18

    .local v18, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    .line 96
    invoke-virtual/range {v3 .. v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->addLocal(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v8

    .line 106
    .local v8, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->localOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v17

    .line 108
    .local v17, "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 110
    .local v10, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->hasValueUnlocked()Z

    move-result v11

    .line 112
    .local v11, "hasVal":Z
    const/4 v4, 0x0

    new-array v4, v4, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 113
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->mvccExtras(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    .line 114
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    if-eqz v8, :cond_3

    .line 117
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->reentry()Z

    move-result v4

    if-nez v4, :cond_2

    .line 118
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4, v5, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->addNext(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z

    .line 121
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v4

    const/16 v5, 0x42

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 122
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->partition()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nodeId()Ljava/util/UUID;

    move-result-object v7

    const/16 v9, 0x42

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v10

    move v13, v11

    invoke-virtual/range {v4 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->checkOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V

    .line 128
    return-object v8

    .line 114
    .end local v3    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .end local v8    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v10    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v11    # "hasVal":Z
    .end local v17    # "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v18    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public isLocal()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public readyLocal(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 4
    .param p1, "cand"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 137
    const/4 v2, 0x0

    .line 138
    .local v2, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    const/4 v1, 0x0

    .line 140
    .local v1, "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    monitor-enter p0

    .line 141
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v0

    .line 143
    .local v0, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->localOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v2

    .line 146
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->readyLocal(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v1

    .line 148
    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->mvccExtras(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    .line 151
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-direct {p0, v2, v1}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->checkOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V

    .line 155
    return-object v1

    .line 151
    .end local v0    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public readyLocal(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 4
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 164
    const/4 v2, 0x0

    .line 165
    .local v2, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    const/4 v1, 0x0

    .line 167
    .local v1, "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    monitor-enter p0

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v0

    .line 170
    .local v0, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->localOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v2

    .line 173
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->readyLocal(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v1

    .line 175
    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->mvccExtras(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    .line 178
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-direct {p0, v2, v1}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->checkOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V

    .line 182
    return-object v1

    .line 178
    .end local v0    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public recheck()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 211
    const/4 v2, 0x0

    .line 212
    .local v2, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    const/4 v1, 0x0

    .line 214
    .local v1, "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    monitor-enter p0

    .line 215
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v0

    .line 217
    .local v0, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->localOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v2

    .line 220
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->recheck()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v1

    .line 222
    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->mvccExtras(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    .line 225
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-direct {p0, v2, v1}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->checkOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V

    .line 229
    return-object v1

    .line 225
    .end local v0    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method releaseLocal()V
    .locals 2

    .prologue
    .line 289
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->releaseLocal(J)V

    .line 290
    return-void
.end method

.method releaseLocal(J)V
    .locals 17
    .param p1, "threadId"    # J

    .prologue
    .line 298
    const/4 v6, 0x0

    .line 299
    .local v6, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    const/16 v16, 0x0

    .line 304
    .local v16, "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    monitor-enter p0

    .line 305
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v15

    .line 307
    .local v15, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-eqz v15, :cond_0

    .line 308
    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->localOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v6

    .line 310
    move-wide/from16 v0, p1

    invoke-virtual {v15, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->releaseLocal(J)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v16

    .line 312
    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v15, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->mvccExtras(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    .line 316
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 317
    .local v8, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->hasValueUnlocked()Z

    move-result v9

    .line 318
    .local v9, "hasVal":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    if-eqz v6, :cond_1

    move-object/from16 v0, v16

    if-eq v0, v6, :cond_1

    .line 321
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->checkThreadChain(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v2

    const/16 v3, 0x43

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->partition()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nodeId()Ljava/util/UUID;

    move-result-object v5

    const/16 v7, 0x43

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v8

    move v11, v9

    invoke-virtual/range {v2 .. v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v6, v1}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->checkOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V

    .line 330
    return-void

    .line 318
    .end local v8    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v9    # "hasVal":Z
    .end local v15    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method removeLock(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V
    .locals 1
    .param p1, "cand"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 340
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->removeLock(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    .line 341
    return-void
.end method

.method public removeLock(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 20
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 345
    const/16 v19, 0x0

    .line 346
    .local v19, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    const/16 v18, 0x0

    .line 353
    .local v18, "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    monitor-enter p0

    .line 354
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->obsoleteVersionExtras()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v17

    .line 356
    .local v17, "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 357
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->checkObsolete()V

    .line 359
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v16

    .line 361
    .local v16, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-nez v16, :cond_3

    const/4 v7, 0x0

    .line 363
    .local v7, "doomed":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :goto_0
    if-eqz v7, :cond_1

    .line 364
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->localOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v19

    .line 366
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->remove(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v18

    .line 368
    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 369
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->mvccExtras(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    .line 372
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 373
    .local v9, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->hasValueUnlocked()Z

    move-result v10

    .line 374
    .local v10, "hasVal":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    if-eqz v7, :cond_2

    .line 377
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->checkThreadChain(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v3

    const/16 v4, 0x43

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 381
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->partition()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nodeId()Ljava/util/UUID;

    move-result-object v6

    const/16 v8, 0x43

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v9

    move v12, v10

    invoke-virtual/range {v3 .. v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->checkOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V

    .line 387
    if-eqz v7, :cond_4

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 361
    .end local v7    # "doomed":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v9    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v10    # "hasVal":Z
    :cond_3
    :try_start_1
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->candidate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v7

    goto :goto_0

    .line 374
    .end local v16    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .end local v17    # "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 387
    .restart local v7    # "doomed":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .restart local v9    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v10    # "hasVal":Z
    .restart local v16    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .restart local v17    # "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public tmLock(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;J)Z
    .locals 10
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 187
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->threadId()J

    move-result-wide v1

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->implicitSingle()Z

    move-result v8

    move-object v0, p0

    move-wide v4, p2

    invoke-virtual/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->addLocal(JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v9

    .line 196
    .local v9, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v9, :cond_0

    .line 197
    invoke-virtual {p0, v9}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->readyLocal(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 202
    :goto_0
    return v7

    :cond_0
    move v7, v6

    goto :goto_0
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
    .line 282
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->removeLock(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    .line 283
    return-void
.end method
