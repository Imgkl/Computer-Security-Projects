.class public Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
.source "GridLocalCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private preldr:Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCachePreloader",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache<TK;TV;>;"
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getStartSize()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;I)V

    .line 58
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->preldr:Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    .line 59
    return-void
.end method


# virtual methods
.method entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .prologue
    .line 103
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;

    return-object v0
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 73
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache$1;-><init>(Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->setEntryFactory(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntryFactory;)V

    .line 88
    return-void
.end method

.method public isLocal()Z
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public lockAllAsync(Ljava/util/Collection;JLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 16
    .param p2, "timeout"    # J
    .param p4, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;J",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    new-instance v3, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    .line 183
    :goto_0
    return-object v3

    .line 141
    :cond_0
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p0

    move-wide/from16 v8, p2

    move-object/from16 v10, p5

    invoke-direct/range {v3 .. v10}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 144
    .local v3, "fut":Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture<TK;TV;>;"
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    .local v15, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_2
    :goto_1
    const/4 v12, 0x0

    .line 149
    .local v12, "entry":Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;

    move-result-object v12

    .line 151
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p5

    invoke-virtual {v4, v12, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isAll(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 152
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->onFailed()V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 165
    :catch_0
    move-exception v14

    .line 166
    .local v14, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 167
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got removed entry in lockAsync(..) method (will retry): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 180
    .end local v12    # "entry":Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .end local v15    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :catch_1
    move-exception v11

    .line 181
    .local v11, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {v3, v11}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 158
    .end local v11    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v12    # "entry":Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v15    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_3
    :try_start_3
    invoke-virtual {v3, v12}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->addEntry(Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v2

    .line 160
    .local v2, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-nez v2, :cond_1

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->isDone()Z
    :try_end_3
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 172
    .end local v2    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v12    # "entry":Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;
    .end local v15    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->addFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 173
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate future ID (internal error): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->onError(Ljava/lang/Throwable;)V

    .line 176
    :cond_5
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->checkLocks()V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0
.end method

.method public lockAllAsync(Ljava/util/Collection;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
    .param p2, "timeout"    # J
    .param p4, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->localTx()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    .line 124
    .local v4, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheKeysView(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->lockAllAsync(Ljava/util/Collection;JLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public onDeferredDelete(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 2
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 224
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Should not be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 225
    :cond_0
    return-void
.end method

.method onFutureDone(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache<TK;TV;>;"
    .local p1, "fut":Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;, "Lorg/apache/ignite/internal/processors/cache/GridCacheFuture<*>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->removeFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Explicitly removed future from map of futures: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 235
    :cond_0
    return-void
.end method

.method peekExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;

    return-object v0
.end method

.method public preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/GridCachePreloader",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->preldr:Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    return-object v0
.end method

.method public removeAll()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->removeAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 209
    return-void
.end method

.method public removeAllAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->closures()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache$2;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache$2;-><init>(Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocalSafe(Ljava/util/concurrent/Callable;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public txLockAsync(Ljava/util/Collection;JLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;ZZLorg/apache/ignite/transactions/TransactionIsolation;ZJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
    .param p2, "timeout"    # J
    .param p4, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;
    .param p5, "isRead"    # Z
    .param p6, "retval"    # Z
    .param p7, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
    .param p8, "invalidate"    # Z
    .param p9, "accessTtl"    # J
    .param p11, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;J",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;",
            "ZZ",
            "Lorg/apache/ignite/transactions/TransactionIsolation;",
            "ZJ[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object/from16 v5, p11

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->lockAllAsync(Ljava/util/Collection;JLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public unlockAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 5
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v3

    .line 194
    .local v3, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 195
    .local v2, "key":Ljava/lang/Object;, "TK;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->peekExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;

    move-result-object v0

    .line 197
    .local v0, "entry":Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;
    if-eqz v0, :cond_0

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4, v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isAll(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 198
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;->releaseLocal()V

    .line 200
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto :goto_0

    .line 203
    .end local v0    # "entry":Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    :cond_1
    return-void
.end method
