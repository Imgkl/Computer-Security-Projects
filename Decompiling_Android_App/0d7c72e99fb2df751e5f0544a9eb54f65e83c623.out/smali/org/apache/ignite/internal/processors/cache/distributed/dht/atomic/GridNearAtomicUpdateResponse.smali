.class public Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
.source "GridNearAtomicUpdateResponse.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheDeployable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CACHE_MSG_IDX:I

.field private static final serialVersionUID:J


# instance fields
.field private volatile err:Lorg/apache/ignite/IgniteCheckedException;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private errBytes:[B

.field private volatile failedKeys:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private futVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field private nearExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

.field private nearSkipIdxs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = I
    .end annotation
.end field

.field private nearTtls:Lorg/apache/ignite/internal/util/GridLongList;

.field private nearVals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private nearValsIdxs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = I
    .end annotation
.end field

.field private nearVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field private nodeId:Ljava/util/UUID;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private remapKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private ret:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->$assertionsDisabled:Z

    .line 43
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nextIndexId()I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->CACHE_MSG_IDX:I

    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;-><init>()V

    .line 100
    return-void
.end method

.method public constructor <init>(ILjava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 0
    .param p1, "cacheId"    # I
    .param p2, "nodeId"    # Ljava/util/UUID;
    .param p3, "futVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;-><init>()V

    .line 108
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->cacheId:I

    .line 109
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nodeId:Ljava/util/UUID;

    .line 110
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->futVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 111
    return-void
.end method


# virtual methods
.method public declared-synchronized addFailedKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 320
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->failedKeys:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->failedKeys:Ljava/util/Collection;

    .line 323
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->failedKeys:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->err:Lorg/apache/ignite/IgniteCheckedException;

    if-nez v0, :cond_1

    .line 326
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    const-string v1, "Failed to update keys on primary node."

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->err:Lorg/apache/ignite/IgniteCheckedException;

    .line 328
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->err:Lorg/apache/ignite/IgniteCheckedException;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/IgniteCheckedException;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    monitor-exit p0

    return-void

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addFailedKeys(Ljava/util/Collection;Ljava/lang/Throwable;)V
    .locals 2
    .param p2, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 338
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->failedKeys:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->failedKeys:Ljava/util/Collection;

    .line 341
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->failedKeys:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 343
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->err:Lorg/apache/ignite/IgniteCheckedException;

    if-nez v0, :cond_1

    .line 344
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    const-string v1, "Failed to update keys on primary node."

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->err:Lorg/apache/ignite/IgniteCheckedException;

    .line 346
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->err:Lorg/apache/ignite/IgniteCheckedException;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/IgniteCheckedException;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    monitor-exit p0

    return-void

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addFailedKeys(Ljava/util/Collection;Ljava/lang/Throwable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 4
    .param p2, "e"    # Ljava/lang/Throwable;
    .param p3, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Throwable;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->failedKeys:Ljava/util/Collection;

    if-nez v2, :cond_0

    .line 358
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->failedKeys:Ljava/util/Collection;

    .line 360
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 361
    .local v1, "key":Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->failedKeys:Ljava/util/Collection;

    invoke-virtual {p3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 357
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 363
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->err:Lorg/apache/ignite/IgniteCheckedException;

    if-nez v2, :cond_2

    .line 364
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    const-string v3, "Failed to update keys on primary node."

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->err:Lorg/apache/ignite/IgniteCheckedException;

    .line 366
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->err:Lorg/apache/ignite/IgniteCheckedException;

    invoke-virtual {v2, p2}, Lorg/apache/ignite/IgniteCheckedException;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    monitor-exit p0

    return-void
.end method

.method public addNearTtl(IJJ)V
    .locals 8
    .param p1, "keyIdx"    # I
    .param p2, "ttl"    # J
    .param p4, "expireTime"    # J

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    const/16 v2, 0x10

    .line 212
    cmp-long v1, p2, v6

    if-ltz v1, :cond_0

    .line 213
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearTtls:Lorg/apache/ignite/internal/util/GridLongList;

    if-nez v1, :cond_0

    .line 214
    new-instance v1, Lorg/apache/ignite/internal/util/GridLongList;

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/GridLongList;-><init>(I)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearTtls:Lorg/apache/ignite/internal/util/GridLongList;

    .line 216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 217
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearTtls:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-virtual {v1, v4, v5}, Lorg/apache/ignite/internal/util/GridLongList;->add(J)V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearTtls:Lorg/apache/ignite/internal/util/GridLongList;

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearTtls:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-virtual {v1, p2, p3}, Lorg/apache/ignite/internal/util/GridLongList;->add(J)V

    .line 224
    :cond_1
    cmp-long v1, p4, v6

    if-ltz v1, :cond_2

    .line 225
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    if-nez v1, :cond_2

    .line 226
    new-instance v1, Lorg/apache/ignite/internal/util/GridLongList;

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/GridLongList;-><init>(I)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    .line 228
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 229
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-virtual {v1, v4, v5}, Lorg/apache/ignite/internal/util/GridLongList;->add(J)V

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 233
    .end local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    if-eqz v1, :cond_3

    .line 234
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-virtual {v1, p4, p5}, Lorg/apache/ignite/internal/util/GridLongList;->add(J)V

    .line 235
    :cond_3
    return-void
.end method

.method public addNearValue(ILorg/apache/ignite/internal/processors/cache/CacheObject;JJ)V
    .locals 7
    .param p1, "keyIdx"    # I
    .param p2, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "ttl"    # J
    .param p5, "expireTime"    # J

    .prologue
    .line 194
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearValsIdxs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearValsIdxs:Ljava/util/List;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearVals:Ljava/util/List;

    :cond_0
    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-wide v4, p5

    .line 199
    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->addNearTtl(IJJ)V

    .line 201
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearValsIdxs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearVals:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    return-void
.end method

.method public addSkippedIndex(I)V
    .locals 6
    .param p1, "keyIdx"    # I

    .prologue
    const-wide/16 v2, -0x1

    .line 283
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearSkipIdxs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearSkipIdxs:Ljava/util/List;

    .line 286
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearSkipIdxs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move v1, p1

    move-wide v4, v2

    .line 288
    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->addNearTtl(IJJ)V

    .line 289
    return-void
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 600
    const/16 v0, 0x29

    return v0
.end method

.method public error()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->err:Lorg/apache/ignite/IgniteCheckedException;

    return-object v0
.end method

.method public failedKeys()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->failedKeys:Ljava/util/Collection;

    return-object v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 605
    const/16 v0, 0xe

    return v0
.end method

.method public finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V
    .locals 3
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 391
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V

    .line 393
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->errBytes:[B

    if-eqz v1, :cond_0

    .line 394
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->errBytes:[B

    invoke-interface {v1, v2, p2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/IgniteCheckedException;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->err:Lorg/apache/ignite/IgniteCheckedException;

    .line 396
    :cond_0
    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->cacheId:I

    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 398
    .local v0, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->failedKeys:Ljava/util/Collection;

    invoke-virtual {p0, v1, v0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->finishUnmarshalCacheObjects(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    .line 400
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->remapKeys:Ljava/util/List;

    invoke-virtual {p0, v1, v0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->finishUnmarshalCacheObjects(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    .line 402
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearVals:Ljava/util/List;

    invoke-virtual {p0, v1, v0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->finishUnmarshalCacheObjects(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    .line 404
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->ret:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    if-eqz v1, :cond_1

    .line 405
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->ret:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-virtual {v1, v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    .line 406
    :cond_1
    return-void
.end method

.method public futureVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->futVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public lookupIndex()I
    .locals 1

    .prologue
    .line 115
    sget v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->CACHE_MSG_IDX:I

    return v0
.end method

.method public nearExpireTime(I)J
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 242
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    if-eqz v0, :cond_2

    .line 243
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridLongList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 245
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridLongList;->get(I)J

    move-result-wide v0

    .line 248
    :goto_0
    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public nearTtl(I)J
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearTtls:Lorg/apache/ignite/internal/util/GridLongList;

    if-eqz v0, :cond_2

    .line 257
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearTtls:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridLongList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 259
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearTtls:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridLongList;->get(I)J

    move-result-wide v0

    .line 262
    :goto_0
    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public nearValue(I)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 1
    .param p1, "idx"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearVals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    return-object v0
.end method

.method public nearValuesIndexes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearValsIdxs:Ljava/util/List;

    return-object v0
.end method

.method public nearVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public nearVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 0
    .param p1, "nearVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 269
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 270
    return-void
.end method

.method public nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public nodeId(Ljava/util/UUID;)V
    .locals 0
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 129
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nodeId:Ljava/util/UUID;

    .line 130
    return-void
.end method

.method public prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V
    .locals 3
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 372
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 374
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->err:Lorg/apache/ignite/IgniteCheckedException;

    if-eqz v1, :cond_0

    .line 375
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->err:Lorg/apache/ignite/IgniteCheckedException;

    invoke-interface {v1, v2}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->errBytes:[B

    .line 377
    :cond_0
    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->cacheId:I

    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 379
    .local v0, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->failedKeys:Ljava/util/Collection;

    invoke-virtual {p0, v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->prepareMarshalCacheObjects(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 381
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->remapKeys:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->prepareMarshalCacheObjects(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 383
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearVals:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->prepareMarshalCacheObjects(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 385
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->ret:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    if-eqz v1, :cond_1

    .line 386
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->ret:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 387
    :cond_1
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 496
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 498
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 595
    :goto_0
    return v0

    .line 501
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 502
    goto :goto_0

    .line 504
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 595
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 506
    :pswitch_0
    const-string v0, "errBytes"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->errBytes:[B

    .line 508
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 509
    goto :goto_0

    .line 511
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 514
    :pswitch_1
    const-string v0, "failedKeys"

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->failedKeys:Ljava/util/Collection;

    .line 516
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 517
    goto :goto_0

    .line 519
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 522
    :pswitch_2
    const-string v0, "futVer"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->futVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 524
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 525
    goto :goto_0

    .line 527
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 530
    :pswitch_3
    const-string v0, "nearExpireTimes"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/GridLongList;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    .line 532
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 533
    goto :goto_0

    .line 535
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 538
    :pswitch_4
    const-string v0, "nearSkipIdxs"

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->INT:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearSkipIdxs:Ljava/util/List;

    .line 540
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 541
    goto :goto_0

    .line 543
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 546
    :pswitch_5
    const-string v0, "nearTtls"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/GridLongList;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearTtls:Lorg/apache/ignite/internal/util/GridLongList;

    .line 548
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 549
    goto/16 :goto_0

    .line 551
    :cond_7
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 554
    :pswitch_6
    const-string v0, "nearVals"

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearVals:Ljava/util/List;

    .line 556
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    .line 557
    goto/16 :goto_0

    .line 559
    :cond_8
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 562
    :pswitch_7
    const-string v0, "nearValsIdxs"

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->INT:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearValsIdxs:Ljava/util/List;

    .line 564
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 565
    goto/16 :goto_0

    .line 567
    :cond_9
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 570
    :pswitch_8
    const-string v0, "nearVer"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 572
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    .line 573
    goto/16 :goto_0

    .line 575
    :cond_a
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 578
    :pswitch_9
    const-string v0, "remapKeys"

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->remapKeys:Ljava/util/List;

    .line 580
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    .line 581
    goto/16 :goto_0

    .line 583
    :cond_b
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 586
    :pswitch_a
    const-string v0, "ret"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->ret:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .line 588
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    .line 589
    goto/16 :goto_0

    .line 591
    :cond_c
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto/16 :goto_1

    .line 504
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public remapKeys()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->remapKeys:Ljava/util/List;

    return-object v0
.end method

.method public remapKeys(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "remapKeys":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->remapKeys:Ljava/util/List;

    .line 173
    return-void
.end method

.method public returnValue()Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->ret:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    return-object v0
.end method

.method public returnValue(Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)V
    .locals 0
    .param p1, "ret"    # Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .prologue
    .line 165
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->ret:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .line 166
    return-void
.end method

.method public skippedIndexes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearSkipIdxs:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 610
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;

    const-string v1, "parent"

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 410
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 412
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 491
    :cond_0
    :goto_0
    return v0

    .line 415
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 416
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 422
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 491
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 424
    :pswitch_0
    const-string v1, "errBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->errBytes:[B

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 430
    :pswitch_1
    const-string v1, "failedKeys"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->failedKeys:Ljava/util/Collection;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 436
    :pswitch_2
    const-string v1, "futVer"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->futVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 442
    :pswitch_3
    const-string v1, "nearExpireTimes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearExpireTimes:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 448
    :pswitch_4
    const-string v1, "nearSkipIdxs"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearSkipIdxs:Ljava/util/List;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->INT:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 454
    :pswitch_5
    const-string v1, "nearTtls"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearTtls:Lorg/apache/ignite/internal/util/GridLongList;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 460
    :pswitch_6
    const-string v1, "nearVals"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearVals:Ljava/util/List;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 466
    :pswitch_7
    const-string v1, "nearValsIdxs"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearValsIdxs:Ljava/util/List;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->INT:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 472
    :pswitch_8
    const-string v1, "nearVer"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 478
    :pswitch_9
    const-string v1, "remapKeys"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->remapKeys:Ljava/util/List;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 484
    :pswitch_a
    const-string v1, "ret"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->ret:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto/16 :goto_1

    .line 422
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
