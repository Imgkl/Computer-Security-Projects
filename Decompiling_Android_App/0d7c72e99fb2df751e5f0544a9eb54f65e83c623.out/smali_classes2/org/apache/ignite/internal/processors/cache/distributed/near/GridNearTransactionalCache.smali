.class public Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;
.super Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;
.source "GridNearTransactionalCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache<TK;TV;>;"
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->processLockResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method private processLockResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;

    .prologue
    .line 399
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache<TK;TV;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 400
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 402
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->future(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    .line 405
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    if-eqz v0, :cond_2

    .line 406
    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->onResult(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;)V

    .line 407
    :cond_2
    return-void
.end method


# virtual methods
.method public clearLocks(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;)V
    .locals 13
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;

    .prologue
    .line 186
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache<TK;TV;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 188
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v11

    .line 190
    .local v11, "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;->nearKeys()Ljava/util/List;

    move-result-object v10

    .line 192
    .local v10, "keys":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    if-eqz v10, :cond_7

    .line 193
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v12

    .line 195
    .local v12, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 197
    .local v9, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_2
    :goto_1
    invoke-virtual {p0, v9}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->peekExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;

    move-result-object v0

    .line 200
    .local v0, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    if-eqz v0, :cond_6

    .line 201
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;->committedVersions()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;->rolledbackVersions()Ljava/util/Collection;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->doneRemote(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Z)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 212
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->removeLock(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 213
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 214
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed lock [lockId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 217
    :cond_3
    invoke-virtual {p0, v0, v11, v12}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->evictNearEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    .line 225
    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v1

    invoke-virtual {v1, v0, v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v8

    .line 233
    .local v8, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received remove lock request for removed entry (will retry) [entry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", req="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 220
    .end local v8    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_5
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 221
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received unlock request for unknown candidate (added to cancelled locks set): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 227
    :cond_6
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received unlock request for entry that could not be found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 240
    .end local v0    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v12    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_7
    return-void
.end method

.method public dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;

    return-object v0
.end method

.method public bridge synthetic dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;

    move-result-object v0

    return-object v0
.end method

.method public dht(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache<TK;TV;>;"
    .local p1, "dht":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;

    .line 89
    return-void
.end method

.method protected evictNearEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z
    .locals 3
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "obsoleteVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p3, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 455
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 456
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 458
    :cond_1
    invoke-virtual {p0, p1, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->isNearLocallyMapped(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 459
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Evicting dht-local entry from near cache [entry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 462
    :cond_2
    invoke-interface {p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->markObsolete(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 463
    const/4 v0, 0x1

    .line 466
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllAsync(Ljava/util/Collection;ZZLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Ljava/lang/String;ZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 13
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "forcePrimary"    # Z
    .param p3, "skipTx"    # Z
    .param p4, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "taskName"    # Ljava/lang/String;
    .param p7, "deserializePortable"    # Z
    .param p8, "skipVals"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;ZZ",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->LOCAL:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)V

    .line 108
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v2, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_READ:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->checkSecurity(Lorg/apache/ignite/plugin/security/GridSecurityPermission;)V

    .line 110
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    .line 135
    :goto_0
    return-object v1

    .line 113
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->keyCheck:Z

    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->validateCacheKeys(Ljava/lang/Iterable;)V

    .line 116
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->threadLocalTx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    .line 118
    .local v12, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->implicit()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p3, :cond_2

    .line 119
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache$3;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p1

    move-object/from16 v5, p4

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache$3;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;Ljava/util/Collection;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;ZZ)V

    invoke-virtual {p0, v12, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->asyncOp(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    goto :goto_0

    .line 131
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v11

    .line 133
    .local v11, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->subjectIdPerCall(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Ljava/util/UUID;

    move-result-object p5

    .line 135
    const/4 v2, 0x0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheKeysView(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz p8, :cond_3

    const/4 v9, 0x0

    :goto_1
    move-object v1, p0

    move v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v10, p8

    invoke-virtual/range {v1 .. v10}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->loadAsync(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;ZZLjava/util/UUID;Ljava/lang/String;ZLjavax/cache/expiry/ExpiryPolicy;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    goto :goto_0

    :cond_3
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v9

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    goto :goto_1
.end method

.method protected isNearLocallyMapped(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z
    .locals 3
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 444
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->belongs(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v0

    return v0
.end method

.method protected lockAllAsync(Ljava/util/Collection;JLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;ZZZLorg/apache/ignite/transactions/TransactionIsolation;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 11
    .param p2, "timeout"    # J
    .param p4, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;
    .param p5, "isInvalidate"    # Z
    .param p6, "isRead"    # Z
    .param p7, "retval"    # Z
    .param p8, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
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
            "ZZZ",
            "Lorg/apache/ignite/transactions/TransactionIsolation;",
            "J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object v3, p4

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object v2, p1

    move/from16 v4, p6

    move/from16 v5, p7

    move-wide v6, p2

    move-wide/from16 v8, p9

    move-object/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;ZZJJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 430
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->addFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 431
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate future ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 433
    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->map()V

    .line 435
    return-object v0
.end method

.method public onDeferredDelete(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 2
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 695
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Should not be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 696
    :cond_0
    return-void
.end method

.method public removeLocks(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;)V
    .locals 26
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 599
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache<TK;TV;>;"
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 603
    :cond_1
    const/4 v14, -0x1

    .line 605
    .local v14, "keyCnt":I
    const/4 v15, 0x0

    .line 607
    .local v15, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;>;"
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 609
    .local v13, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    const/16 v19, 0x0

    .line 612
    .local v19, "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->peekExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 615
    .local v9, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    if-eqz v9, :cond_2

    .line 616
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->candidate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v7

    .line 618
    .local v7, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v7, :cond_2

    .line 619
    if-nez v15, :cond_4

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v22, v0

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->allNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v6

    .line 622
    .local v6, "affNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 625
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v14, v0

    .line 627
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v15

    .line 630
    .end local v6    # "affNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v22

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v18

    .line 632
    .local v18, "primary":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v22

    if-nez v22, :cond_5

    .line 633
    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;

    move-object/from16 v19, v0

    .line 635
    if-nez v19, :cond_5

    .line 636
    new-instance v20, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-direct {v0, v1, v14}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;-><init>(II)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v19    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;
    .local v20, "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;
    :try_start_2
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;->version(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    :try_end_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v19, v20

    .line 643
    .end local v20    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;
    .restart local v19    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;
    :cond_5
    :try_start_3
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->removeLock(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 644
    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;

    move-object/from16 v22, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v23

    invoke-static {v13}, Lorg/apache/ignite/internal/util/typedef/F;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    move-object/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;->removeLocks(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/lang/Iterable;Z)V

    .line 647
    sget-boolean v22, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->$assertionsDisabled:Z

    if-nez v22, :cond_3

    if-eqz v19, :cond_3

    new-instance v22, Ljava/lang/AssertionError;

    invoke-direct/range {v22 .. v22}, Ljava/lang/AssertionError;-><init>()V

    throw v22
    :try_end_3
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 661
    .end local v7    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v18    # "primary":Lorg/apache/ignite/cluster/ClusterNode;
    :catch_0
    move-exception v12

    .line 662
    .local v12, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Attempted to remove lock from removed entry (will retry) [rmvVer="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", entry="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x5d

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 688
    .end local v9    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .end local v13    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v19    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;
    :catch_1
    move-exception v10

    .line 689
    .local v10, "ex":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Failed to unlock the lock for keys: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 652
    .end local v10    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v7    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .restart local v9    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v13    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v18    # "primary":Lorg/apache/ignite/cluster/ClusterNode;
    .restart local v19    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;
    :cond_6
    :try_start_5
    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;->addKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    :try_end_5
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 669
    .end local v7    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v9    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .end local v13    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v18    # "primary":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v19    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;
    :cond_7
    if-eqz v15, :cond_0

    :try_start_6
    invoke-interface {v15}, Ljava/util/Map;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_0

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->committedVersions(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;

    move-result-object v8

    .line 673
    .local v8, "committed":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->rolledbackVersions(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;

    move-result-object v21

    .line 675
    .local v21, "rolledback":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 676
    .local v16, "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/ignite/cluster/ClusterNode;

    .line 678
    .local v17, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;

    .line 680
    .local v19, "req":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;
    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;->keys()Ljava/util/List;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 681
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v8, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;->completedVersions(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_6
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    .line 661
    .end local v8    # "committed":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .end local v16    # "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;>;"
    .end local v17    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v19    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;
    .end local v21    # "rolledback":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .restart local v7    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .restart local v9    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .restart local v13    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v18    # "primary":Lorg/apache/ignite/cluster/ClusterNode;
    .restart local v20    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;
    :catch_2
    move-exception v12

    move-object/from16 v19, v20

    .end local v20    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;
    .local v19, "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;
    goto/16 :goto_3
.end method

.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->start()V

    .line 71
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v1

    const-class v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache$1;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 77
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v1

    const-class v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache$2;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache$2;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 82
    return-void
.end method

.method public startRemoteTx(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;
    .locals 36
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 252
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache<TK;TV;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->nearKeys()Ljava/util/List;

    move-result-object v33

    .line 254
    .local v33, "nearKeys":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    const/4 v2, 0x0

    .line 256
    .local v2, "tx":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalLoader()Ljava/lang/ClassLoader;

    move-result-object v32

    .line 258
    .local v32, "ldr":Ljava/lang/ClassLoader;
    if-eqz v32, :cond_13

    .line 259
    const/16 v26, 0x0

    .line 261
    .local v26, "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_0
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v28

    if-ge v0, v3, :cond_11

    .line 262
    move-object/from16 v0, v33

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 264
    .local v31, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    if-nez v31, :cond_1

    .line 261
    :cond_0
    add-int/lit8 v28, v28, 0x1

    goto :goto_0

    .line 267
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->txKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v35

    .line 269
    .local v35, "txKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->candidatesByIndex(I)Ljava/util/Collection;

    move-result-object v22

    .line 271
    .local v22, "cands":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 272
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unmarshalled key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 274
    :cond_2
    const/16 v23, 0x0

    .local v23, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    move-object/from16 v27, v26

    .line 278
    .end local v26    # "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    .local v27, "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->peekExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;

    move-result-object v23

    .line 280
    if-eqz v23, :cond_d

    .line 282
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->inTx()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 283
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->nearTx(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v34

    check-cast v34, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;
    .local v34, "tx":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;
    if-nez v34, :cond_5

    .line 286
    :try_start_1
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->shared()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->nearNodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->nearXidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->threadId()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->system()Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v12

    sget-object v13, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->isolation()Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->isInvalidate()Z

    move-result v15

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->timeout()J

    move-result-wide v16

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->txSize()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->groupLockKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->subjectId()Ljava/util/UUID;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->taskNameHash()I

    move-result v21

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v21}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;ZJILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Ljava/util/UUID;I)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 306
    .end local v34    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;
    .restart local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->groupLock()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 307
    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->groupLockKey(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)V

    .line 309
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->onCreated(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;

    move-object v2, v0

    .line 311
    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->onStarted(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 312
    :cond_4
    new-instance v3, Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to acquire lock (transaction has been completed): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 358
    :catch_0
    move-exception v30

    move-object/from16 v26, v27

    .line 359
    .end local v27    # "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    .restart local v26    # "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    .local v30, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :goto_2
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->$assertionsDisabled:Z

    if-nez v3, :cond_e

    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->obsoleteVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    if-nez v3, :cond_e

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Obsolete flag not set on removed entry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .end local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;
    .end local v26    # "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    .end local v30    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .restart local v27    # "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    .restart local v34    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;
    :cond_5
    move-object/from16 v2, v34

    .line 316
    .end local v34    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;
    .restart local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v5, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->NOOP:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, v35

    invoke-virtual/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->addEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    .line 321
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->nodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->threadId()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->timeout()J

    move-result-wide v10

    if-eqz v2, :cond_8

    const/4 v12, 0x1

    :goto_3
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->implicitSingle()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v13, 0x1

    :goto_4
    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->owned(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v14

    move-object/from16 v4, v23

    move-object/from16 v6, p1

    invoke-virtual/range {v4 .. v14}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->addRemote(Ljava/util/UUID;Ljava/util/UUID;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 332
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->$assertionsDisabled:Z

    if-nez v3, :cond_a

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received non-empty candidates in dht lock request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 321
    :cond_8
    const/4 v12, 0x0

    goto :goto_3

    :cond_9
    const/4 v13, 0x0

    goto :goto_4

    .line 334
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->inTx()Z

    move-result v3

    if-nez v3, :cond_16

    .line 335
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v3, v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    :try_end_3
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v26, v27

    .line 345
    .end local v27    # "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    .restart local v26    # "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    :goto_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->nodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    if-nez v3, :cond_0

    .line 346
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 347
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Node requesting lock left grid (lock request will be ignored): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 349
    :cond_b
    if-eqz v2, :cond_c

    .line 350
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->rollback()V
    :try_end_4
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 352
    :cond_c
    const/4 v3, 0x0

    .line 391
    .end local v22    # "cands":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    .end local v23    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    .end local v31    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v35    # "txKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    :goto_6
    return-object v3

    .line 338
    .end local v26    # "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    .restart local v22    # "cands":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    .restart local v23    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    .restart local v27    # "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    .restart local v31    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v35    # "txKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    :cond_d
    if-nez v27, :cond_15

    .line 339
    :try_start_5
    new-instance v26, Ljava/util/LinkedList;

    invoke-direct/range {v26 .. v26}, Ljava/util/LinkedList;-><init>()V
    :try_end_5
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 341
    .end local v27    # "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    .restart local v26    # "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    :goto_7
    :try_start_6
    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_5

    .line 358
    :catch_1
    move-exception v30

    goto/16 :goto_2

    .line 362
    .restart local v30    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 363
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received entry removed exception (will retry on renewed entry): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 365
    :cond_f
    if-eqz v2, :cond_10

    .line 366
    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->clearEntry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 369
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleared removed entry from remote transaction (will retry) [entry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    :cond_10
    move-object/from16 v27, v26

    .line 372
    .end local v26    # "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    .restart local v27    # "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    goto/16 :goto_1

    .line 376
    .end local v22    # "cands":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    .end local v23    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    .end local v27    # "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    .end local v30    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .end local v31    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v35    # "txKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .restart local v26    # "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    :cond_11
    if-eqz v2, :cond_14

    if-eqz v26, :cond_14

    .line 377
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->$assertionsDisabled:Z

    if-nez v3, :cond_12

    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 379
    :cond_12
    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .line 380
    .local v25, "evict":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->addEvicted(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)V

    goto :goto_8

    .line 384
    .end local v25    # "evict":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .end local v26    # "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    .end local v28    # "i":I
    .end local v29    # "i$":Ljava/util/Iterator;
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to acquire deployment class loader for message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 386
    .local v24, "err":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 388
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    move-object/from16 v0, v24

    invoke-direct {v3, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v24    # "err":Ljava/lang/String;
    .restart local v26    # "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    .restart local v28    # "i":I
    :cond_14
    move-object v3, v2

    .line 391
    goto/16 :goto_6

    .line 358
    .end local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;
    .end local v26    # "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    .restart local v22    # "cands":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    .restart local v23    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    .restart local v27    # "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    .restart local v31    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v34    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;
    .restart local v35    # "txKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    :catch_2
    move-exception v30

    move-object/from16 v26, v27

    .end local v27    # "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    .restart local v26    # "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    move-object/from16 v2, v34

    .end local v34    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;
    .restart local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;
    goto/16 :goto_2

    .end local v26    # "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    .restart local v27    # "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    :cond_15
    move-object/from16 v26, v27

    .end local v27    # "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    .restart local v26    # "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    goto/16 :goto_7

    .end local v26    # "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    .restart local v27    # "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    :cond_16
    move-object/from16 v26, v27

    .end local v27    # "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    .restart local v26    # "evicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    goto/16 :goto_5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 700
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method txLoadAsync(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;Ljava/util/Collection;ZZLorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 12
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "readThrough"    # Z
    .param p4, "deserializePortable"    # Z
    .param p5, "expiryPlc"    # Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "skipVals"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;ZZ",
            "Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;",
            "Z)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache<TK;TV;>;"
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 162
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->shared()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->subjectId(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->resolveTaskName()Ljava/lang/String;

    move-result-object v8

    move-object v2, p2

    move v3, p3

    move-object v6, p1

    move/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v0 .. v11}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;ZZZLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;Ljava/util/UUID;Ljava/lang/String;ZLorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;Z)V

    .line 175
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->init()V

    .line 177
    return-object v0
.end method

.method public unlockAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 26
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

    .prologue
    .line 471
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    const/16 v21, 0x0

    .line 477
    .local v21, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    const/4 v12, -0x1

    .line 479
    .local v12, "keyCnt":I
    const/4 v14, 0x0

    .line 481
    .local v14, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;>;"
    :try_start_0
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 483
    .local v13, "locKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 485
    .local v11, "key":Ljava/lang/Object;, "TK;"
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    .line 487
    .local v5, "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->peekExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;

    move-result-object v7

    .line 489
    .local v7, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v7, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isAll(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v22

    if-eqz v22, :cond_2

    .line 493
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v22

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->getId()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v7, v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->candidate(Ljava/util/UUID;J)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v6

    .line 495
    .local v6, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    sget-object v20, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 497
    .local v20, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    if-eqz v6, :cond_9

    .line 498
    sget-boolean v22, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->$assertionsDisabled:Z

    if-nez v22, :cond_4

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nearLocal()Z

    move-result v22

    if-nez v22, :cond_4

    new-instance v22, Ljava/lang/AssertionError;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Got non-near-local candidate in near cache: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v22
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 563
    .end local v6    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v20    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :catch_0
    move-exception v10

    .line 564
    .local v10, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Attempted to unlock removed entry (will retry): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 585
    .end local v5    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v7    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .end local v11    # "key":Ljava/lang/Object;, "TK;"
    .end local v13    # "locKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :catch_1
    move-exception v8

    .line 586
    .local v8, "ex":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Failed to unlock the lock for keys: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 500
    .end local v8    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v5    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v6    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .restart local v7    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "key":Ljava/lang/Object;, "TK;"
    .restart local v13    # "locKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v20    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_4
    :try_start_3
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v21

    .line 502
    if-nez v14, :cond_5

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v22, v0

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->allNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v4

    .line 505
    .local v4, "affNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 508
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v12, v0

    .line 510
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v14

    .line 513
    .end local v4    # "affNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_5
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v20

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v17

    .line 518
    .local v17, "primary":Lorg/apache/ignite/cluster/ClusterNode;
    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;

    .line 520
    .local v18, "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;
    if-nez v18, :cond_6

    .line 521
    new-instance v18, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;

    .end local v18    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v22

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-direct {v0, v1, v12}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;-><init>(II)V

    .restart local v18    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;->version(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 527
    :cond_6
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->removeLock()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v19

    .line 529
    .local v19, "rmv":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v19, :cond_9

    .line 530
    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->reentry()Z

    move-result v22

    if-nez v22, :cond_b

    .line 531
    if-eqz v21, :cond_7

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 532
    new-instance v22, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Failed to unlock (if keys were locked separately, then they need to be unlocked separately): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 535
    :cond_7
    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v22

    if-nez v22, :cond_a

    .line 536
    sget-boolean v22, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->$assertionsDisabled:Z

    if-nez v22, :cond_8

    if-nez v18, :cond_8

    new-instance v22, Ljava/lang/AssertionError;

    invoke-direct/range {v22 .. v22}, Ljava/lang/AssertionError;-><init>()V

    throw v22

    .line 538
    :cond_8
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;->addKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 545
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Removed lock (will distribute): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 554
    .end local v17    # "primary":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v18    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;
    .end local v19    # "rmv":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_9
    :goto_4
    sget-boolean v22, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->$assertionsDisabled:Z

    if-nez v22, :cond_c

    sget-object v22, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    if-eqz v6, :cond_c

    new-instance v22, Ljava/lang/AssertionError;

    invoke-direct/range {v22 .. v22}, Ljava/lang/AssertionError;-><init>()V

    throw v22

    .line 543
    .restart local v17    # "primary":Lorg/apache/ignite/cluster/ClusterNode;
    .restart local v18    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;
    .restart local v19    # "rmv":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_a
    invoke-interface {v13, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 548
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Current thread still owns lock (or there are no other nodes) [lock="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", curThreadId="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Thread;->getId()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x5d

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 556
    .end local v17    # "primary":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v18    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;
    .end local v19    # "rmv":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_c
    sget-object v22, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v20

    .line 559
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v7, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    :try_end_3
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 570
    .end local v5    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v6    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v7    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .end local v11    # "key":Ljava/lang/Object;, "TK;"
    .end local v20    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_e
    if-eqz v21, :cond_0

    .line 573
    :try_start_4
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_f
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 574
    .local v15, "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/ignite/cluster/ClusterNode;

    .line 576
    .local v16, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;

    .line 578
    .local v18, "req":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;
    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v22

    if-eqz v22, :cond_10

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v23

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v13, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;->removeLocks(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/lang/Iterable;Z)V

    goto :goto_5

    .line 580
    :cond_10
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;->keys()Ljava/util/List;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v22

    if-nez v22, :cond_f

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5
.end method
