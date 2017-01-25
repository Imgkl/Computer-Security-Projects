.class public Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "GridNearAtomicUpdateFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicFuture",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static log:Lorg/apache/ignite/IgniteLogger;

.field private static final logRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/IgniteLogger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cache:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

.field private final cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field private conflictPutVals:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;",
            ">;"
        }
    .end annotation
.end field

.field private conflictRmvVals:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation
.end field

.field private volatile err:Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;

.field private final expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

.field private final fastMap:Z

.field private final filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

.field private volatile futVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field private invokeArgs:[Ljava/lang/Object;

.field private keys:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation
.end field

.field private volatile mapTime:J

.field private final mappings:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final nearEnabled:Z

.field private final op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

.field private volatile opRes:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

.field private rawRetval:Z

.field private final retval:Z

.field private volatile single:Ljava/lang/Boolean;

.field private singleNodeId:Ljava/util/UUID;

.field private singleReq:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;

.field private final subjId:Ljava/util/UUID;

.field private final syncMode:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

.field private final taskNameHash:I

.field private topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

.field private vals:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->$assertionsDisabled:Z

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/util/Collection;Ljava/util/Collection;[Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;ZZLjavax/cache/expiry/ExpiryPolicy;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Ljava/util/UUID;I)V
    .locals 4
    .param p1, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "cache"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;
    .param p3, "syncMode"    # Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;
    .param p4, "op"    # Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .param p6    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7, "invokeArgs"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10, "retval"    # Z
    .param p11, "rawRetval"    # Z
    .param p12, "expiryPlc"    # Ljavax/cache/expiry/ExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .param p14, "subjId"    # Ljava/util/UUID;
    .param p15, "taskNameHash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;",
            "Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;[",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;ZZ",
            "Ljavax/cache/expiry/ExpiryPolicy;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            "Ljava/util/UUID;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p5, "keys":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p6, "vals":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p8, "conflictPutVals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;>;"
    .local p9, "conflictRmvVals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 108
    sget-object v1, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->ZERO:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 177
    iput-boolean p11, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->rawRetval:Z

    .line 179
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-eqz p6, :cond_0

    invoke-interface {p6}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p5}, Ljava/util/Collection;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 180
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-eqz p8, :cond_1

    invoke-interface {p8}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p5}, Ljava/util/Collection;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 181
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-eqz p9, :cond_2

    invoke-interface {p9}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p5}, Ljava/util/Collection;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 182
    :cond_2
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    if-nez p14, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 184
    :cond_3
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 185
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cache:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    .line 186
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->syncMode:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    .line 187
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 188
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->keys:Ljava/util/Collection;

    .line 189
    iput-object p6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->vals:Ljava/util/Collection;

    .line 190
    iput-object p7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->invokeArgs:[Ljava/lang/Object;

    .line 191
    iput-object p8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->conflictPutVals:Ljava/util/Collection;

    .line 192
    iput-object p9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->conflictRmvVals:Ljava/util/Collection;

    .line 193
    iput-boolean p10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->retval:Z

    .line 194
    move-object/from16 v0, p12

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    .line 195
    move-object/from16 v0, p13

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 196
    move-object/from16 v0, p14

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->subjId:Ljava/util/UUID;

    .line 197
    move/from16 v0, p15

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->taskNameHash:I

    .line 199
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->log:Lorg/apache/ignite/IgniteLogger;

    if-nez v1, :cond_4

    .line 200
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    const-class v3, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-static {v1, v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->logger(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    sput-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->log:Lorg/apache/ignite/IgniteLogger;

    .line 202
    :cond_4
    new-instance v1, Lorg/jsr166/ConcurrentHashMap8;

    invoke-interface {p5}, Ljava/util/Collection;->size()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Lorg/jsr166/ConcurrentHashMap8;-><init>(IF)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->mappings:Ljava/util/concurrent/ConcurrentMap;

    .line 204
    invoke-static/range {p13 .. p13}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eq p4, v1, :cond_6

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteSynchronizationMode()Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->FULL_SYNC:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    if-ne v1, v2, :cond_6

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicWriteOrderMode()Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->CLOCK:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    if-ne v1, v2, :cond_6

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->writeThrough()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v1

    if-nez v1, :cond_6

    :cond_5
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->fastMap:Z

    .line 208
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->isNearEnabled(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->nearEnabled:Z

    .line 209
    return-void

    .line 204
    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;Ljava/util/Collection;ZLjava/util/UUID;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;
    .param p1, "x1"    # Ljava/util/Collection;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/util/UUID;
    .param p4, "x4"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->mapOnTopology(Ljava/util/Collection;ZLjava/util/UUID;Z)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->futVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method private declared-synchronized addFailedKeys(Ljava/util/Collection;Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteCheckedException;
    .locals 6
    .param p2, "err"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/apache/ignite/IgniteCheckedException;"
        }
    .end annotation

    .prologue
    .line 890
    .local p1, "failedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->err:Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;

    .line 892
    .local v0, "err0":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    if-nez v0, :cond_0

    .line 893
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;

    .end local v0    # "err0":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    const-string v4, "Failed to update keys (retry update if possible)."

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->err:Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;

    .line 895
    .restart local v0    # "err0":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 897
    .local v3, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 898
    .local v2, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 890
    .end local v0    # "err0":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v3    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 900
    .restart local v0    # "err0":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v0, v3, p2}, Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;->add(Ljava/util/Collection;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 902
    monitor-exit p0

    return-object v0
.end method

.method private declared-synchronized addInvokeResults(Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)V
    .locals 2
    .param p1, "ret"    # Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .prologue
    .line 873
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 874
    :cond_0
    :try_start_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->value()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->value()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 876
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->value()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 877
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->opRes:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    if-eqz v0, :cond_3

    .line 878
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->opRes:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->mergeEntryProcessResults(Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 882
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 880
    :cond_3
    :try_start_2
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->opRes:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized checkComplete()V
    .locals 3

    .prologue
    .line 468
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->syncMode:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    sget-object v2, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->FULL_ASYNC:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicWriteOrderMode()Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->PRIMARY:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 469
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->err:Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;

    .line 471
    .local v0, "err0":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    if-eqz v0, :cond_3

    .line 472
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->onDone(Ljava/lang/Throwable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    .end local v0    # "err0":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 474
    .restart local v0    # "err0":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->opRes:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->onDone(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 468
    .end local v0    # "err0":Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private doUpdate(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;>;"
    const/16 v9, 0x5d

    const/4 v8, 0x1

    .line 810
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    .line 812
    .local v2, "locNodeId":Ljava/util/UUID;
    const/4 v3, 0x0

    .line 815
    .local v3, "locUpdate":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;

    .line 816
    .local v4, "req":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->nodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 817
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-eqz v3, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot have more than one local mapping [locUpdate="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", req="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 820
    :cond_1
    move-object v3, v4

    goto :goto_0

    .line 824
    :cond_2
    :try_start_0
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 825
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending near atomic update request [nodeId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->nodeId()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", req="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 827
    :cond_3
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->nodeId()Ljava/util/UUID;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v7

    invoke-virtual {v5, v6, v4, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    :goto_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->syncMode:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    sget-object v6, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->PRIMARY_SYNC:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    if-ne v5, v6, :cond_0

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->hasPrimary()Z

    move-result v5

    if-nez v5, :cond_0

    .line 836
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->nodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->removeMapping(Ljava/util/UUID;)V

    goto/16 :goto_0

    .line 829
    :catch_0
    move-exception v0

    .line 830
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->keys()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->addFailedKeys(Ljava/util/Collection;Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteCheckedException;

    .line 832
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->nodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->removeMapping(Ljava/util/UUID;)V

    goto :goto_1

    .line 840
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;
    :cond_4
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->syncMode:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    sget-object v6, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->FULL_ASYNC:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    if-ne v5, v6, :cond_5

    .line 842
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v8, v7, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;ZLjava/lang/Object;Z)V

    iput-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->opRes:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .line 844
    :cond_5
    if-eqz v3, :cond_6

    .line 845
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cache:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v6

    new-instance v7, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture$3;

    invoke-direct {v7, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture$3;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;)V

    invoke-virtual {v5, v6, v3, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->updateAllAsyncInternal(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/util/typedef/CI2;)V

    .line 856
    :cond_6
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->checkComplete()V

    .line 857
    return-void
.end method

.method private map0(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/Collection;ZLjava/util/UUID;)V
    .locals 51
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p3, "remap"    # Z
    .param p4, "oldNodeId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Ljava/util/Collection",
            "<*>;Z",
            "Ljava/util/UUID;",
            ")V"
        }
    .end annotation

    .prologue
    .line 488
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-eqz p4, :cond_0

    if-nez p3, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 490
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->affinityNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v49

    .line 492
    .local v49, "topNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-static/range {v49 .. v49}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 493
    new-instance v5, Lorg/apache/ignite/internal/cluster/ClusterTopologyServerNotFoundException;

    const-string v6, "Failed to map keys for cache (all partition nodes left the grid)."

    invoke-direct {v5, v6}, Lorg/apache/ignite/internal/cluster/ClusterTopologyServerNotFoundException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 743
    :goto_0
    return-void

    .line 499
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v29

    .line 502
    .local v29, "ccfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    invoke-virtual/range {v29 .. v29}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicWriteOrderMode()Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->CLOCK:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    if-ne v5, v6, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v9

    .line 504
    .local v9, "updVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :goto_1
    if-eqz v9, :cond_2

    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 505
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Assigned fast-map version for update on near node: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 507
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->fastMap:Z

    if-nez v5, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->single:Ljava/lang/Boolean;

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->single:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 508
    :cond_3
    invoke-static/range {p2 .. p2}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v44

    .line 515
    .local v44, "key":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->vals:Ljava/util/Collection;

    if-eqz v5, :cond_5

    .line 517
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->vals:Ljava/util/Collection;

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v50

    .line 518
    .local v50, "val":Ljava/lang/Object;
    const/16 v35, 0x0

    .line 519
    .local v35, "conflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    const-wide/16 v36, -0x1

    .line 520
    .local v36, "conflictTtl":J
    const-wide/16 v30, -0x1

    .line 547
    .end local v50    # "val":Ljava/lang/Object;
    .local v30, "conflictExpireTime":J
    :goto_2
    if-nez v44, :cond_8

    .line 548
    new-instance v39, Ljava/lang/NullPointerException;

    const-string v5, "Null key."

    move-object/from16 v0, v39

    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 550
    .local v39, "err":Ljava/lang/NullPointerException;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->onDone(Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    .line 502
    .end local v9    # "updVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v30    # "conflictExpireTime":J
    .end local v35    # "conflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v36    # "conflictTtl":J
    .end local v39    # "err":Ljava/lang/NullPointerException;
    .end local v44    # "key":Ljava/lang/Object;
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 522
    .restart local v9    # "updVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v44    # "key":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->conflictPutVals:Ljava/util/Collection;

    if-eqz v5, :cond_6

    .line 524
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->conflictPutVals:Ljava/util/Collection;

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;

    .line 526
    .local v32, "conflictPutVal":Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;
    invoke-virtual/range {v32 .. v32}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v50

    .line 527
    .local v50, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    invoke-virtual/range {v32 .. v32}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v35

    .line 528
    .restart local v35    # "conflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    invoke-virtual/range {v32 .. v32}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;->ttl()J

    move-result-wide v36

    .line 529
    .restart local v36    # "conflictTtl":J
    invoke-virtual/range {v32 .. v32}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;->expireTime()J

    move-result-wide v30

    .line 530
    .restart local v30    # "conflictExpireTime":J
    goto :goto_2

    .line 531
    .end local v30    # "conflictExpireTime":J
    .end local v32    # "conflictPutVal":Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;
    .end local v35    # "conflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v36    # "conflictTtl":J
    .end local v50    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->conflictRmvVals:Ljava/util/Collection;

    if-eqz v5, :cond_7

    .line 533
    const/16 v50, 0x0

    .line 534
    .local v50, "val":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->conflictRmvVals:Ljava/util/Collection;

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 535
    .restart local v35    # "conflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    const-wide/16 v36, -0x1

    .line 536
    .restart local v36    # "conflictTtl":J
    const-wide/16 v30, -0x1

    .restart local v30    # "conflictExpireTime":J
    goto :goto_2

    .line 540
    .end local v30    # "conflictExpireTime":J
    .end local v35    # "conflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v36    # "conflictTtl":J
    .end local v50    # "val":Ljava/lang/Object;
    :cond_7
    const/16 v50, 0x0

    .line 541
    .restart local v50    # "val":Ljava/lang/Object;
    const/16 v35, 0x0

    .line 542
    .restart local v35    # "conflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    const-wide/16 v36, -0x1

    .line 543
    .restart local v36    # "conflictTtl":J
    const-wide/16 v30, -0x1

    .restart local v30    # "conflictExpireTime":J
    goto :goto_2

    .line 555
    .end local v50    # "val":Ljava/lang/Object;
    :cond_8
    if-nez v50, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eq v5, v6, :cond_9

    .line 556
    new-instance v39, Ljava/lang/NullPointerException;

    const-string v5, "Null value."

    move-object/from16 v0, v39

    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 558
    .restart local v39    # "err":Ljava/lang/NullPointerException;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->onDone(Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    .line 563
    .end local v39    # "err":Ljava/lang/NullPointerException;
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v28

    .line 565
    .local v28, "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eq v5, v6, :cond_a

    .line 566
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v50

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v50

    .line 568
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->fastMap:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->mapKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Ljava/util/Collection;

    move-result-object v48

    .line 571
    .local v48, "primaryNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_b

    invoke-interface/range {v48 .. v48}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_b

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Should be mapped to single node: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v48

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 573
    :cond_b
    invoke-static/range {v48 .. v48}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lorg/apache/ignite/cluster/ClusterNode;

    .line 575
    .local v47, "primary":Lorg/apache/ignite/cluster/ClusterNode;
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v5

    invoke-interface/range {v47 .. v47}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->futVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->fastMap:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->syncMode:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->retval:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    sget-object v15, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v14, v15, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v15, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->FORCE_TRANSFORM_BACKUP:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v14, v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Z

    move-result v14

    if-eqz v14, :cond_c

    const/4 v14, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->invokeArgs:[Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->subjId:Ljava/util/UUID;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->taskNameHash:I

    move/from16 v19, v0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v19}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;-><init>(ILjava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;ZZLjavax/cache/expiry/ExpiryPolicy;[Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Ljava/util/UUID;I)V

    .line 592
    .local v4, "req":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;
    const/16 v19, 0x1

    move-object v11, v4

    move-object/from16 v12, v28

    move-object/from16 v13, v50

    move-wide/from16 v14, v36

    move-wide/from16 v16, v30

    move-object/from16 v18, v35

    invoke-virtual/range {v11 .. v19}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->addUpdateEntry(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)V

    .line 599
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->single:Ljava/lang/Boolean;

    .line 602
    invoke-interface/range {v47 .. v47}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->mapSingle(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;)V

    goto/16 :goto_0

    .line 575
    .end local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;
    :cond_c
    const/4 v14, 0x0

    goto :goto_3

    .line 607
    .end local v28    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v30    # "conflictExpireTime":J
    .end local v35    # "conflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v36    # "conflictTtl":J
    .end local v44    # "key":Ljava/lang/Object;
    .end local v47    # "primary":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v48    # "primaryNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_d
    const/16 v43, 0x0

    .line 609
    .local v43, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->vals:Ljava/util/Collection;

    if-eqz v5, :cond_e

    .line 610
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->vals:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v43

    .line 612
    :cond_e
    const/16 v33, 0x0

    .line 614
    .local v33, "conflictPutValsIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->conflictPutVals:Ljava/util/Collection;

    if-eqz v5, :cond_f

    .line 615
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->conflictPutVals:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .line 617
    :cond_f
    const/16 v34, 0x0

    .line 619
    .local v34, "conflictRmvValsIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->conflictRmvVals:Ljava/util/Collection;

    if-eqz v5, :cond_10

    .line 620
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->conflictRmvVals:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .line 622
    :cond_10
    new-instance v46, Ljava/util/HashMap;

    invoke-interface/range {v49 .. v49}, Ljava/util/Collection;->size()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, v46

    invoke-direct {v0, v5, v6}, Ljava/util/HashMap;-><init>(IF)V

    .line 626
    .local v46, "pendingMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;>;"
    monitor-enter p0

    .line 627
    if-eqz p3, :cond_11

    .line 628
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->removeMapping(Ljava/util/UUID;)V

    .line 631
    :cond_11
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :cond_12
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    .line 632
    .restart local v44    # "key":Ljava/lang/Object;
    if-nez v44, :cond_13

    .line 633
    new-instance v39, Ljava/lang/NullPointerException;

    const-string v5, "Null key."

    move-object/from16 v0, v39

    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 635
    .restart local v39    # "err":Ljava/lang/NullPointerException;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 637
    monitor-exit p0

    goto/16 :goto_0

    .line 728
    .end local v39    # "err":Ljava/lang/NullPointerException;
    .end local v44    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 645
    .restart local v44    # "key":Ljava/lang/Object;
    :cond_13
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->vals:Ljava/util/Collection;

    if-eqz v5, :cond_14

    .line 646
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    .line 647
    .restart local v50    # "val":Ljava/lang/Object;
    const/16 v35, 0x0

    .line 648
    .restart local v35    # "conflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    const-wide/16 v36, -0x1

    .line 649
    .restart local v36    # "conflictTtl":J
    const-wide/16 v30, -0x1

    .line 651
    .restart local v30    # "conflictExpireTime":J
    if-nez v50, :cond_15

    .line 652
    new-instance v39, Ljava/lang/NullPointerException;

    const-string v5, "Null value."

    move-object/from16 v0, v39

    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 654
    .restart local v39    # "err":Ljava/lang/NullPointerException;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 656
    monitor-exit p0

    goto/16 :goto_0

    .line 659
    .end local v30    # "conflictExpireTime":J
    .end local v35    # "conflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v36    # "conflictTtl":J
    .end local v39    # "err":Ljava/lang/NullPointerException;
    .end local v50    # "val":Ljava/lang/Object;
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->conflictPutVals:Ljava/util/Collection;

    if-eqz v5, :cond_19

    .line 660
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;

    .line 662
    .restart local v32    # "conflictPutVal":Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;
    invoke-virtual/range {v32 .. v32}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v50

    .line 663
    .local v50, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    invoke-virtual/range {v32 .. v32}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v35

    .line 664
    .restart local v35    # "conflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    invoke-virtual/range {v32 .. v32}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;->ttl()J

    move-result-wide v36

    .line 665
    .restart local v36    # "conflictTtl":J
    invoke-virtual/range {v32 .. v32}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;->expireTime()J

    move-result-wide v30

    .line 680
    .end local v32    # "conflictPutVal":Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;
    .end local v50    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v30    # "conflictExpireTime":J
    :cond_15
    :goto_4
    if-nez v50, :cond_16

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v5, v6, :cond_12

    .line 683
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v28

    .line 685
    .restart local v28    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eq v5, v6, :cond_17

    .line 686
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v50

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v50

    .line 688
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->fastMap:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->mapKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Ljava/util/Collection;

    move-result-object v27

    .line 690
    .local v27, "affNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/16 v40, 0x0

    .line 692
    .local v40, "i":I
    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v42

    .local v42, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/ignite/cluster/ClusterNode;

    .line 693
    .local v26, "affNode":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface/range {v26 .. v26}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v12

    .line 695
    .local v12, "nodeId":Ljava/util/UUID;
    move-object/from16 v0, v46

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;

    .line 697
    .local v10, "mapped":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;
    if-nez v10, :cond_1c

    .line 698
    new-instance v10, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;

    .end local v10    # "mapped":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->futVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->fastMap:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->syncMode:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->retval:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v5, v6, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->FORCE_TRANSFORM_BACKUP:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const/16 v20, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->invokeArgs:[Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->subjId:Ljava/util/UUID;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->taskNameHash:I

    move/from16 v25, v0

    move-object v15, v9

    move-object/from16 v16, p1

    invoke-direct/range {v10 .. v25}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;-><init>(ILjava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;ZZLjavax/cache/expiry/ExpiryPolicy;[Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Ljava/util/UUID;I)V

    .line 715
    .restart local v10    # "mapped":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;
    move-object/from16 v0, v46

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v12, v10}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;

    .line 720
    .local v45, "old":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_1c

    if-eqz v45, :cond_1c

    if-eqz v45, :cond_18

    if-nez p3, :cond_1c

    :cond_18
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid mapping state [old="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", remap="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 667
    .end local v10    # "mapped":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;
    .end local v12    # "nodeId":Ljava/util/UUID;
    .end local v26    # "affNode":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v27    # "affNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v28    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v30    # "conflictExpireTime":J
    .end local v35    # "conflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v36    # "conflictTtl":J
    .end local v40    # "i":I
    .end local v42    # "i$":Ljava/util/Iterator;
    .end local v45    # "old":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;
    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->conflictRmvVals:Ljava/util/Collection;

    if-eqz v5, :cond_1a

    .line 668
    const/16 v50, 0x0

    .line 669
    .local v50, "val":Ljava/lang/Object;
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 670
    .restart local v35    # "conflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    const-wide/16 v36, -0x1

    .line 671
    .restart local v36    # "conflictTtl":J
    const-wide/16 v30, -0x1

    .restart local v30    # "conflictExpireTime":J
    goto/16 :goto_4

    .line 674
    .end local v30    # "conflictExpireTime":J
    .end local v35    # "conflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v36    # "conflictTtl":J
    .end local v50    # "val":Ljava/lang/Object;
    :cond_1a
    const/16 v50, 0x0

    .line 675
    .restart local v50    # "val":Ljava/lang/Object;
    const/16 v35, 0x0

    .line 676
    .restart local v35    # "conflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    const-wide/16 v36, -0x1

    .line 677
    .restart local v36    # "conflictTtl":J
    const-wide/16 v30, -0x1

    .restart local v30    # "conflictExpireTime":J
    goto/16 :goto_4

    .line 698
    .end local v50    # "val":Ljava/lang/Object;
    .restart local v12    # "nodeId":Ljava/util/UUID;
    .restart local v26    # "affNode":Lorg/apache/ignite/cluster/ClusterNode;
    .restart local v27    # "affNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .restart local v28    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v40    # "i":I
    .restart local v42    # "i$":Ljava/util/Iterator;
    :cond_1b
    const/16 v20, 0x0

    goto/16 :goto_6

    .line 723
    .restart local v10    # "mapped":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;
    :cond_1c
    if-nez v40, :cond_1d

    const/16 v21, 0x1

    :goto_7
    move-object v13, v10

    move-object/from16 v14, v28

    move-object/from16 v15, v50

    move-wide/from16 v16, v36

    move-wide/from16 v18, v30

    move-object/from16 v20, v35

    invoke-virtual/range {v13 .. v21}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->addUpdateEntry(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)V

    .line 725
    add-int/lit8 v40, v40, 0x1

    .line 726
    goto/16 :goto_5

    .line 723
    :cond_1d
    const/16 v21, 0x0

    goto :goto_7

    .line 728
    .end local v10    # "mapped":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;
    .end local v12    # "nodeId":Ljava/util/UUID;
    .end local v26    # "affNode":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v27    # "affNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v28    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v30    # "conflictExpireTime":J
    .end local v35    # "conflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v36    # "conflictTtl":J
    .end local v40    # "i":I
    .end local v42    # "i$":Ljava/util/Iterator;
    .end local v44    # "key":Ljava/lang/Object;
    :cond_1e
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 730
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->single:Ljava/lang/Boolean;

    if-eqz v5, :cond_1f

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->single:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_20

    :cond_1f
    invoke-interface/range {v46 .. v46}, Ljava/util/Map;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_20

    .line 731
    invoke-interface/range {v46 .. v46}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/util/Map$Entry;

    .line 733
    .local v38, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;>;"
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->single:Ljava/lang/Boolean;

    .line 735
    invoke-interface/range {v38 .. v38}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/UUID;

    invoke-interface/range {v38 .. v38}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->mapSingle(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;)V

    goto/16 :goto_0

    .line 740
    .end local v38    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;>;"
    :cond_20
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->single:Ljava/lang/Boolean;

    .line 742
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->doUpdate(Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method private mapKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Ljava/util/Collection;
    .locals 3
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p3, "fastMap"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Z)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 759
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v0

    .line 762
    .local v0, "affMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;
    if-eqz p3, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v1

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->nodes(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method private mapOnTopology(Ljava/util/Collection;ZLjava/util/UUID;Z)V
    .locals 8
    .param p2, "remap"    # Z
    .param p3, "oldNodeId"    # Ljava/util/UUID;
    .param p4, "waitTopFut"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;Z",
            "Ljava/util/UUID;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cache:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->readLock()V

    .line 419
    const/4 v7, 0x0

    .line 422
    .local v7, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cache:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->stopping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to perform cache operation (cache is stopped): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cache:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->onDone(Ljava/lang/Throwable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cache:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->readUnlock()V

    .line 462
    :goto_0
    return-void

    .line 429
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topologyVersionFuture()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;

    move-result-object v6

    .line 431
    .local v6, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;
    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 432
    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v7

    .line 434
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->futVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    if-nez v0, :cond_1

    .line 436
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->futVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 452
    :cond_1
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->mapTime:J

    .line 454
    if-nez p2, :cond_3

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicWriteOrderMode()Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->CLOCK:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->syncMode:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    sget-object v1, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->FULL_ASYNC:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    if-eq v0, v1, :cond_3

    .line 455
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->addAtomicFuture(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cache:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->readUnlock()V

    .line 461
    invoke-direct {p0, v7, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->map0(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/Collection;ZLjava/util/UUID;)V

    goto :goto_0

    .line 439
    :cond_4
    if-eqz p4, :cond_5

    .line 440
    :try_start_2
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;Ljava/util/Collection;ZLjava/util/UUID;Z)V

    invoke-interface {v6, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 458
    :goto_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cache:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->readUnlock()V

    goto :goto_0

    .line 447
    :cond_5
    :try_start_3
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheTryPutFailedException;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheTryPutFailedException;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->onDone(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 458
    .end local v6    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cache:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->readUnlock()V

    throw v0
.end method

.method private mapSingle(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;)V
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;

    .prologue
    .line 774
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->singleNodeId:Ljava/util/UUID;

    .line 775
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->singleReq:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;

    .line 777
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 778
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cache:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture$2;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture$2;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;)V

    invoke-virtual {v1, p1, p2, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->updateAllAsyncInternal(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/util/typedef/CI2;)V

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 790
    :cond_1
    :try_start_0
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 791
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending near atomic update request [nodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->nodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 793
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->nodeId()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v3

    invoke-virtual {v1, v2, p2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V

    .line 795
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->syncMode:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    sget-object v2, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->FULL_ASYNC:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicWriteOrderMode()Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->PRIMARY:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    if-ne v1, v2, :cond_0

    .line 796
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;ZLjava/lang/Object;Z)V

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->onDone(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->keys()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->addFailedKeys(Ljava/util/Collection;Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method private removeMapping(Ljava/util/UUID;)V
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 865
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    return-void
.end method

.method private updateNear(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;)V
    .locals 2
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;

    .prologue
    .line 399
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->nearEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->hasPrimary()Z

    move-result v1

    if-nez v1, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;

    .line 404
    .local v0, "near":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;
    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->processNearAtomicUpdateResponse(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;)V

    goto :goto_0
.end method


# virtual methods
.method public checkTimeout(J)V
    .locals 7
    .param p1, "timeout"    # J

    .prologue
    .line 276
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->mapTime:J

    .line 278
    .local v0, "mapTime0":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    add-long v4, v0, p1

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 279
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/CacheAtomicUpdateTimeoutCheckedException;

    const-string v3, "Cache update timeout out (consider increasing networkTimeout configuration property)."

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/processors/cache/CacheAtomicUpdateTimeoutCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 281
    :cond_0
    return-void
.end method

.method public futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->futVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->asGridUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    return-object v0
.end method

.method public keys()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->keys:Ljava/util/Collection;

    return-object v0
.end method

.method public map(Z)V
    .locals 3
    .param p1, "waitTopFut"    # Z

    .prologue
    .line 299
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->keys:Ljava/util/Collection;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->mapOnTopology(Ljava/util/Collection;ZLjava/util/UUID;Z)V

    .line 300
    return-void
.end method

.method public markNotTrackable()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public nodes()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 223
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id2Node(Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v1

    new-array v2, v3, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->notNull()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 4
    .param p1, "res"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "err"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 305
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    instance-of v2, p1, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    move-object v0, p1

    .line 307
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .line 309
    .local v0, "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    if-nez p1, :cond_3

    const/4 v1, 0x0

    .line 312
    .local v1, "retval":Ljava/lang/Object;
    :goto_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v2, v3, :cond_1

    if-nez v1, :cond_1

    .line 313
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 315
    .end local v1    # "retval":Ljava/lang/Object;
    :cond_1
    invoke-super {p0, v1, p2}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 316
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->futVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    if-eqz v2, :cond_2

    .line 317
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->removeAtomicFuture(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 319
    :cond_2
    const/4 v2, 0x1

    .line 322
    :goto_1
    return v2

    .line 309
    :cond_3
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->rawRetval:Z

    if-eqz v2, :cond_4

    move-object v1, v0

    goto :goto_0

    :cond_4
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->retval:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v2, v3, :cond_6

    :cond_5
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->value()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->success()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 322
    :cond_7
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onNodeLeft(Ljava/util/UUID;)Z
    .locals 7
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 244
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->single:Ljava/lang/Boolean;

    .line 246
    .local v1, "single0":Ljava/lang/Boolean;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 247
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->singleNodeId:Ljava/util/UUID;

    invoke-virtual {v4, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 248
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->singleReq:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->keys()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Primary node left grid before response is received: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->addFailedKeys(Ljava/util/Collection;Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 271
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 255
    goto :goto_0

    .line 258
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;

    .line 260
    .local v0, "req":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;
    if-eqz v0, :cond_2

    .line 261
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->keys()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Primary node left grid before response is received: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->addFailedKeys(Ljava/util/Collection;Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteCheckedException;

    .line 264
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->checkComplete()V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 271
    goto :goto_0
.end method

.method public onResult(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;)V
    .locals 7
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;

    .prologue
    const/4 v6, 0x1

    .line 332
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->remapKeys()Ljava/util/Collection;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 333
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicWriteOrderMode()Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->PRIMARY:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 335
    :cond_0
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->remapKeys()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {p0, v4, v6, p1, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->mapOnTopology(Ljava/util/Collection;ZLjava/util/UUID;Z)V

    .line 390
    :goto_0
    return-void

    .line 340
    :cond_1
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->returnValue()Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    move-result-object v2

    .line 342
    .local v2, "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->single:Ljava/lang/Boolean;

    .line 344
    .local v3, "single0":Ljava/lang/Boolean;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 345
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->singleNodeId:Ljava/util/UUID;

    invoke-virtual {v4, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid response received for single-node mapped future [singleNodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->singleNodeId:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", nodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", res="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 348
    :cond_2
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->singleReq:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;

    invoke-direct {p0, v4, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->updateNear(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;)V

    .line 350
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->error()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 351
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->failedKeys()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->error()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->addFailedKeys(Ljava/util/Collection;Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 353
    :cond_3
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    sget-object v5, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v4, v5, :cond_5

    .line 354
    if-eqz v2, :cond_4

    .line 355
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->addInvokeResults(Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)V

    .line 357
    :cond_4
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->opRes:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-virtual {p0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->onDone(Ljava/lang/Object;)Z

    goto :goto_0

    .line 360
    :cond_5
    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->opRes:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    move-object v0, v2

    .line 362
    .local v0, "opRes0":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->onDone(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 367
    .end local v0    # "opRes0":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :cond_6
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;

    .line 369
    .local v1, "req":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;
    if-eqz v1, :cond_8

    .line 370
    invoke-direct {p0, v1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->updateNear(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;)V

    .line 372
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->error()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 373
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->keys()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->error()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->addFailedKeys(Ljava/util/Collection;Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteCheckedException;

    .line 385
    :cond_7
    :goto_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :cond_8
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->checkComplete()V

    goto/16 :goto_0

    .line 375
    :cond_9
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->op:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    sget-object v5, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v4, v5, :cond_b

    .line 376
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->$assertionsDisabled:Z

    if-nez v4, :cond_a

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->fastMap()Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 378
    :cond_a
    if-eqz v2, :cond_7

    .line 379
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->addInvokeResults(Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)V

    goto :goto_1

    .line 381
    :cond_b
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->fastMap()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->hasPrimary()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 382
    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->opRes:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 907
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;

    invoke-super {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    return-object v0
.end method

.method public trackable()Z
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    return v0
.end method

.method public version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->futVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public waitForPartitionExchange()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->fastMap:Z

    return v0
.end method
