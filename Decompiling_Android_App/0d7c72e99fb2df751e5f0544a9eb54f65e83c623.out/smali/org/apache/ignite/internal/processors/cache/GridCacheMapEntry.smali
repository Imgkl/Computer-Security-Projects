.class public abstract Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
.super Ljava/lang/Object;
.source "GridCacheMapEntry.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$1;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ATOMIC_VER_COMPARATOR:Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicVersionComparator;

.field private static final IS_DELETED_MASK:B = 0x1t

.field private static final IS_UNSWAPPED_MASK:B = 0x2t

.field private static final SIZE_OVERHEAD:I = 0x89

.field protected static volatile log:Lorg/apache/ignite/IgniteLogger;

.field protected static final logRef:Ljava/util/concurrent/atomic/AtomicReference;
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
.field protected final cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private extras:Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field protected flags:B
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final hash:I
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field protected final key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private volatile next0:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private volatile next1:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field protected final startVer:J
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field protected val:Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field protected valPtr:J

.field protected ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    .line 66
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicVersionComparator;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicVersionComparator;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ATOMIC_VER_COMPARATOR:Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicVersionComparator;

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;JI)V
    .locals 4
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p3, "hash"    # I
    .param p4, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .param p5, "next"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .param p6, "ttl"    # J
    .param p8, "hdrId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "I",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;",
            "JI)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    const-class v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->logger(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    .line 157
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->prepareForCache(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object p2

    .end local p2    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    check-cast p2, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 159
    .restart local p2    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 161
    :cond_1
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 162
    iput p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hash:I

    .line 163
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 165
    invoke-static {p6, p7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toExpireTime(J)J

    move-result-wide v0

    invoke-virtual {p0, p6, p7, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ttlAndExpireTimeExtras(JJ)V

    .line 167
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v0

    invoke-interface {v0, p4, p1}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->prepareForCache(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object p4

    .line 169
    monitor-enter p0

    .line 170
    :try_start_0
    invoke-virtual {p0, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 171
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-virtual {p0, p8, p5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->next(ILorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;)V

    .line 175
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 177
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->order()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->startVer:J

    .line 178
    return-void

    .line 171
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private attributeDataExtras()Lorg/apache/ignite/internal/util/GridLeanMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/GridLeanMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4228
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->extras:Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->extras:Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;->attributesData()Lorg/apache/ignite/internal/util/GridLeanMap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private attributeDataExtras(Lorg/apache/ignite/internal/util/GridLeanMap;)V
    .locals 1
    .param p1    # Lorg/apache/ignite/internal/util/GridLeanMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/GridLeanMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4235
    .local p1, "attrData":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<Ljava/util/UUID;Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->extras:Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->extras:Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;->attributesData(Lorg/apache/ignite/internal/util/GridLeanMap;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->extras:Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;

    .line 4237
    return-void

    .line 4235
    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesEntryExtras;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesEntryExtras;-><init>(Lorg/apache/ignite/internal/util/GridLeanMap;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkExpired()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 3105
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 3107
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->expireTimeExtras()J

    move-result-wide v2

    .line 3109
    .local v2, "expireTime":J
    cmp-long v4, v2, v8

    if-lez v4, :cond_2

    .line 3110
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 3112
    .local v0, "delta":J
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3113
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Checked expiration time for entry [timeLeft="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", entry="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3115
    :cond_1
    cmp-long v4, v0, v8

    if-gtz v4, :cond_2

    .line 3116
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->releaseSwap()V

    .line 3118
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->saveValueForIndexUnlocked()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->clearIndex(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 3120
    const/4 v4, 0x1

    .line 3124
    .end local v0    # "delta":J
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private currentTx()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    .locals 1

    .prologue
    .line 3619
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDht()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3620
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->localTx()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    .line 3622
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->localTx()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    goto :goto_0
.end method

.method private drReplicate(Lorg/apache/ignite/internal/processors/dr/GridDrType;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 10
    .param p1, "drType"    # Lorg/apache/ignite/internal/processors/dr/GridDrType;
    .param p2, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2300
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDrEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_NONE:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isInternal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2301
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dr()Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->rawTtl()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->rawExpireTime()J

    move-result-wide v6

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->conflictVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    move-object v3, p2

    move-object v9, p1

    invoke-interface/range {v1 .. v9}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;->replicate(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/dr/GridDrType;)V

    .line 2302
    :cond_0
    return-void
.end method

.method private ensureData(I)Z
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 4015
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->attributeDataExtras()Lorg/apache/ignite/internal/util/GridLeanMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4016
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->attributeDataExtras(Lorg/apache/ignite/internal/util/GridLeanMap;)V

    .line 4018
    const/4 v0, 0x1

    .line 4021
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private extrasSize()I
    .locals 1

    .prologue
    .line 4312
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->extras:Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->extras:Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private groupLockSanityCheck(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V
    .locals 4
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2945
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->groupLock()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2947
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v0

    .line 2949
    .local v0, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->groupLockEntry()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2950
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->lockedByAny([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2951
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update cache entry (entry was externally locked while accessing entry within group lock transaction) [entry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2954
    :cond_1
    return-void
.end method

.method private static initialTtlAndExpireTime(Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 6
    .param p0, "expiry"    # Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;",
            ")",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2229
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 2231
    :cond_0
    invoke-interface {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;->forCreate()J

    move-result-wide v2

    .line 2234
    .local v2, "initTtl":J
    const-wide/16 v4, -0x2

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 2235
    const-wide/16 v2, 0x1

    .line 2236
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->expireTimeInPast()J

    move-result-wide v0

    .line 2245
    .local v0, "initExpireTime":J
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v4

    return-object v4

    .line 2238
    .end local v0    # "initExpireTime":J
    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    .line 2239
    const-wide/16 v2, 0x0

    .line 2240
    const-wide/16 v0, 0x0

    .restart local v0    # "initExpireTime":J
    goto :goto_0

    .line 2243
    .end local v0    # "initExpireTime":J
    :cond_2
    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toExpireTime(J)J

    move-result-wide v0

    .restart local v0    # "initExpireTime":J
    goto :goto_0
.end method

.method private innerGet0(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZZZZZZLjava/util/UUID;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 59
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .param p2, "readSwap"    # Z
    .param p3, "readThrough"    # Z
    .param p4, "evt"    # Z
    .param p5, "unmarshal"    # Z
    .param p6, "updateMetrics"    # Z
    .param p7, "tmp"    # Z
    .param p8, "subjId"    # Ljava/util/UUID;
    .param p9, "transformClo"    # Ljava/lang/Object;
    .param p10, "taskName"    # Ljava/lang/String;
    .param p11, "expiryPlc"    # Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 642
    if-eqz p3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->readThrough()Z

    move-result v2

    if-nez v2, :cond_0

    .line 643
    const/16 p3, 0x0

    .line 648
    :cond_0
    const/16 v17, 0x0

    .line 652
    .local v17, "ret":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    const/16 v45, 0x0

    .line 654
    .local v45, "expired":Z
    const/4 v10, 0x0

    .line 658
    .local v10, "expiredVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    monitor-enter p0

    .line 659
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v54, v0

    .line 664
    .local v54, "startVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v52

    .line 666
    .local v52, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-nez v52, :cond_10

    const/4 v6, 0x0

    .line 670
    .local v6, "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->expireTimeExtras()J

    move-result-wide v48

    .line 672
    .local v48, "expireTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v48, v2

    if-lez v2, :cond_2

    .line 673
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v48, v2

    long-to-double v0, v2

    move-wide/from16 v46, v0

    .line 675
    .local v46, "delta":D
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 676
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checked expiration time for entry [timeLeft="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v46

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", entry="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 678
    :cond_1
    const-wide/16 v2, 0x0

    cmpg-double v2, v46, v2

    if-gtz v2, :cond_2

    .line 679
    const/16 v45, 0x1

    .line 682
    .end local v46    # "delta":D
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-object/from16 v56, v0

    .line 684
    .local v56, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valPtr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11

    const/16 v41, 0x1

    .line 686
    .local v41, "hasOldBytes":Z
    :goto_1
    if-nez p5, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isOffHeapValuesOnly()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    if-nez v45, :cond_4

    if-nez v56, :cond_4

    if-eqz v41, :cond_4

    .line 687
    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->rawGetOrUnmarshalUnlocked(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v56

    .line 689
    :cond_4
    if-eqz p1, :cond_12

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v2

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valid(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v57

    .line 692
    .local v57, "valid":Z
    if-nez v56, :cond_6

    if-nez v41, :cond_6

    if-eqz p2, :cond_6

    .line 694
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isNew()Z

    move-result v2

    if-nez v2, :cond_5

    if-nez v57, :cond_6

    .line 697
    :cond_5
    if-eqz v45, :cond_13

    .line 698
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->releaseSwap()V

    .line 701
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->clearIndex(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 728
    :cond_6
    :goto_3
    if-nez v45, :cond_7

    if-nez v57, :cond_16

    :cond_7
    const/16 v19, 0x0

    .line 730
    .local v19, "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :goto_4
    if-eqz v45, :cond_8

    .line 731
    move-object/from16 v10, v56

    .line 733
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 736
    :cond_8
    if-nez v19, :cond_17

    if-nez v41, :cond_17

    .line 737
    if-eqz p6, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 738
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->onRead(Z)V

    .line 748
    :cond_9
    :goto_5
    if-eqz p4, :cond_c

    if-eqz v45, :cond_c

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v2

    const/16 v3, 0x46

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->partition()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    const/16 v7, 0x46

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-nez v10, :cond_a

    if-eqz v41, :cond_19

    :cond_a
    const/4 v11, 0x1

    :goto_6
    const/4 v13, 0x0

    move-object/from16 v5, p1

    move-object/from16 v12, p8

    move-object/from16 v14, p10

    invoke-virtual/range {v2 .. v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->continuousQueries()Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v10}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->onEntryExpired(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 767
    const/16 p4, 0x0

    .line 770
    :cond_c
    if-eqz p4, :cond_e

    if-nez v45, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 771
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->partition()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    const/16 v16, 0x40

    if-eqz v17, :cond_1a

    const/16 v18, 0x1

    :goto_7
    if-nez v41, :cond_d

    if-eqz v19, :cond_1b

    :cond_d
    const/16 v20, 0x1

    :goto_8
    if-eqz p9, :cond_1c

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    :goto_9
    move-object/from16 v14, p1

    move-object v15, v6

    move-object/from16 v21, p8

    move-object/from16 v23, p10

    invoke-virtual/range {v11 .. v23}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const/16 p4, 0x0

    .line 779
    :cond_e
    if-eqz v17, :cond_f

    if-eqz p11, :cond_f

    .line 780
    move-object/from16 v0, p0

    move-object/from16 v1, p11

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->updateTtl(Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)V

    .line 781
    :cond_f
    monitor-exit p0

    .line 783
    if-eqz v17, :cond_1d

    move-object/from16 v53, v17

    .line 847
    .end local v17    # "ret":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .local v53, "ret":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :goto_a
    return-object v53

    .line 666
    .end local v6    # "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v19    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v41    # "hasOldBytes":Z
    .end local v48    # "expireTime":J
    .end local v53    # "ret":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v56    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v57    # "valid":Z
    .restart local v17    # "ret":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_10
    invoke-virtual/range {v52 .. v52}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v6

    goto/16 :goto_0

    .line 684
    .restart local v6    # "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .restart local v48    # "expireTime":J
    .restart local v56    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_11
    const/16 v41, 0x0

    goto/16 :goto_1

    .line 689
    .restart local v41    # "hasOldBytes":Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v2

    goto/16 :goto_2

    .line 705
    .restart local v57    # "valid":Z
    :cond_13
    if-eqz p7, :cond_15

    .line 706
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->unswap(ZZ)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 708
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->rawGetOrUnmarshalUnlocked(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v56

    .line 714
    :goto_b
    const-wide/16 v2, 0x0

    cmp-long v2, v48, v2

    if-lez v2, :cond_6

    .line 715
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v48, v2

    long-to-double v0, v2

    move-wide/from16 v46, v0

    .line 717
    .restart local v46    # "delta":D
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 718
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checked expiration time for entry [timeLeft="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v46

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", entry="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 721
    :cond_14
    const-wide/16 v2, 0x0

    cmpg-double v2, v46, v2

    if-gtz v2, :cond_6

    .line 722
    const/16 v45, 0x1

    goto/16 :goto_3

    .line 711
    .end local v46    # "delta":D
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->unswap()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v56

    goto :goto_b

    :cond_16
    move-object/from16 v19, v56

    .line 728
    goto/16 :goto_4

    .line 741
    .restart local v19    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_17
    if-eqz p6, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->onRead(Z)V

    .line 745
    :cond_18
    move-object/from16 v17, v19

    goto/16 :goto_5

    .line 750
    :cond_19
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 771
    :cond_1a
    const/16 v18, 0x0

    goto/16 :goto_7

    :cond_1b
    const/16 v20, 0x0

    goto/16 :goto_8

    :cond_1c
    const/16 v22, 0x0

    goto/16 :goto_9

    .line 781
    .end local v6    # "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v19    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v41    # "hasOldBytes":Z
    .end local v48    # "expireTime":J
    .end local v52    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .end local v54    # "startVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v56    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v57    # "valid":Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 787
    .restart local v6    # "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .restart local v19    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v41    # "hasOldBytes":Z
    .restart local v48    # "expireTime":J
    .restart local v52    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .restart local v54    # "startVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v56    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v57    # "valid":Z
    :cond_1d
    const/16 v51, 0x0

    .line 789
    .local v51, "loadedFromStore":Z
    if-nez v17, :cond_20

    if-eqz p3, :cond_20

    .line 790
    const/4 v12, 0x0

    .line 792
    .local v12, "tx0":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    if-eqz p1, :cond_1f

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->local()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 793
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isReplicated()Z

    move-result v2

    if-nez v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isColocated()Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->near()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 794
    :cond_1e
    move-object/from16 v12, p1

    .line 802
    :cond_1f
    :goto_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    const/4 v14, 0x0

    move-object/from16 v11, p0

    move-object/from16 v15, p8

    move-object/from16 v16, p10

    invoke-virtual/range {v11 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->readThrough(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ZLjava/util/UUID;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v55

    .line 804
    .local v55, "storeVal":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v55

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v17

    .line 806
    const/16 v51, 0x1

    .line 809
    .end local v12    # "tx0":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .end local v55    # "storeVal":Ljava/lang/Object;
    :cond_20
    monitor-enter p0

    .line 810
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ttlExtras()J

    move-result-wide v30

    .line 813
    .local v30, "ttl":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v0, v54

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 814
    if-eqz v17, :cond_23

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v17

    invoke-interface {v2, v0, v3}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->prepareForCache(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v17

    .line 818
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->nextVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v24

    .line 820
    .local v24, "nextVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->rawGetOrUnmarshalUnlocked(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v25

    .line 822
    .local v25, "prevVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    invoke-static/range {v30 .. v31}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toExpireTime(J)J

    move-result-wide v22

    .line 824
    .local v22, "expTime":J
    if-eqz v51, :cond_21

    move-object/from16 v20, p0

    move-object/from16 v21, v17

    .line 826
    invoke-virtual/range {v20 .. v25}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->updateIndex(Lorg/apache/ignite/internal/processors/cache/CacheObject;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 828
    :cond_21
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valPtr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_26

    const/16 v50, 0x1

    .local v50, "hadValPtr":Z
    :goto_d
    move-object/from16 v26, p0

    move-object/from16 v27, v17

    move-wide/from16 v28, v22

    move-object/from16 v32, v24

    .line 831
    invoke-virtual/range {v26 .. v32}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->update(Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 833
    if-eqz v50, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->offheapTiered()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 834
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->removeOffheap(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Z

    .line 836
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deferredDelete()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isInternal()Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->detached()Z

    move-result v2

    if-nez v2, :cond_23

    .line 837
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked(Z)V

    .line 840
    .end local v22    # "expTime":J
    .end local v24    # "nextVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v25    # "prevVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v50    # "hadValPtr":Z
    :cond_23
    if-eqz p4, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->partition()I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v34, v0

    const/16 v37, 0x40

    if-eqz v17, :cond_27

    const/16 v39, 0x1

    :goto_e
    if-eqz p9, :cond_28

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v43

    :goto_f
    move-object/from16 v35, p1

    move-object/from16 v36, v6

    move-object/from16 v38, v17

    move-object/from16 v40, v19

    move-object/from16 v42, p8

    move-object/from16 v44, p10

    invoke-virtual/range {v32 .. v44}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    :cond_24
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v53, v17

    .line 847
    .end local v17    # "ret":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v53    # "ret":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    goto/16 :goto_a

    .line 795
    .end local v30    # "ttl":J
    .end local v53    # "ret":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v12    # "tx0":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .restart local v17    # "ret":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_25
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->dht()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 796
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->nearXidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v58

    .line 798
    .local v58, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v2

    move-object/from16 v0, v58

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->tx(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v12

    goto/16 :goto_c

    .line 828
    .end local v12    # "tx0":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .end local v58    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v22    # "expTime":J
    .restart local v24    # "nextVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v25    # "prevVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v30    # "ttl":J
    :cond_26
    const/16 v50, 0x0

    goto/16 :goto_d

    .line 841
    .end local v22    # "expTime":J
    .end local v24    # "nextVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v25    # "prevVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_27
    const/16 v39, 0x0

    goto :goto_e

    :cond_28
    const/16 v43, 0x0

    goto :goto_f

    .line 845
    .end local v30    # "ttl":J
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private nextVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 2

    .prologue
    .line 3331
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    return-object v0
.end method

.method private peekDb(Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 4
    .param p1, "failFast"    # Z
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 3087
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isAll(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3088
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->failed(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v0

    .line 3095
    :goto_0
    return-object v0

    .line 3090
    :cond_0
    monitor-enter p0

    .line 3091
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3092
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 3093
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3095
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->localTxx()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->loadFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v0

    goto :goto_0
.end method

.method private peekGlobal(ZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/util/lang/GridTuple;
    .locals 6
    .param p1, "failFast"    # Z
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .param p4, "expiryPlc"    # Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            "Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;",
            ")",
            "Lorg/apache/ignite/internal/util/lang/GridTuple",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;,
            Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3010
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valid(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3047
    :cond_0
    :goto_0
    return-object v3

    .line 3013
    :cond_1
    const/4 v0, 0x0

    .line 3020
    .local v0, "rmv":Z
    :cond_2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3021
    :try_start_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkExpired()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3022
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->markObsolete0(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)Z

    move-result v0

    .line 3024
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3044
    if-eqz v0, :cond_0

    .line 3045
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->onMarkedObsolete()V

    .line 3047
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map()Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    goto :goto_0

    .line 3027
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 3029
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 3030
    .local v2, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->rawGetOrUnmarshalUnlocked(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    .line 3032
    .local v1, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v1, :cond_4

    if-eqz p4, :cond_4

    .line 3033
    invoke-direct {p0, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->updateTtl(Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)V

    .line 3034
    :cond_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3036
    :try_start_3
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4, p0, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isAll(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 3037
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->failed(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridTuple;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    .line 3044
    if-eqz v0, :cond_0

    .line 3045
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->onMarkedObsolete()V

    .line 3047
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map()Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    goto :goto_0

    .line 3034
    .end local v1    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v2    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3044
    :catchall_1
    move-exception v3

    if-eqz v0, :cond_5

    .line 3045
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->onMarkedObsolete()V

    .line 3047
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map()Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    :cond_5
    throw v3

    .line 3039
    .restart local v1    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v2    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_6
    :try_start_6
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmptyOrNulls([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3040
    :cond_7
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridTuple;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v3

    .line 3044
    if-eqz v0, :cond_0

    .line 3045
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->onMarkedObsolete()V

    .line 3047
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map()Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    goto/16 :goto_0
.end method

.method private peekSwap(Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/util/lang/GridTuple;
    .locals 5
    .param p1, "failFast"    # Z
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/util/lang/GridTuple",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 3064
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2, p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isAll(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3065
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->failed(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v1

    .line 3074
    :cond_0
    :goto_0
    return-object v1

    .line 3067
    :cond_1
    monitor-enter p0

    .line 3068
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkExpired()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3069
    monitor-exit p0

    goto :goto_0

    .line 3070
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3072
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v4, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->read(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;ZZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v0

    .line 3074
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v1

    goto :goto_0
.end method

.method private peekTx(Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/util/lang/GridTuple;
    .locals 2
    .param p1, "failFast"    # Z
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .param p3, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ")",
            "Lorg/apache/ignite/internal/util/lang/GridTuple",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 2991
    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-interface {p3, v0, p1, v1, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->peek(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;ZLorg/apache/ignite/internal/processors/cache/KeyCacheObject;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v0

    goto :goto_0
.end method

.method private peekTxThenGlobal(Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/util/lang/GridTuple;
    .locals 3
    .param p1, "failFast"    # Z
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .param p3, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ")",
            "Lorg/apache/ignite/internal/util/lang/GridTuple",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;,
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 2970
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->peekTx(Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v0

    .line 2973
    .local v0, "peek":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    if-eqz v0, :cond_0

    .line 2978
    .end local v0    # "peek":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    :goto_0
    return-object v0

    .line 2976
    .restart local v0    # "peek":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    :cond_0
    if-nez p3, :cond_1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v1

    .line 2978
    .local v1, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :goto_1
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, p2, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->peekGlobal(ZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v0

    goto :goto_0

    .line 2976
    .end local v1    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_1
    invoke-interface {p3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v1

    goto :goto_1
.end method

.method private swap()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    const-wide/16 v4, 0x0

    .line 495
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isSwapOrOffheapEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hasValueUnlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->detached()Z

    move-result v1

    if-nez v1, :cond_1

    .line 496
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 498
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->expireTimeExtras()J

    move-result-wide v8

    .line 500
    .local v8, "expireTime":J
    cmp-long v1, v8, v4

    if-lez v1, :cond_2

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v1, v2, v8

    if-ltz v1, :cond_2

    .line 502
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->offheapTiered()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 503
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->removeOffheap(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Z

    .line 505
    iput-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valPtr:J

    .line 542
    .end local v8    # "expireTime":J
    :cond_1
    :goto_0
    return-void

    .line 511
    .restart local v8    # "expireTime":J
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->offheapTiered()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valPtr:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 512
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 513
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value did not change, skip write swap entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 515
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEvictionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 516
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->enableOffheapEviction(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V

    goto :goto_0

    .line 521
    :cond_4
    const/4 v11, 0x0

    .line 523
    .local v11, "valClsLdrId":Lorg/apache/ignite/lang/IgniteUuid;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v1, :cond_5

    .line 524
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v3

    invoke-interface {v2, v3, v14}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->getClassLoaderId(Ljava/lang/ClassLoader;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v11

    .line 528
    :cond_5
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valueBytes0()Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    .line 530
    .local v0, "valBytes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<[BLjava/lang/Byte;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ttlExtras()J

    move-result-wide v6

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v10

    iget-object v12, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    iget-object v13, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v13

    invoke-interface {v12, v13, v14}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectObjectClassLoader(Ljava/lang/Object;)Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->getClassLoaderId(Ljava/lang/ClassLoader;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v10

    invoke-virtual/range {v1 .. v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->write(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/nio/ByteBuffer;BLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJLorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 539
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 540
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrote swap entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private ttlAndExpireTime(Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;JJ)Lorg/apache/ignite/internal/util/lang/GridTuple3;
    .locals 6
    .param p1, "expiry"    # Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
    .param p2, "ttl"    # J
    .param p4, "expireTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;",
            "JJ)",
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 2258
    const/4 v0, 0x0

    .line 2261
    .local v0, "rmv":Z
    cmp-long v1, p2, v4

    if-nez v1, :cond_0

    .line 2262
    if-eqz p1, :cond_0

    .line 2263
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hasValueUnlocked()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;->forUpdate()J

    move-result-wide p2

    .line 2267
    :cond_0
    :goto_0
    const-wide/16 v2, -0x2

    cmp-long v1, p2, v2

    if-nez v1, :cond_1

    .line 2268
    const/4 v0, 0x1

    .line 2270
    const-wide/16 p2, 0x0

    .line 2274
    :cond_1
    cmp-long v1, p2, v4

    if-nez v1, :cond_2

    .line 2275
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isNew()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2276
    const-wide/16 p2, 0x0

    .line 2284
    :cond_2
    :goto_1
    cmp-long v1, p4, v4

    if-nez v1, :cond_3

    .line 2285
    invoke-static {p2, p3}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toExpireTime(J)J

    move-result-wide p4

    .line 2287
    :cond_3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridTuple3;

    move-result-object v1

    return-object v1

    .line 2263
    :cond_4
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;->forCreate()J

    move-result-wide p2

    goto :goto_0

    .line 2278
    :cond_5
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ttlExtras()J

    move-result-wide p2

    .line 2279
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->expireTimeExtras()J

    move-result-wide p4

    goto :goto_1
.end method

.method private updateMetrics(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Z)V
    .locals 1
    .param p1, "op"    # Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .param p2, "metrics"    # Z

    .prologue
    .line 4275
    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4276
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne p1, v0, :cond_1

    .line 4277
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->onRemove()V

    .line 4281
    :cond_0
    :goto_0
    return-void

    .line 4279
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->onWrite()V

    goto :goto_0
.end method

.method private updateTtl(J)V
    .locals 11
    .param p1, "ttl"    # J

    .prologue
    const-wide/16 v8, -0x2

    const-wide/16 v6, 0x0

    .line 2675
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    cmp-long v4, p1, v6

    if-gez v4, :cond_0

    cmp-long v4, p1, v8

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, p1, p2}, Ljava/lang/AssertionError;-><init>(J)V

    throw v4

    .line 2676
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 2680
    :cond_1
    cmp-long v4, p1, v8

    if-nez v4, :cond_4

    .line 2681
    const-wide/16 p1, 0x1

    .line 2682
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->expireTimeInPast()J

    move-result-wide v0

    .line 2687
    .local v0, "expireTime":J
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->expireTimeExtras()J

    move-result-wide v2

    .line 2689
    .local v2, "oldExpireTime":J
    cmp-long v4, v2, v6

    if-eqz v4, :cond_2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->isEagerTtl()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2690
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ttl()Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->removeTrackedEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;)V

    .line 2692
    :cond_2
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ttlAndExpireTimeExtras(JJ)V

    .line 2694
    cmp-long v4, v0, v6

    if-eqz v4, :cond_3

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->isEagerTtl()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2695
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ttl()Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->addTrackedEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;)V

    .line 2696
    :cond_3
    return-void

    .line 2685
    .end local v0    # "expireTime":J
    .end local v2    # "oldExpireTime":J
    :cond_4
    invoke-static {p1, p2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toExpireTime(J)J

    move-result-wide v0

    .restart local v0    # "expireTime":J
    goto :goto_0
.end method

.method private updateTtl(Ljavax/cache/expiry/ExpiryPolicy;)V
    .locals 4
    .param p1, "expiryPlc"    # Ljavax/cache/expiry/ExpiryPolicy;

    .prologue
    .line 2645
    invoke-interface {p1}, Ljavax/cache/expiry/ExpiryPolicy;->getExpiryForAccess()Ljavax/cache/expiry/Duration;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toTtl(Ljavax/cache/expiry/Duration;)J

    move-result-wide v0

    .line 2647
    .local v0, "ttl":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 2648
    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->updateTtl(J)V

    .line 2649
    :cond_0
    return-void
.end method

.method private updateTtl(Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)V
    .locals 5
    .param p1, "expiryPlc"    # Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 2660
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;->forAccess()J

    move-result-wide v0

    .line 2662
    .local v0, "ttl":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 2663
    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->updateTtl(J)V

    .line 2665
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hasReaders()Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->readers()Ljava/util/Collection;

    move-result-object v2

    :goto_0
    invoke-interface {p1, v3, v4, v2}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;->ttlUpdated(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;)V

    .line 2669
    :cond_0
    return-void

    .line 2665
    .restart local p0    # "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private value(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheObject;Z)Ljava/lang/Object;
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "cacheObj"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "cpy"    # Z
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 2218
    if-eqz p1, :cond_0

    .line 2221
    .end local p1    # "val":Ljava/lang/Object;
    :goto_0
    return-object p1

    .restart local p1    # "val":Ljava/lang/Object;
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v0

    invoke-interface {p2, v0, p3}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    move-object p1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private valueLength0(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/lang/IgniteBiTuple;)I
    .locals 5
    .param p1, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/apache/ignite/lang/IgniteBiTuple;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<[B",
            "Ljava/lang/Byte;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, "valBytes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<[BLjava/lang/Byte;>;"
    const/4 v2, 0x0

    .line 260
    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v1

    invoke-interface {p1, v1, v2}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    move-object v0, v1

    .line 262
    .local v0, "bytes":[B
    :goto_0
    if-eqz v0, :cond_2

    .line 263
    array-length v2, v0

    .line 268
    :cond_0
    :goto_1
    return v2

    .line 260
    .end local v0    # "bytes":[B
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 265
    .restart local v0    # "bytes":[B
    :cond_2
    if-eqz p2, :cond_0

    .line 268
    invoke-virtual {p2}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v3, v1

    invoke-virtual {p2}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    move v1, v2

    :goto_2
    sub-int v2, v3, v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x6

    goto :goto_2
.end method


# virtual methods
.method public addMeta(Ljava/util/UUID;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/UUID;",
            "TV1;)TV1;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4027
    .local p2, "val":Ljava/lang/Object;, "TV1;"
    const-string v0, "name"

    const-string/jumbo v1, "val"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 4029
    monitor-enter p0

    .line 4030
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ensureData(I)Z

    .line 4032
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->attributeDataExtras()Lorg/apache/ignite/internal/util/GridLeanMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/util/GridLeanMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 4033
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public candidate(Ljava/util/UUID;J)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 3478
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3480
    .local v0, "loc":Z
    monitor-enter p0

    .line 3481
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 3483
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v1

    .line 3485
    .local v1, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    monitor-exit p0

    return-object v2

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->localCandidate(J)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->remoteCandidate(Ljava/util/UUID;J)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v2

    goto :goto_0

    .line 3487
    .end local v1    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public declared-synchronized candidate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
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
    .line 3458
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 3460
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3462
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

    .line 3458
    .end local v0    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected checkObsolete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 2709
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2711
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->obsoleteVersionExtras()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2712
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;-><init>()V

    throw v0

    .line 2713
    :cond_1
    return-void
.end method

.method public clear(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 9
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "readers"    # Z
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2329
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v7, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->READ:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)V

    .line 2336
    :goto_0
    const/4 v2, 0x0

    .line 2337
    .local v2, "ret":Z
    const/4 v3, 0x0

    .line 2338
    .local v3, "rmv":Z
    const/4 v1, 0x0

    .line 2341
    .local v1, "marked":Z
    const/4 v4, 0x0

    .line 2343
    .local v4, "startVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmptyOrNulls([Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2344
    monitor-enter p0

    .line 2345
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 2346
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2348
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6, p0, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isAll(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2349
    const/4 v6, 0x0

    .line 2407
    :goto_1
    return v6

    .line 2346
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 2352
    :cond_0
    monitor-enter p0

    .line 2353
    if-eqz v4, :cond_1

    :try_start_2
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v4, v6}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2355
    monitor-exit p0

    goto :goto_0

    .line 2398
    :catchall_1
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 2357
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->saveValueForIndexUnlocked()Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    .line 2360
    .local v5, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :try_start_4
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hasReaders()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz p2, :cond_8

    .line 2362
    :cond_2
    const/4 v6, 0x1

    invoke-virtual {p0, p1, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->markObsolete0(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2363
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2364
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Entry could not be marked obsolete (it is still used): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2366
    :cond_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2401
    :goto_2
    if-eqz v1, :cond_4

    .line 2402
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->onMarkedObsolete()V

    .line 2404
    :cond_4
    if-eqz v3, :cond_5

    .line 2405
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v6

    invoke-virtual {v6, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    :cond_5
    move v6, v2

    .line 2407
    goto :goto_1

    .line 2369
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->clearReaders()V
    :try_end_6
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2387
    :try_start_7
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2388
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Entry has been marked obsolete: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2390
    :cond_7
    invoke-virtual {p0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->clearIndex(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 2392
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->releaseSwap()V

    .line 2394
    const/4 v2, 0x1

    .line 2395
    const/4 v3, 0x1

    .line 2397
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 2372
    :cond_8
    :try_start_8
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2373
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Entry could not be marked obsolete (it still has readers): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2375
    :cond_9
    :try_start_9
    monitor-exit p0

    goto :goto_2

    .line 2378
    :catch_0
    move-exception v0

    .line 2379
    .local v0, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2380
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got removed entry when clearing (will simply return): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2382
    :cond_a
    const/4 v2, 0x1

    .line 2384
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_2
.end method

.method protected clearIndex(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    .locals 5
    .param p1, "prevVal"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 3705
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 3708
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->queries()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    move-result-object v1

    .line 3710
    .local v1, "qryMgr":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<**>;"
    if-eqz v1, :cond_1

    .line 3711
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v3

    if-nez p1, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v3, v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->remove(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3717
    :cond_1
    return-void

    .line 3711
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {p1, v2, v4}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 3714
    .end local v1    # "qryMgr":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<**>;"
    :catch_0
    move-exception v0

    .line 3715
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheIndexUpdateException;

    invoke-direct {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheIndexUpdateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected clearReader(Ljava/util/UUID;)V
    .locals 0
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 2324
    return-void
.end method

.method protected clearReaders()V
    .locals 0

    .prologue
    .line 2317
    return-void
.end method

.method public context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method public deleted()Z
    .locals 1

    .prologue
    .line 4174
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deferredDelete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4175
    const/4 v0, 0x0

    .line 4178
    :goto_0
    return v0

    .line 4177
    :cond_0
    monitor-enter p0

    .line 4178
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked()Z

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 4179
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected deletedUnlocked(Z)V
    .locals 1
    .param p1, "deleted"    # Z

    .prologue
    .line 4205
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4206
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deferredDelete()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4208
    :cond_1
    if-eqz p1, :cond_3

    .line 4209
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4211
    :cond_2
    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->flags:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->flags:B

    .line 4213
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->decrementPublicSize(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;)V

    .line 4222
    :goto_0
    return-void

    .line 4216
    :cond_3
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4218
    :cond_4
    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->flags:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->flags:B

    .line 4220
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->incrementPublicSize(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;)V

    goto :goto_0
.end method

.method protected deletedUnlocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4193
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4195
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deferredDelete()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4198
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-byte v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->flags:B

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public detached()Z
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 4318
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public evictInBatchInternal(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;
    .locals 20
    .param p1, "obsoleteVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 3920
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-static/range {p0 .. p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 3921
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isSwapOrOffheapEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 3923
    :cond_1
    const/4 v15, 0x0

    .line 3926
    .local v15, "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hasReaders()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->markObsolete0(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3927
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isStartVersion()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hasValueUnlocked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3928
    const/4 v13, 0x0

    .line 3930
    .local v13, "valClsLdrId":Lorg/apache/ignite/lang/IgniteUuid;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v3, :cond_2

    .line 3931
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectObjectClassLoader(Ljava/lang/Object;)Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->getClassLoaderId(Ljava/lang/ClassLoader;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v13

    .line 3934
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valueBytes0()Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v16

    .line 3936
    .local v16, "valBytes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<[BLjava/lang/Byte;>;"
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->partition()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ttlExtras()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->expireTimeExtras()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectObjectClassLoader(Ljava/lang/Object;)Ljava/lang/ClassLoader;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->getClassLoaderId(Ljava/lang/ClassLoader;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v12

    invoke-direct/range {v2 .. v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILjava/nio/ByteBuffer;BLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJLorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3947
    .end local v13    # "valClsLdrId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v15    # "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;
    .end local v16    # "valBytes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<[BLjava/lang/Byte;>;"
    .local v2, "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;
    :goto_0
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3955
    :cond_3
    :goto_1
    return-object v2

    .line 3950
    .end local v2    # "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;
    .restart local v15    # "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;
    :catch_0
    move-exception v14

    move-object v2, v15

    .line 3951
    .end local v15    # "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;
    .restart local v2    # "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;
    .local v14, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :goto_2
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3952
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got removed entry when evicting (will simply return): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 3950
    .end local v14    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :catch_1
    move-exception v14

    goto :goto_2

    .end local v2    # "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;
    .restart local v15    # "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;
    :cond_4
    move-object v2, v15

    .end local v15    # "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;
    .restart local v2    # "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;
    goto :goto_0

    .end local v2    # "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;
    .restart local v15    # "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;
    :cond_5
    move-object v2, v15

    .end local v15    # "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;
    .restart local v2    # "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;
    goto :goto_1
.end method

.method public evictInternal(ZLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 10
    .param p1, "swap"    # Z
    .param p2, "obsoleteVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3825
    const/4 v2, 0x0

    .line 3828
    .local v2, "marked":Z
    :try_start_0
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmptyOrNulls([Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3829
    monitor-enter p0
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3830
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->saveValueForIndexUnlocked()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v3

    .line 3832
    .local v3, "prev":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hasReaders()Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v8, 0x0

    invoke-virtual {p0, p2, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->markObsolete0(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3833
    if-eqz p1, :cond_3

    .line 3834
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isStartVersion()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 3837
    :try_start_2
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->swap()V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3848
    :cond_0
    :goto_0
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {p0, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 3850
    const/4 v2, 0x1

    .line 3852
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3910
    if-eqz v2, :cond_1

    .line 3911
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->onMarkedObsolete()V

    .line 3914
    .end local v3    # "prev":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_1
    :goto_1
    return v6

    .line 3839
    .restart local v3    # "prev":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catch_0
    move-exception v0

    .line 3840
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_4
    sget-object v7, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to write entry to swap storage: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3854
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v3    # "prev":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v7
    :try_end_5
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3903
    :catch_1
    move-exception v1

    .line 3904
    .local v1, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :try_start_6
    sget-object v7, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3905
    sget-object v7, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got removed entry when evicting (will simply return): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3910
    :cond_2
    if-eqz v2, :cond_1

    .line 3911
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->onMarkedObsolete()V

    goto :goto_1

    .line 3845
    .end local v1    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .restart local v3    # "prev":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_3
    :try_start_7
    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->clearIndex(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    goto :goto_0

    .line 3854
    :cond_4
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3910
    if-eqz v2, :cond_5

    .line 3911
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->onMarkedObsolete()V

    :cond_5
    move v6, v7

    .line 3914
    goto :goto_1

    .line 3868
    .end local v3    # "prev":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .local v5, "v":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_6
    :try_start_8
    monitor-enter p0
    :try_end_8
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 3869
    :try_start_9
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v5, v8}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 3871
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 3861
    .end local v5    # "v":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_7
    :try_start_a
    monitor-enter p0
    :try_end_a
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 3862
    :try_start_b
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 3863
    .restart local v5    # "v":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 3865
    :try_start_c
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8, p0, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isAll(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    :try_end_c
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result v8

    if-nez v8, :cond_6

    .line 3910
    if-eqz v2, :cond_8

    .line 3911
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->onMarkedObsolete()V

    :cond_8
    move v6, v7

    goto :goto_1

    .line 3863
    .end local v5    # "v":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :catchall_1
    move-exception v7

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v7
    :try_end_e
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 3910
    :catchall_2
    move-exception v6

    if-eqz v2, :cond_9

    .line 3911
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->onMarkedObsolete()V

    :cond_9
    throw v6

    .line 3873
    .restart local v5    # "v":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_a
    :try_start_f
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->saveValueForIndexUnlocked()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v4

    .line 3875
    .local v4, "prevVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hasReaders()Z

    move-result v8

    if-nez v8, :cond_d

    const/4 v8, 0x0

    invoke-virtual {p0, p2, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->markObsolete0(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 3876
    if-eqz p1, :cond_c

    .line 3877
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isStartVersion()Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    move-result v7

    if-nez v7, :cond_b

    .line 3880
    :try_start_10
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->swap()V
    :try_end_10
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 3891
    :cond_b
    :goto_2
    const/4 v7, 0x0

    :try_start_11
    invoke-virtual {p0, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 3893
    const/4 v2, 0x1

    .line 3895
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 3910
    if-eqz v2, :cond_1

    .line 3911
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->onMarkedObsolete()V

    goto/16 :goto_1

    .line 3882
    :catch_2
    move-exception v0

    .line 3883
    .restart local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_12
    sget-object v7, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to write entry to swap storage: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 3899
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v4    # "prevVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catchall_3
    move-exception v7

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :try_start_13
    throw v7
    :try_end_13
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 3888
    .restart local v4    # "prevVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_c
    :try_start_14
    invoke-virtual {p0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->clearIndex(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    goto :goto_2

    .line 3898
    :cond_d
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 3910
    if-eqz v2, :cond_e

    .line 3911
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->onMarkedObsolete()V

    :cond_e
    move v6, v7

    goto/16 :goto_1
.end method

.method public expireTime()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 3580
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->currentTx()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    move-result-object v2

    .line 3582
    .local v2, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    if-eqz v2, :cond_0

    .line 3583
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->entryExpireTime(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)J

    move-result-wide v0

    .line 3585
    .local v0, "time":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 3592
    .end local v0    # "time":J
    :goto_0
    return-wide v0

    .line 3589
    :cond_0
    monitor-enter p0

    .line 3590
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 3592
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->expireTimeExtras()J

    move-result-wide v0

    monitor-exit p0

    goto :goto_0

    .line 3593
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public expireTimeExtras()J
    .locals 2

    .prologue
    .line 4294
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->extras:Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->extras:Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;->expireTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public expireTimeUnlocked()J
    .locals 2

    .prologue
    .line 3506
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3508
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->expireTimeExtras()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized hasLockCandidate(J)Z
    .locals 3
    .param p1, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 3345
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 3347
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v0

    .line 3349
    .local v0, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->localCandidate(J)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3345
    .end local v0    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized hasLockCandidate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 2
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 3336
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 3338
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v0

    .line 3340
    .local v0, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->hasCandidate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3336
    .end local v0    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized hasLockCandidateUnsafe(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 2
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 3435
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v0

    .line 3437
    .local v0, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->hasCandidate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3435
    .end local v0    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public hasMeta(Ljava/util/UUID;)Z
    .locals 1
    .param p1, "name"    # Ljava/util/UUID;

    .prologue
    .line 4096
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->meta(Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasReaders()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 2309
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized hasValue()Z
    .locals 1

    .prologue
    .line 3166
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hasValueUnlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected hasValueUnlocked()Z
    .locals 4

    .prologue
    .line 3173
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3175
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hash()I
    .locals 1

    .prologue
    .line 2738
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hash:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 4323
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hash:I

    return v0
.end method

.method public info()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 387
    const/4 v3, 0x0

    .line 389
    .local v3, "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v6

    .line 391
    .local v6, "time":J
    monitor-enter p0

    .line 392
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->obsolete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 393
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;

    invoke-direct {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    .end local v3    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .local v4, "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    :try_start_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V

    .line 396
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->cacheId(I)V

    .line 398
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->expireTimeExtras()J

    move-result-wide v0

    .line 400
    .local v0, "expireTime":J
    const-wide/16 v8, 0x0

    cmp-long v5, v0, v8

    if-eqz v5, :cond_2

    cmp-long v5, v0, v6

    if-gtz v5, :cond_2

    const/4 v2, 0x1

    .line 402
    .local v2, "expired":Z
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ttlExtras()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->ttl(J)V

    .line 403
    invoke-virtual {v4, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->expireTime(J)V

    .line 404
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->version(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 405
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isStartVersion()Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->setNew(Z)V

    .line 406
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked()Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->setDeleted(Z)V

    .line 408
    if-nez v2, :cond_0

    .line 409
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valueBytesUnlocked()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    move-object v3, v4

    .line 411
    .end local v0    # "expireTime":J
    .end local v2    # "expired":Z
    .end local v4    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .restart local v3    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    :cond_1
    :try_start_2
    monitor-exit p0

    .line 413
    return-object v3

    .line 400
    .end local v3    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .restart local v0    # "expireTime":J
    .restart local v4    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 411
    .end local v0    # "expireTime":J
    .end local v4    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .restart local v3    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    :catchall_0
    move-exception v5

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .end local v3    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .restart local v4    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .restart local v3    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    goto :goto_1
.end method

.method public initialValue(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/dr/GridDrType;)Z
    .locals 13
    .param p1, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p3, "ttl"    # J
    .param p5, "expireTime"    # J
    .param p7, "preload"    # Z
    .param p8, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p9, "drType"    # Lorg/apache/ignite/internal/processors/dr/GridDrType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 3198
    monitor-enter p0

    .line 3199
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 3201
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isNew()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p7, :cond_a

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3202
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-gez v2, :cond_2

    invoke-static/range {p3 .. p4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toExpireTime(J)J

    move-result-wide v4

    .line 3204
    .local v4, "expTime":J
    :goto_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {v2, p1, v3}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->prepareForCache(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object p1

    .line 3206
    if-eqz p1, :cond_1

    .line 3207
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->updateIndex(Lorg/apache/ignite/internal/processors/cache/CacheObject;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v6, p3

    move-object v8, p2

    .line 3210
    invoke-virtual/range {v2 .. v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->update(Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 3212
    const/4 v12, 0x0

    .line 3214
    .local v12, "skipQryNtf":Z
    if-nez p1, :cond_9

    .line 3215
    const/4 v12, 0x1

    .line 3217
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deferredDelete()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isInternal()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3218
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 3244
    .end local v4    # "expTime":J
    .end local v12    # "skipQryNtf":Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    move-wide/from16 v4, p5

    .line 3202
    goto :goto_0

    .line 3220
    .restart local v4    # "expTime":J
    .restart local v12    # "skipQryNtf":Z
    :cond_3
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked(Z)V

    .line 3226
    :cond_4
    :goto_1
    move-object/from16 v0, p9

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->drReplicate(Lorg/apache/ignite/internal/processors/dr/GridDrType;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 3228
    if-nez v12, :cond_7

    .line 3229
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isReplicated()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v0, p8

    invoke-virtual {v2, v3, v6, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3230
    :cond_5
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->continuousQueries()Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    move-result-object v6

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    const/4 v10, 0x0

    move-object v7, p0

    move-object v9, p1

    move/from16 v11, p7

    invoke-virtual/range {v6 .. v11}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->onEntryUpdated(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;Z)V

    .line 3232
    :cond_6
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dataStructures()Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->onEntryUpdated(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Z)V

    .line 3235
    :cond_7
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->isLocalStore()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3236
    if-eqz p1, :cond_8

    .line 3237
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->keyValue(Z)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v3, v6, v7, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->putToStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    .line 3240
    :cond_8
    const/4 v2, 0x1

    monitor-exit p0

    .line 3243
    .end local v4    # "expTime":J
    .end local v12    # "skipQryNtf":Z
    :goto_2
    return v2

    .line 3223
    .restart local v4    # "expTime":J
    .restart local v12    # "skipQryNtf":Z
    :cond_9
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3224
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked(Z)V

    goto :goto_1

    .line 3243
    .end local v4    # "expTime":J
    .end local v12    # "skipQryNtf":Z
    :cond_a
    const/4 v2, 0x0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized initialValue(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)Z
    .locals 7
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "unswapped"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 3251
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 3253
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isNew()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3254
    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    .line 3256
    .local v1, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->prepareForCache(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    .line 3259
    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->expireTime()J

    move-result-wide v2

    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->ttl()J

    move-result-wide v4

    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->update(Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3265
    const/4 v0, 0x1

    .line 3268
    .end local v1    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final innerGet(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZZZZZZZLjava/util/UUID;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 12
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "readSwap"    # Z
    .param p3, "readThrough"    # Z
    .param p4, "failFast"    # Z
    .param p5, "unmarshal"    # Z
    .param p6, "updateMetrics"    # Z
    .param p7, "evt"    # Z
    .param p8, "tmp"    # Z
    .param p9, "subjId"    # Ljava/util/UUID;
    .param p10, "transformClo"    # Ljava/lang/Object;
    .param p11, "taskName"    # Ljava/lang/String;
    .param p12, "expirePlc"    # Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 612
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->LOCAL:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p7

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    .line 614
    invoke-direct/range {v0 .. v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->innerGet0(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZZZZZZLjava/util/UUID;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v0

    return-object v0
.end method

.method public final innerReload()Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 854
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->READ:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)V

    .line 856
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->checkStore(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 862
    monitor-enter p0

    .line 863
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v22, v0

    .line 868
    .local v22, "startVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isNew()Z

    move-result v24

    .line 869
    .local v24, "wasNew":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->currentTaskName()Ljava/lang/String;

    move-result-object v7

    .line 874
    .local v7, "taskName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v6

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->readThrough(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ZLjava/util/UUID;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v9

    .line 876
    .local v9, "ret":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    const/16 v23, 0x0

    .line 879
    .local v23, "touch":Z
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 880
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ttlExtras()J

    move-result-wide v18

    .line 883
    .local v18, "ttl":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->nextForLoad(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v12

    .line 886
    .local v12, "nextVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-eqz v24, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isNew()Z

    move-result v2

    if-nez v2, :cond_1

    .line 888
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 929
    if-eqz v23, :cond_0

    .line 930
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    :cond_0
    move-object/from16 v21, v9

    .end local v9    # "ret":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .local v21, "ret":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :goto_0
    return-object v21

    .line 869
    .end local v7    # "taskName":Ljava/lang/String;
    .end local v12    # "nextVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v18    # "ttl":J
    .end local v21    # "ret":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v22    # "startVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v23    # "touch":Z
    .end local v24    # "wasNew":Z
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 891
    .restart local v7    # "taskName":Ljava/lang/String;
    .restart local v9    # "ret":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v12    # "nextVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v18    # "ttl":J
    .restart local v22    # "startVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v23    # "touch":Z
    .restart local v24    # "wasNew":Z
    :cond_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 892
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->releaseSwap()V

    .line 894
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->rawGetOrUnmarshalUnlocked(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v13

    .line 896
    .local v13, "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    invoke-static/range {v18 .. v19}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toExpireTime(J)J

    move-result-wide v10

    .line 899
    .local v10, "expTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {v2, v9, v3}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->prepareForCache(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v9

    .line 902
    if-eqz v9, :cond_4

    move-object/from16 v8, p0

    .line 903
    invoke-virtual/range {v8 .. v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->updateIndex(Lorg/apache/ignite/internal/processors/cache/CacheObject;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 905
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deferredDelete()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isInternal()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->detached()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 906
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked(Z)V

    :cond_2
    :goto_1
    move-object/from16 v14, p0

    move-object v15, v9

    move-wide/from16 v16, v10

    move-object/from16 v20, v12

    .line 915
    invoke-virtual/range {v14 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->update(Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 917
    const/16 v23, 0x1

    .line 920
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 929
    if-eqz v23, :cond_3

    .line 930
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    :cond_3
    move-object/from16 v21, v9

    .end local v9    # "ret":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v21    # "ret":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    goto/16 :goto_0

    .line 909
    .end local v21    # "ret":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v9    # "ret":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->clearIndex(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 911
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deferredDelete()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isInternal()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->detached()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked()Z

    move-result v2

    if-nez v2, :cond_2

    .line 912
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked(Z)V

    goto :goto_1

    .line 922
    .end local v10    # "expTime":J
    .end local v12    # "nextVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v13    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v18    # "ttl":J
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 929
    :catchall_2
    move-exception v2

    if-eqz v23, :cond_5

    .line 930
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    :cond_5
    throw v2

    .line 922
    .restart local v12    # "nextVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v18    # "ttl":J
    :cond_6
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 924
    const/16 v23, 0x1

    .line 929
    if-eqz v23, :cond_7

    .line 930
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    :cond_7
    move-object/from16 v21, v9

    .end local v9    # "ret":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v21    # "ret":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    goto/16 :goto_0
.end method

.method public final innerRemove(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/UUID;Ljava/util/UUID;ZZZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/dr/GridDrType;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/UUID;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;
    .locals 32
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "evtNodeId"    # Ljava/util/UUID;
    .param p3, "affNodeId"    # Ljava/util/UUID;
    .param p4, "writeThrough"    # Z
    .param p5, "retval"    # Z
    .param p6, "evt"    # Z
    .param p7, "metrics"    # Z
    .param p8, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p9, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .param p10, "drType"    # Lorg/apache/ignite/internal/processors/dr/GridDrType;
    .param p11, "explicitVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13, "taskName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 1119
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->transactional()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1125
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v4

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valid(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v31

    .line 1128
    .local v31, "valid":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-virtual {v4, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isAll(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1129
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;-><init>(ZLorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 1287
    :goto_1
    return-object v4

    .end local v31    # "valid":Z
    :cond_1
    move-object/from16 v4, p8

    .line 1125
    goto :goto_0

    .line 1131
    .restart local v31    # "valid":Z
    :cond_2
    const/16 v26, 0x0

    .line 1133
    .local v26, "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v4

    if-eqz v4, :cond_6

    const/16 v22, 0x1

    .line 1135
    .local v22, "intercept":Z
    :goto_2
    const/16 v23, 0x0

    .line 1137
    .local v23, "interceptRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    const/16 v19, 0x0

    .line 1139
    .local v19, "entry0":Ljavax/cache/Cache$Entry;
    monitor-enter p0

    .line 1140
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 1142
    if-eqz p1, :cond_7

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->groupLock()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isCacheSanityCheckEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1143
    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->groupLockSanityCheck(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 1148
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isStartVersion()Z

    move-result v30

    .line 1150
    .local v30, "startVer":Z
    if-eqz v30, :cond_4

    .line 1152
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->releaseSwap()V

    .line 1155
    :cond_4
    if-eqz p11, :cond_9

    move-object/from16 v10, p11

    .line 1157
    .local v10, "newVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :goto_3
    if-nez p5, :cond_5

    if-eqz v22, :cond_c

    :cond_5
    if-nez p5, :cond_b

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->rawGetOrUnmarshalUnlocked(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v27

    .line 1159
    .local v27, "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :goto_5
    if-eqz v22, :cond_e

    .line 1160
    new-instance v20, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-direct {v0, v4, v5, v1}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1162
    .end local v19    # "entry0":Ljavax/cache/Cache$Entry;
    .local v20, "entry0":Ljavax/cache/Cache$Entry;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Lorg/apache/ignite/cache/CacheInterceptor;->onBeforeRemove(Ljavax/cache/Cache$Entry;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v23

    .line 1164
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cancelRemove(Lorg/apache/ignite/lang/IgniteBiTuple;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1165
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v28

    .line 1167
    .local v28, "ret":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-direct {v4, v5, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;-><init>(ZLorg/apache/ignite/internal/processors/cache/CacheObject;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 1239
    .end local v28    # "ret":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catchall_0
    move-exception v4

    move-object/from16 v19, v20

    .end local v10    # "newVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v20    # "entry0":Ljavax/cache/Cache$Entry;
    .end local v27    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v30    # "startVer":Z
    .restart local v19    # "entry0":Ljavax/cache/Cache$Entry;
    :goto_6
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 1133
    .end local v19    # "entry0":Ljavax/cache/Cache$Entry;
    .end local v22    # "intercept":Z
    .end local v23    # "interceptRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    :cond_6
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 1146
    .restart local v19    # "entry0":Ljavax/cache/Cache$Entry;
    .restart local v22    # "intercept":Z
    .restart local v23    # "interceptRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    :cond_7
    :try_start_3
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    if-eqz p1, :cond_3

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->local()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->onePhaseCommit()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_8
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->ownsLock(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transaction does not own lock for remove[entry="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 1239
    :catchall_1
    move-exception v4

    goto :goto_6

    .line 1155
    .restart local v30    # "startVer":Z
    :cond_9
    if-nez p1, :cond_a

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->nextVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v10

    goto/16 :goto_3

    :cond_a
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->writeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v10

    goto/16 :goto_3

    .line 1157
    .restart local v10    # "newVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-object/from16 v27, v0

    goto/16 :goto_5

    .end local v19    # "entry0":Ljavax/cache/Cache$Entry;
    .restart local v20    # "entry0":Ljavax/cache/Cache$Entry;
    .restart local v27    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_d
    move-object/from16 v19, v20

    .line 1171
    .end local v20    # "entry0":Ljavax/cache/Cache$Entry;
    .restart local v19    # "entry0":Ljavax/cache/Cache$Entry;
    :cond_e
    if-nez v27, :cond_f

    .line 1172
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->saveValueForIndexUnlocked()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v27

    .line 1176
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->clearIndex(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 1178
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valPtr:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_10

    const/16 v21, 0x1

    .line 1180
    .local v21, "hadValPtr":Z
    :goto_7
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->update(Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 1182
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->offheapTiered()Z

    move-result v4

    if-eqz v4, :cond_11

    if-eqz v21, :cond_11

    .line 1183
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->removeOffheap(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Z

    move-result v29

    .line 1185
    .local v29, "rmv":Z
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v4, :cond_11

    if-nez v29, :cond_11

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1178
    .end local v21    # "hadValPtr":Z
    .end local v29    # "rmv":Z
    :cond_10
    const/16 v21, 0x0

    goto :goto_7

    .line 1188
    .restart local v21    # "hadValPtr":Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deferredDelete()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->detached()Z

    move-result v4

    if-nez v4, :cond_13

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isInternal()Z

    move-result v4

    if-nez v4, :cond_13

    .line 1189
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked()Z

    move-result v4

    if-nez v4, :cond_13

    .line 1190
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked(Z)V

    .line 1192
    if-eqz p1, :cond_13

    .line 1193
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v25

    .line 1195
    .local v25, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-eqz v25, :cond_12

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    const/4 v5, 0x0

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1196
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->clearReaders()V

    .line 1203
    .end local v25    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :cond_13
    :goto_8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p10

    invoke-direct {v0, v1, v4, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->drReplicate(Lorg/apache/ignite/internal/processors/dr/GridDrType;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 1205
    if-eqz p7, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1206
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->onRemove()V

    .line 1208
    :cond_14
    if-nez p1, :cond_20

    .line 1209
    move-object/from16 v26, v10

    .line 1218
    :cond_15
    :goto_9
    if-eqz p6, :cond_17

    if-eqz v10, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v4

    const/16 v5, 0x41

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1219
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 1221
    .local v14, "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->partition()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    if-nez p1, :cond_23

    const/4 v9, 0x0

    :goto_a
    const/16 v11, 0x41

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-nez v14, :cond_16

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hasValueUnlocked()Z

    move-result v4

    if-eqz v4, :cond_24

    :cond_16
    const/4 v15, 0x1

    :goto_b
    const/16 v17, 0x0

    move-object/from16 v8, p2

    move-object/from16 v16, p12

    move-object/from16 v18, p13

    invoke-virtual/range {v5 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    .end local v14    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v4

    if-nez v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isReplicated()Z

    move-result v4

    if-nez v4, :cond_18

    if-eqz p1, :cond_19

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->local()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isNear()Z

    move-result v4

    if-nez v4, :cond_19

    .line 1236
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->continuousQueries()Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v8, v27

    invoke-virtual/range {v4 .. v9}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->onEntryUpdated(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;Z)V

    .line 1238
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dataStructures()Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->onEntryUpdated(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Z)V

    .line 1239
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1243
    if-eqz p4, :cond_1a

    .line 1244
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->keyValue(Z)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->removeFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Object;)Z

    .line 1246
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deferredDelete()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 1247
    const/16 v24, 0x0

    .line 1249
    .local v24, "marked":Z
    monitor-enter p0

    .line 1251
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    if-ne v10, v4, :cond_1c

    .line 1252
    if-eqz v26, :cond_1b

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->markObsolete0(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)Z

    move-result v24

    if-nez v24, :cond_25

    .line 1253
    :cond_1b
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1254
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Entry could not be marked obsolete (it is still used): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1267
    :cond_1c
    :goto_c
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1269
    if-eqz v24, :cond_1d

    .line 1270
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->onMarkedObsolete()V

    .line 1273
    .end local v24    # "marked":Z
    :cond_1d
    if-eqz v22, :cond_1e

    .line 1274
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-interface {v4, v0}, Lorg/apache/ignite/cache/CacheInterceptor;->onAfterRemove(Ljavax/cache/Cache$Entry;)V

    .line 1276
    :cond_1e
    if-eqz v31, :cond_27

    .line 1279
    if-eqz v23, :cond_26

    .line 1280
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v28

    .line 1284
    .restart local v28    # "ret":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :goto_d
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;

    const/4 v5, 0x1

    move-object/from16 v0, v28

    invoke-direct {v4, v5, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;-><init>(ZLorg/apache/ignite/internal/processors/cache/CacheObject;)V

    goto/16 :goto_1

    .line 1198
    .end local v28    # "ret":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v25    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :cond_1f
    :try_start_5
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->originatingNodeId()Ljava/util/UUID;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->clearReader(Ljava/util/UUID;)V

    goto/16 :goto_8

    .line 1212
    .end local v25    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :cond_20
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->groupLock()Z

    move-result v4

    if-nez v4, :cond_21

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->lockedBy(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1213
    :cond_21
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v26

    goto/16 :goto_9

    .line 1214
    :cond_22
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1215
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Obsolete version was not set because lock was explicit: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1221
    .restart local v14    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_23
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xid()Lorg/apache/ignite/lang/IgniteUuid;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v9

    goto/16 :goto_a

    :cond_24
    const/4 v15, 0x0

    goto/16 :goto_b

    .line 1257
    .end local v14    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v24    # "marked":Z
    :cond_25
    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->recordNodeId(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 1261
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v26

    invoke-virtual {v4, v5, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->addRemoved(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    .line 1263
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1264
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Entry was marked obsolete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1267
    :catchall_2
    move-exception v4

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v4

    .line 1282
    .end local v24    # "marked":Z
    :cond_26
    move-object/from16 v28, v27

    .restart local v28    # "ret":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    goto/16 :goto_d

    .line 1287
    .end local v28    # "ret":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_27
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;-><init>(ZLorg/apache/ignite/internal/processors/cache/CacheObject;)V

    goto/16 :goto_1
.end method

.method public final innerSet(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZJZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/dr/GridDrType;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/UUID;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;
    .locals 31
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "evtNodeId"    # Ljava/util/UUID;
    .param p3, "affNodeId"    # Ljava/util/UUID;
    .param p4, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .param p5, "writeThrough"    # Z
    .param p6, "retval"    # Z
    .param p7, "ttl"    # J
    .param p9, "evt"    # Z
    .param p10, "metrics"    # Z
    .param p11, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p12, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .param p13, "drType"    # Lorg/apache/ignite/internal/processors/dr/GridDrType;
    .param p14, "drExpireTime"    # J
    .param p16, "explicitVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18, "taskName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 962
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v4

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valid(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v30

    .line 965
    .local v30, "valid":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    move-object/from16 v1, p12

    invoke-virtual {v4, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isAll(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 966
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;

    const/4 v5, 0x0

    const/4 v10, 0x0

    invoke-direct {v4, v5, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;-><init>(ZLorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 1091
    :goto_1
    return-object v4

    .end local v30    # "valid":Z
    :cond_0
    move-object/from16 v4, p11

    .line 962
    goto :goto_0

    .line 970
    .restart local v30    # "valid":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v4

    if-eqz v4, :cond_4

    const/16 v25, 0x1

    .line 972
    .local v25, "intercept":Z
    :goto_2
    const/16 v27, 0x0

    .line 973
    .local v27, "key0":Ljava/lang/Object;
    const/16 v29, 0x0

    .line 975
    .local v29, "val0":Ljava/lang/Object;
    monitor-enter p0

    .line 976
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 978
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isCacheSanityCheckEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 979
    if-eqz p1, :cond_5

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->groupLock()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 980
    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->groupLockSanityCheck(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 987
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isStartVersion()Z

    move-result v28

    .line 989
    .local v28, "startVer":Z
    if-eqz v28, :cond_3

    .line 990
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v4, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->unswap(ZZ)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 992
    :cond_3
    if-eqz p16, :cond_7

    move-object/from16 v8, p16

    .line 995
    .local v8, "newVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :goto_3
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v4, :cond_9

    if-nez v8, :cond_9

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to get write version for tx: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 1078
    .end local v8    # "newVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v27    # "key0":Ljava/lang/Object;
    .end local v28    # "startVer":Z
    .end local v29    # "val0":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 970
    .end local v25    # "intercept":Z
    :cond_4
    const/16 v25, 0x0

    goto :goto_2

    .line 983
    .restart local v25    # "intercept":Z
    .restart local v27    # "key0":Ljava/lang/Object;
    .restart local v29    # "val0":Ljava/lang/Object;
    :cond_5
    :try_start_1
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->local()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->onePhaseCommit()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->ownsLock(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Transaction does not own lock for update [entry="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", tx="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v10, 0x5d

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 992
    .restart local v28    # "startVer":Z
    :cond_7
    if-nez p1, :cond_8

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->nextVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    goto :goto_3

    :cond_8
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->writeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    goto :goto_3

    .line 997
    .restart local v8    # "newVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_9
    if-nez p6, :cond_a

    if-eqz v25, :cond_c

    :cond_a
    if-nez p6, :cond_b

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->rawGetOrUnmarshalUnlocked(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v9

    .line 999
    .local v9, "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :goto_5
    if-eqz v25, :cond_f

    .line 1000
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v29

    .line 1002
    new-instance v24, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v5, v9}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 1004
    .local v24, "e":Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v4

    new-instance v5, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-direct {v5, v10, v11, v9}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    move-object/from16 v0, v29

    invoke-interface {v4, v5, v0}, Lorg/apache/ignite/cache/CacheInterceptor;->onBeforePut(Ljavax/cache/Cache$Entry;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .line 1007
    .local v26, "interceptorVal":Ljava/lang/Object;
    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;->key()Ljava/lang/Object;

    move-result-object v27

    .line 1009
    if-nez v26, :cond_d

    .line 1010
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    invoke-direct {v5, v10, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;-><init>(ZLorg/apache/ignite/internal/processors/cache/CacheObject;)V

    monitor-exit p0

    move-object v4, v5

    goto/16 :goto_1

    .line 997
    .end local v9    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v24    # "e":Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;
    .end local v26    # "interceptorVal":Ljava/lang/Object;
    :cond_b
    const/4 v4, 0x0

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    goto :goto_5

    .line 1011
    .restart local v9    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v24    # "e":Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;
    .restart local v26    # "interceptorVal":Ljava/lang/Object;
    :cond_d
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_e

    .line 1012
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    .line 1014
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object p4

    .line 1020
    .end local v24    # "e":Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;
    .end local v26    # "interceptorVal":Ljava/lang/Object;
    .end local v27    # "key0":Ljava/lang/Object;
    .end local v29    # "val0":Ljava/lang/Object;
    :cond_f
    const-wide/16 v4, 0x0

    cmp-long v4, p14, v4

    if-ltz v4, :cond_11

    .line 1021
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v4, :cond_10

    const-wide/16 v4, 0x0

    cmp-long v4, p7, v4

    if-gez v4, :cond_10

    new-instance v4, Ljava/lang/AssertionError;

    move-wide/from16 v0, p7

    invoke-direct {v4, v0, v1}, Ljava/lang/AssertionError;-><init>(J)V

    throw v4

    .line 1023
    :cond_10
    move-wide/from16 v6, p14

    .line 1034
    .local v6, "expireTime":J
    :goto_6
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v4, :cond_13

    const-wide/16 v4, 0x0

    cmp-long v4, p7, v4

    if-gez v4, :cond_13

    new-instance v4, Ljava/lang/AssertionError;

    move-wide/from16 v0, p7

    invoke-direct {v4, v0, v1}, Ljava/lang/AssertionError;-><init>(J)V

    throw v4

    .line 1026
    .end local v6    # "expireTime":J
    :cond_11
    const-wide/16 v4, -0x1

    cmp-long v4, p7, v4

    if-nez v4, :cond_12

    .line 1027
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ttlExtras()J

    move-result-wide p7

    .line 1028
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->expireTimeExtras()J

    move-result-wide v6

    .restart local v6    # "expireTime":J
    goto :goto_6

    .line 1031
    .end local v6    # "expireTime":J
    :cond_12
    invoke-static/range {p7 .. p8}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toExpireTime(J)J

    move-result-wide v6

    .restart local v6    # "expireTime":J
    goto :goto_6

    .line 1035
    :cond_13
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v4, :cond_14

    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-gez v4, :cond_14

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v6, v7}, Ljava/lang/AssertionError;-><init>(J)V

    throw v4

    .line 1038
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p4

    invoke-interface {v4, v0, v5}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->prepareForCache(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object p4

    .line 1042
    if-eqz p4, :cond_15

    move-object/from16 v4, p0

    move-object/from16 v5, p4

    .line 1043
    invoke-virtual/range {v4 .. v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->updateIndex(Lorg/apache/ignite/internal/processors/cache/CacheObject;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deferredDelete()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isInternal()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->detached()Z

    move-result v4

    if-nez v4, :cond_15

    .line 1046
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked(Z)V

    :cond_15
    move-object/from16 v10, p0

    move-object/from16 v11, p4

    move-wide v12, v6

    move-wide/from16 v14, p7

    move-object/from16 v16, v8

    .line 1049
    invoke-virtual/range {v10 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->update(Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 1051
    move-object/from16 v0, p0

    move-object/from16 v1, p13

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->drReplicate(Lorg/apache/ignite/internal/processors/dr/GridDrType;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 1053
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->recordNodeId(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 1055
    if-eqz p10, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1056
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->onWrite()V

    .line 1058
    :cond_16
    if-eqz p9, :cond_18

    if-eqz v8, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v4

    const/16 v5, 0x3f

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1059
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 1061
    .local v19, "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->partition()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    if-nez p1, :cond_1e

    const/4 v14, 0x0

    :goto_7
    const/16 v16, 0x3f

    if-eqz p4, :cond_1f

    const/16 v18, 0x1

    :goto_8
    if-nez v19, :cond_17

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hasValueUnlocked()Z

    move-result v4

    if-eqz v4, :cond_20

    :cond_17
    const/16 v20, 0x1

    :goto_9
    const/16 v22, 0x0

    move-object/from16 v13, p2

    move-object v15, v8

    move-object/from16 v17, p4

    move-object/from16 v21, p17

    move-object/from16 v23, p18

    invoke-virtual/range {v10 .. v23}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    .end local v19    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v4

    if-nez v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isReplicated()Z

    move-result v4

    if-nez v4, :cond_19

    if-eqz p1, :cond_1a

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->local()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isNear()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 1075
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->continuousQueries()Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    const/4 v15, 0x0

    move-object/from16 v11, p0

    move-object/from16 v13, p4

    move-object v14, v9

    invoke-virtual/range {v10 .. v15}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->onEntryUpdated(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;Z)V

    .line 1077
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dataStructures()Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v10}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->onEntryUpdated(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Z)V

    .line 1078
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1080
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1081
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updated cache entry [val="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", old="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", entry="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v10, 0x5d

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1085
    :cond_1b
    if-eqz p5, :cond_1c

    .line 1086
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->keyValue(Z)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v10, v11}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5, v10, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->putToStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    .line 1088
    :cond_1c
    if-eqz v25, :cond_1d

    .line 1089
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v4

    new-instance v10, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v13, v27

    move-object/from16 v14, p4

    move-object/from16 v15, v29

    invoke-direct/range {v10 .. v15}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljava/lang/Object;)V

    invoke-interface {v4, v10}, Lorg/apache/ignite/cache/CacheInterceptor;->onAfterPut(Ljavax/cache/Cache$Entry;)V

    .line 1091
    :cond_1d
    if-eqz v30, :cond_22

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;

    const/4 v5, 0x1

    if-eqz p6, :cond_21

    .end local v9    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :goto_a
    invoke-direct {v4, v5, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;-><init>(ZLorg/apache/ignite/internal/processors/cache/CacheObject;)V

    goto/16 :goto_1

    .line 1061
    .restart local v9    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v19    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_1e
    :try_start_2
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xid()Lorg/apache/ignite/lang/IgniteUuid;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v14

    goto/16 :goto_7

    :cond_1f
    const/16 v18, 0x0

    goto/16 :goto_8

    :cond_20
    const/16 v20, 0x0

    goto/16 :goto_9

    .line 1091
    .end local v19    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_21
    const/4 v9, 0x0

    goto :goto_a

    :cond_22
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;

    const/4 v5, 0x0

    const/4 v10, 0x0

    invoke-direct {v4, v5, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;-><init>(ZLorg/apache/ignite/internal/processors/cache/CacheObject;)V

    goto/16 :goto_1
.end method

.method public innerUpdate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/lang/Object;[Ljava/lang/Object;ZZLorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;ZZZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/dr/GridDrType;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZZLjava/util/UUID;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;
    .locals 83
    .param p1, "newVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "evtNodeId"    # Ljava/util/UUID;
    .param p3, "affNodeId"    # Ljava/util/UUID;
    .param p4, "op"    # Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .param p5, "writeObj"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "invokeArgs"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7, "writeThrough"    # Z
    .param p8, "retval"    # Z
    .param p9, "expiryPlc"    # Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10, "evt"    # Z
    .param p11, "metrics"    # Z
    .param p12, "primary"    # Z
    .param p13, "verCheck"    # Z
    .param p14, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p15, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16, "drType"    # Lorg/apache/ignite/internal/processors/dr/GridDrType;
    .param p17, "explicitTtl"    # J
    .param p19, "explicitExpireTime"    # J
    .param p21, "conflictVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p22, "conflictResolve"    # Z
    .param p23, "intercept"    # Z
    .param p24, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p25, "taskName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;,
            Lorg/apache/ignite/internal/util/lang/GridClosureException;
        }
    .end annotation

    .prologue
    .line 1616
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->atomic()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1618
    :cond_0
    const/16 v75, 0x1

    .line 1623
    .local v75, "res":Z
    const/16 v45, 0x0

    .line 1625
    .local v45, "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    const/16 v43, 0x0

    .line 1627
    .local v43, "conflictCtx":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<**>;"
    const/4 v11, 0x0

    .line 1637
    .local v11, "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    const/16 v58, 0x0

    .line 1638
    .local v58, "key0":Ljava/lang/Object;
    const/16 v79, 0x0

    .line 1640
    .local v79, "updated0":Ljava/lang/Object;
    monitor-enter p0

    .line 1641
    if-nez p23, :cond_1

    if-nez p8, :cond_1

    :try_start_0
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p4

    if-eq v0, v4, :cond_1

    invoke-static/range {p15 .. p15}, Lorg/apache/ignite/internal/util/typedef/F;->isEmptyOrNulls([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_1
    const/16 v59, 0x1

    .line 1643
    .local v59, "needVal":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 1646
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isNew()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1647
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-virtual {v0, v4, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->unswap(ZZ)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 1649
    :cond_2
    const/16 v77, 0x0

    .line 1652
    .local v77, "transformClo":Ljava/lang/Object;
    if-eqz p22, :cond_70

    .line 1653
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->conflictVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v71

    .line 1656
    .local v71, "oldConflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->conflictNeedResolve()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1660
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p4

    if-ne v0, v4, :cond_6

    .line 1661
    move-object/from16 v77, p5

    .line 1663
    move-object/from16 v0, p5

    check-cast v0, Ljavax/cache/processor/EntryProcessor;

    move-object/from16 v47, v0

    .line 1665
    .local v47, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;*>;"
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->rawGetOrUnmarshalUnlocked(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v13

    .line 1667
    .local v13, "oldVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    new-instance v46, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v0, v46

    invoke-direct {v0, v4, v6, v13}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1670
    .local v46, "entry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :try_start_1
    move-object/from16 v0, v47

    move-object/from16 v1, v46

    move-object/from16 v2, p6

    invoke-interface {v0, v1, v2}, Ljavax/cache/processor/EntryProcessor;->process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    .line 1672
    .local v42, "computed":Ljava/lang/Object;
    invoke-virtual/range {v46 .. v46}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->modified()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1673
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual/range {v46 .. v46}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v81

    .line 1674
    .local v81, "writeObj0":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v81

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object p5

    .line 1681
    .local p5, "writeObj":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :goto_1
    invoke-virtual/range {v46 .. v46}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->key()Ljava/lang/Object;

    move-result-object v58

    .line 1683
    if-eqz v42, :cond_3

    .line 1684
    new-instance v57, Lorg/apache/ignite/lang/IgniteBiTuple;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, v57

    invoke-direct {v0, v4, v6}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v11    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    .local v57, "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    move-object/from16 v11, v57

    .end local v42    # "computed":Ljava/lang/Object;
    .end local v57    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    .end local v58    # "key0":Ljava/lang/Object;
    .restart local v11    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    :cond_3
    :goto_2
    move-object/from16 v57, v11

    .end local v11    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    .end local v13    # "oldVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v46    # "entry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v47    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;*>;"
    .end local v77    # "transformClo":Ljava/lang/Object;
    .end local p5    # "writeObj":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v57    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    :goto_3
    move-object/from16 v4, p0

    move-object/from16 v5, p9

    move-wide/from16 v6, p17

    move-wide/from16 v8, p19

    .line 1696
    :try_start_2
    invoke-direct/range {v4 .. v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ttlAndExpireTime(Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;JJ)Lorg/apache/ignite/internal/util/lang/GridTuple3;

    move-result-object v48

    .line 1701
    .local v48, "expiration":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->versionedEntry()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;

    move-result-object v72

    .line 1702
    .local v72, "oldEntry":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;

    invoke-interface/range {v72 .. v72}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;->key()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual/range {v48 .. v48}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual/range {v48 .. v48}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    if-eqz p21, :cond_7

    move-object/from16 v12, p21

    :goto_4
    move-object/from16 v7, v81

    invoke-direct/range {v5 .. v12}, Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 1710
    .local v5, "newEntry":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v72

    move/from16 v1, p13

    invoke-virtual {v4, v0, v5, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->conflictResolve(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;Z)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;

    move-result-object v43

    .line 1712
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v4, :cond_8

    if-nez v43, :cond_8

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2195
    .end local v5    # "newEntry":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;
    .end local v48    # "expiration":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v72    # "oldEntry":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;
    .end local v81    # "writeObj0":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    move-object/from16 v11, v57

    .end local v57    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    .restart local v11    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    move-object/from16 v38, v45

    .end local v45    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .local v38, "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    move/from16 v30, v75

    .end local v59    # "needVal":Z
    .end local v71    # "oldConflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v75    # "res":Z
    .end local v79    # "updated0":Ljava/lang/Object;
    .local v30, "res":Z
    :goto_5
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v4

    .line 1641
    .end local v30    # "res":Z
    .end local v38    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v45    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v58    # "key0":Ljava/lang/Object;
    .restart local v75    # "res":Z
    .restart local v79    # "updated0":Ljava/lang/Object;
    .local p5, "writeObj":Ljava/lang/Object;
    :cond_4
    const/16 v59, 0x0

    goto/16 :goto_0

    .line 1677
    .restart local v13    # "oldVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v42    # "computed":Ljava/lang/Object;
    .restart local v46    # "entry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v47    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;*>;"
    .restart local v59    # "needVal":Z
    .restart local v71    # "oldConflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v77    # "transformClo":Ljava/lang/Object;
    :cond_5
    move-object/from16 p5, v13

    .line 1678
    .local p5, "writeObj":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v6, 0x0

    invoke-static {v13, v4, v6}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v81

    .restart local v81    # "writeObj0":Ljava/lang/Object;
    goto :goto_1

    .line 1686
    .end local v42    # "computed":Ljava/lang/Object;
    .end local v58    # "key0":Ljava/lang/Object;
    .end local v81    # "writeObj0":Ljava/lang/Object;
    .end local p5    # "writeObj":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catch_0
    move-exception v44

    .line 1687
    .local v44, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v57, Lorg/apache/ignite/lang/IgniteBiTuple;

    const/4 v4, 0x0

    move-object/from16 v0, v57

    move-object/from16 v1, v44

    invoke-direct {v0, v4, v1}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1689
    .end local v11    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    .restart local v57    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    move-object/from16 p5, v13

    .line 1690
    .restart local p5    # "writeObj":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v6, 0x0

    invoke-static {v13, v4, v6}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v81

    .restart local v81    # "writeObj0":Ljava/lang/Object;
    move-object/from16 v11, v57

    .end local v57    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    .restart local v11    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    goto :goto_2

    .line 1694
    .end local v13    # "oldVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v44    # "e":Ljava/lang/Exception;
    .end local v46    # "entry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v47    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;*>;"
    .end local v81    # "writeObj0":Ljava/lang/Object;
    .restart local v58    # "key0":Ljava/lang/Object;
    .local p5, "writeObj":Ljava/lang/Object;
    :cond_6
    :try_start_7
    move-object/from16 v0, p5

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v81

    .restart local v81    # "writeObj0":Ljava/lang/Object;
    move-object/from16 v57, v11

    .end local v11    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    .restart local v57    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    goto/16 :goto_3

    .end local v58    # "key0":Ljava/lang/Object;
    .end local v77    # "transformClo":Ljava/lang/Object;
    .end local p5    # "writeObj":Ljava/lang/Object;
    .restart local v48    # "expiration":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .restart local v72    # "oldEntry":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;
    :cond_7
    move-object/from16 v12, p1

    .line 1702
    goto :goto_4

    .line 1714
    .restart local v5    # "newEntry":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;
    :cond_8
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicWriteOrderMode()Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    move-result-object v4

    sget-object v6, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->PRIMARY:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    if-ne v4, v6, :cond_9

    const/16 v51, 0x1

    .line 1717
    .local v51, "ignoreTime":Z
    :goto_6
    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->isUseOld()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1718
    if-eqz p21, :cond_a

    move-object/from16 v61, p21

    .line 1721
    .local v61, "newConflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isNew()Z

    move-result v4

    if-nez v4, :cond_c

    if-eqz p13, :cond_c

    invoke-virtual/range {v71 .. v71}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->dataCenterId()B

    move-result v4

    invoke-virtual/range {v61 .. v61}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->dataCenterId()B

    move-result v6

    if-ne v4, v6, :cond_c

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ATOMIC_VER_COMPARATOR:Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicVersionComparator;

    move-object/from16 v0, v71

    move-object/from16 v1, v61

    move/from16 v2, v51

    invoke-virtual {v4, v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicVersionComparator;->compare(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)I

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->writeThrough()Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz p12, :cond_c

    .line 1728
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->rawGetOrUnmarshalUnlocked(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v80

    .line 1730
    .local v80, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-nez v80, :cond_d

    .line 1731
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked()Z

    move-result v4

    if-nez v4, :cond_b

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1714
    .end local v51    # "ignoreTime":Z
    .end local v61    # "newConflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v80    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_9
    const/16 v51, 0x0

    goto :goto_6

    .restart local v51    # "ignoreTime":Z
    :cond_a
    move-object/from16 v61, p1

    .line 1718
    goto :goto_7

    .line 1733
    .restart local v61    # "newConflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v80    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->keyValue(Z)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->removeFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Object;)Z

    .line 1739
    .end local v80    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_c
    :goto_8
    new-instance v7, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;

    const/4 v8, 0x0

    if-eqz p8, :cond_e

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->rawGetOrUnmarshalUnlocked(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v9

    :goto_9
    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, v57

    invoke-direct/range {v7 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;-><init>(ZLorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/lang/IgniteBiTuple;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;Z)V

    monitor-exit p0

    move-object/from16 v11, v57

    .end local v57    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    .restart local v11    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    move-object/from16 v38, v45

    .end local v45    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v38    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    move/from16 v30, v75

    .end local v75    # "res":Z
    .restart local v30    # "res":Z
    move-object/from16 v17, v7

    .line 2200
    .end local v5    # "newEntry":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;
    .end local v48    # "expiration":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v61    # "newConflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v71    # "oldConflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v72    # "oldEntry":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;
    .end local v79    # "updated0":Ljava/lang/Object;
    .end local v81    # "writeObj0":Ljava/lang/Object;
    :goto_a
    return-object v17

    .line 1736
    .end local v11    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    .end local v30    # "res":Z
    .end local v38    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v5    # "newEntry":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;
    .restart local v45    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v48    # "expiration":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .restart local v57    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    .restart local v61    # "newConflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v71    # "oldConflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v72    # "oldEntry":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;
    .restart local v75    # "res":Z
    .restart local v79    # "updated0":Ljava/lang/Object;
    .restart local v80    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v81    # "writeObj0":Ljava/lang/Object;
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->keyValue(Z)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v9, 0x0

    move-object/from16 v0, v80

    invoke-static {v0, v8, v9}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v4, v6, v7, v8, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->putToStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    goto :goto_8

    .line 1739
    .end local v80    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_e
    const/4 v9, 0x0

    goto :goto_9

    .line 1752
    .end local v61    # "newConflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_f
    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->isMerge()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1753
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->mergeValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object p5

    .line 1755
    .local p5, "writeObj":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    const/16 p21, 0x0

    .line 1761
    .end local p5    # "writeObj":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_10
    if-eqz p5, :cond_13

    sget-object p4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_b
    move-object/from16 v6, v77

    move-object/from16 v11, v57

    .end local v57    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    .restart local v11    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    move-object/from16 v77, p5

    .line 1769
    .end local v5    # "newEntry":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;
    .end local v48    # "expiration":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v51    # "ignoreTime":Z
    .end local v71    # "oldConflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v72    # "oldEntry":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;
    .end local v81    # "writeObj0":Ljava/lang/Object;
    :goto_c
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicWriteOrderMode()Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    move-result-object v4

    sget-object v7, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->PRIMARY:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    if-ne v4, v7, :cond_15

    const/16 v51, 0x1

    .line 1772
    .restart local v51    # "ignoreTime":Z
    :goto_d
    if-nez v43, :cond_1c

    .line 1773
    if-eqz p13, :cond_1b

    .line 1774
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isNew()Z

    move-result v4

    if-nez v4, :cond_1c

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ATOMIC_VER_COMPARATOR:Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicVersionComparator;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-virtual {v4, v7, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicVersionComparator;->compare(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)I

    move-result v4

    if-ltz v4, :cond_1c

    .line 1775
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ATOMIC_VER_COMPARATOR:Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicVersionComparator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-virtual {v4, v6, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicVersionComparator;->compare(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)I

    move-result v4

    if-nez v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->writeThrough()Z

    move-result v4

    if-eqz v4, :cond_19

    if-eqz p12, :cond_19

    .line 1776
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1777
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received entry update with same version as current (will update store) [entry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", newVer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1780
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->rawGetOrUnmarshalUnlocked(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v80

    .line 1782
    .restart local v80    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-nez v80, :cond_18

    .line 1783
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v4, :cond_16

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked()Z

    move-result v4

    if-nez v4, :cond_16

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2195
    .end local v51    # "ignoreTime":Z
    .end local v59    # "needVal":Z
    .end local v79    # "updated0":Ljava/lang/Object;
    .end local v80    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catchall_1
    move-exception v4

    move-object/from16 v38, v45

    .end local v45    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v38    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    move/from16 v30, v75

    .end local v75    # "res":Z
    .restart local v30    # "res":Z
    goto/16 :goto_5

    .line 1758
    .end local v11    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    .end local v30    # "res":Z
    .end local v38    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v5    # "newEntry":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;
    .restart local v45    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v48    # "expiration":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .restart local v51    # "ignoreTime":Z
    .restart local v57    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    .restart local v59    # "needVal":Z
    .restart local v71    # "oldConflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v72    # "oldEntry":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;
    .restart local v75    # "res":Z
    .restart local v79    # "updated0":Ljava/lang/Object;
    .restart local v81    # "writeObj0":Ljava/lang/Object;
    :cond_12
    :try_start_a
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v4, :cond_10

    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->isUseNew()Z

    move-result v4

    if-nez v4, :cond_10

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1761
    :cond_13
    sget-object p4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_b

    .line 1766
    .end local v5    # "newEntry":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;
    .end local v48    # "expiration":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v51    # "ignoreTime":Z
    .end local v57    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    .end local v72    # "oldEntry":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;
    .end local v81    # "writeObj0":Ljava/lang/Object;
    .restart local v11    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    .restart local v58    # "key0":Ljava/lang/Object;
    .restart local v77    # "transformClo":Ljava/lang/Object;
    .local p5, "writeObj":Ljava/lang/Object;
    :cond_14
    const/16 p21, 0x0

    move-object/from16 v6, v77

    move-object/from16 v77, p5

    goto/16 :goto_c

    .line 1769
    .end local v58    # "key0":Ljava/lang/Object;
    .end local v71    # "oldConflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v77    # "transformClo":Ljava/lang/Object;
    .end local p5    # "writeObj":Ljava/lang/Object;
    :cond_15
    const/16 v51, 0x0

    goto/16 :goto_d

    .line 1785
    .restart local v51    # "ignoreTime":Z
    .restart local v80    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_16
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->keyValue(Z)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->removeFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Object;)Z

    .line 1796
    .end local v80    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_17
    :goto_e
    new-instance v7, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;

    const/4 v8, 0x0

    if-eqz p8, :cond_1a

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->rawGetOrUnmarshalUnlocked(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v9

    :goto_f
    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v7 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;-><init>(ZLorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/lang/IgniteBiTuple;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;Z)V

    monitor-exit p0

    move-object/from16 v38, v45

    .end local v45    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v38    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    move/from16 v30, v75

    .end local v75    # "res":Z
    .restart local v30    # "res":Z
    move-object/from16 v17, v7

    goto/16 :goto_a

    .line 1788
    .end local v30    # "res":Z
    .end local v38    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v45    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v75    # "res":Z
    .restart local v80    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->keyValue(Z)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v9, 0x0

    move-object/from16 v0, v80

    invoke-static {v0, v8, v9}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v4, v6, v7, v8, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->putToStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    goto :goto_e

    .line 1791
    .end local v80    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_19
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1792
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received entry update with smaller version than current (will ignore) [entry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", newVer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_e

    .line 1796
    :cond_1a
    const/4 v9, 0x0

    goto :goto_f

    .line 1809
    :cond_1b
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v4, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isNew()Z

    move-result v4

    if-nez v4, :cond_1c

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ATOMIC_VER_COMPARATOR:Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicVersionComparator;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-virtual {v4, v7, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicVersionComparator;->compare(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)I

    move-result v4

    if-lez v4, :cond_1c

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid version for inner update [entry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", newVer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 1813
    :cond_1c
    if-eqz v59, :cond_23

    if-nez p8, :cond_22

    const/4 v4, 0x1

    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->rawGetOrUnmarshalUnlocked(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v13

    .line 1816
    .restart local v13    # "oldVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :goto_11
    const/16 v74, 0x0

    .line 1818
    .local v74, "readThrough":Z
    const/16 v70, 0x0

    .line 1820
    .local v70, "old0":Ljava/lang/Object;
    if-eqz v59, :cond_1e

    if-nez v13, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->readThrough()Z

    move-result v4

    if-eqz v4, :cond_1e

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p4

    if-eq v0, v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->loadPreviousValue()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1822
    :cond_1d
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .end local v13    # "oldVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    const/4 v15, 0x0

    move-object/from16 v12, p0

    move-object/from16 v16, p24

    move-object/from16 v17, p25

    invoke-virtual/range {v12 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->readThrough(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ZLjava/util/UUID;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v70

    .line 1824
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v70

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v13

    .line 1826
    .restart local v13    # "oldVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    const/16 v74, 0x1

    .line 1829
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {v4, v13, v7}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->prepareForCache(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v13

    .line 1835
    if-eqz p9, :cond_24

    if-eqz v13, :cond_24

    .line 1836
    invoke-static/range {p9 .. p9}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->initialTtlAndExpireTime(Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v54

    .line 1838
    .local v54, "initTtlAndExpireTime":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-virtual/range {v54 .. v54}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v52

    .line 1839
    .local v52, "initTtl":J
    invoke-virtual/range {v54 .. v54}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1846
    .end local v54    # "initTtlAndExpireTime":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v14, "initExpireTime":J
    :goto_12
    if-eqz v13, :cond_25

    .line 1847
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v12, p0

    invoke-virtual/range {v12 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->updateIndex(Lorg/apache/ignite/internal/processors/cache/CacheObject;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 1851
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v18, v0

    move-object/from16 v12, p0

    move-wide/from16 v16, v52

    invoke-virtual/range {v12 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->update(Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 1853
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked()Z

    move-result v4

    if-eqz v4, :cond_1e

    if-eqz v13, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isInternal()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 1854
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked(Z)V

    .line 1858
    .end local v14    # "initExpireTime":J
    .end local v52    # "initTtl":J
    .end local v70    # "old0":Ljava/lang/Object;
    :cond_1e
    if-eqz p11, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v4

    if-eqz v4, :cond_20

    if-eqz v59, :cond_20

    .line 1860
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p4

    if-ne v0, v4, :cond_1f

    invoke-static/range {p15 .. p15}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p15

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->putIfAbsentFilter([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 1861
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v7

    if-eqz v13, :cond_26

    const/4 v4, 0x1

    :goto_14
    invoke-virtual {v7, v4}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->onRead(Z)V

    .line 1865
    :cond_20
    invoke-static/range {p15 .. p15}, Lorg/apache/ignite/internal/util/typedef/F;->isEmptyOrNulls([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 1866
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    move-object/from16 v1, p15

    invoke-virtual {v4, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isAllLocked(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v73

    .line 1868
    .local v73, "pass":Z
    if-nez v73, :cond_28

    .line 1869
    if-eqz p9, :cond_21

    if-nez v74, :cond_21

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hasValueUnlocked()Z

    move-result v4

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p15

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->putIfAbsentFilter([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 1870
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->updateTtl(Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)V

    .line 1872
    :cond_21
    new-instance v17, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;

    const/16 v18, 0x0

    if-eqz p8, :cond_27

    move-object/from16 v19, v13

    :goto_15
    const/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v21, v11

    invoke-direct/range {v17 .. v28}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;-><init>(ZLorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/lang/IgniteBiTuple;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;Z)V

    monitor-exit p0

    move-object/from16 v38, v45

    .end local v45    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v38    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    move/from16 v30, v75

    .end local v75    # "res":Z
    .restart local v30    # "res":Z
    goto/16 :goto_a

    .line 1813
    .end local v13    # "oldVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v30    # "res":Z
    .end local v38    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v73    # "pass":Z
    .end local v74    # "readThrough":Z
    .restart local v45    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v75    # "res":Z
    :cond_22
    const/4 v4, 0x0

    goto/16 :goto_10

    :cond_23
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    goto/16 :goto_11

    .line 1842
    .restart local v13    # "oldVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v70    # "old0":Ljava/lang/Object;
    .restart local v74    # "readThrough":Z
    :cond_24
    const-wide/16 v52, 0x0

    .line 1843
    .restart local v52    # "initTtl":J
    const-wide/16 v14, 0x0

    .restart local v14    # "initExpireTime":J
    goto/16 :goto_12

    .line 1849
    :cond_25
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->clearIndex(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    goto/16 :goto_13

    .line 1861
    .end local v14    # "initExpireTime":J
    .end local v52    # "initTtl":J
    .end local v70    # "old0":Ljava/lang/Object;
    :cond_26
    const/4 v4, 0x0

    goto :goto_14

    .line 1872
    .restart local v73    # "pass":Z
    :cond_27
    const/16 v19, 0x0

    goto :goto_15

    .line 1885
    .end local v73    # "pass":Z
    :cond_28
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p4

    if-ne v0, v4, :cond_30

    .line 1886
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v4, :cond_29

    if-eqz v43, :cond_29

    new-instance v4, Ljava/lang/AssertionError;

    const-string v6, "Cannot be TRANSFORM here if conflict resolution was performed earlier."

    invoke-direct {v4, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 1890
    .restart local v77    # "transformClo":Ljava/lang/Object;
    :cond_29
    move-object/from16 v0, v77

    check-cast v0, Ljavax/cache/processor/EntryProcessor;

    move-object/from16 v47, v0

    .line 1892
    .restart local v47    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;*>;"
    new-instance v46, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v0, v46

    invoke-direct {v0, v4, v6, v13}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1895
    .restart local v46    # "entry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :try_start_c
    move-object/from16 v0, v47

    move-object/from16 v1, v46

    move-object/from16 v2, p6

    invoke-interface {v0, v1, v2}, Ljavax/cache/processor/EntryProcessor;->process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    .line 1897
    .restart local v42    # "computed":Ljava/lang/Object;
    invoke-virtual/range {v46 .. v46}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->modified()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1898
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual/range {v46 .. v46}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v79

    .line 1899
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v79

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v19

    .line 1904
    .end local v79    # "updated0":Ljava/lang/Object;
    .local v19, "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :goto_16
    invoke-virtual/range {v46 .. v46}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->key()Ljava/lang/Object;

    move-result-object v58

    .line 1906
    .restart local v58    # "key0":Ljava/lang/Object;
    if-eqz v42, :cond_2a

    .line 1907
    new-instance v57, Lorg/apache/ignite/lang/IgniteBiTuple;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, v57

    invoke-direct {v0, v4, v6}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .end local v11    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    .restart local v57    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    move-object/from16 v11, v57

    .end local v57    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    .restart local v11    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    :cond_2a
    move-object/from16 v4, v79

    .line 1915
    .end local v42    # "computed":Ljava/lang/Object;
    .end local v58    # "key0":Ljava/lang/Object;
    :goto_17
    :try_start_d
    invoke-virtual/range {v46 .. v46}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->modified()Z

    move-result v6

    if-nez v6, :cond_2e

    .line 1916
    if-eqz p9, :cond_2b

    if-nez v74, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hasValueUnlocked()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1917
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->updateTtl(Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)V

    .line 1919
    :cond_2b
    new-instance v17, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;

    const/16 v18, 0x0

    if-eqz p8, :cond_2d

    move-object/from16 v19, v13

    .end local v19    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :goto_18
    const/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v21, v11

    invoke-direct/range {v17 .. v28}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;-><init>(ZLorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/lang/IgniteBiTuple;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;Z)V

    monitor-exit p0

    move-object/from16 v38, v45

    .end local v45    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v38    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    move/from16 v30, v75

    .end local v75    # "res":Z
    .restart local v30    # "res":Z
    goto/16 :goto_a

    .line 1902
    .end local v30    # "res":Z
    .end local v38    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v42    # "computed":Ljava/lang/Object;
    .restart local v45    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v75    # "res":Z
    .restart local v79    # "updated0":Ljava/lang/Object;
    :cond_2c
    move-object/from16 v19, v13

    .restart local v19    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    goto :goto_16

    .line 1909
    .end local v19    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v42    # "computed":Ljava/lang/Object;
    .end local v79    # "updated0":Ljava/lang/Object;
    :catch_1
    move-exception v44

    .line 1910
    .restart local v44    # "e":Ljava/lang/Exception;
    new-instance v57, Lorg/apache/ignite/lang/IgniteBiTuple;

    const/4 v4, 0x0

    move-object/from16 v0, v57

    move-object/from16 v1, v44

    invoke-direct {v0, v4, v1}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1912
    .end local v11    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    .restart local v57    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    move-object/from16 v19, v13

    .restart local v19    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    move-object/from16 v4, v79

    move-object/from16 v11, v57

    .end local v57    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    .restart local v11    # "invokeRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    goto :goto_17

    .line 1919
    .end local v44    # "e":Ljava/lang/Exception;
    :cond_2d
    const/16 v19, 0x0

    goto :goto_18

    :cond_2e
    move-object/from16 v78, v19

    .line 1933
    .end local v19    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v46    # "entry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v47    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;*>;"
    .end local v77    # "transformClo":Ljava/lang/Object;
    .local v78, "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :goto_19
    if-nez v78, :cond_31

    sget-object p4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 1935
    :goto_1a
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v6, :cond_32

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p4

    if-eq v0, v6, :cond_32

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p4

    if-ne v0, v6, :cond_2f

    if-eqz v78, :cond_32

    :cond_2f
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1931
    .end local v78    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v79    # "updated0":Ljava/lang/Object;
    :cond_30
    move-object/from16 v0, v77

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-object/from16 v19, v0

    .restart local v19    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    move-object/from16 v77, v6

    move-object/from16 v4, v79

    move-object/from16 v78, v19

    .end local v19    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v78    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    goto :goto_19

    .line 1933
    .end local v79    # "updated0":Ljava/lang/Object;
    :cond_31
    sget-object p4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    goto :goto_1a

    .line 1937
    :cond_32
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hasValueUnlocked()Z

    move-result v49

    .line 1940
    .local v49, "hadVal":Z
    if-eqz p21, :cond_33

    move-object/from16 v0, p21

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_33

    .line 1941
    new-instance v16, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->topologyVersion()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->globalTime()J

    move-result-wide v18

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->order()J

    move-result-wide v20

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->nodeOrder()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->dataCenterId()B

    move-result v23

    move-object/from16 v24, p21

    invoke-direct/range {v16 .. v24}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;-><init>(IJJIBLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .end local p1    # "newVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .local v16, "newVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    move-object/from16 p1, v16

    .line 1948
    .end local v16    # "newVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local p1    # "newVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_33
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p4

    if-ne v0, v6, :cond_3d

    .line 1950
    if-nez v43, :cond_3c

    .line 1952
    const-wide/16 v6, -0x1

    cmp-long v6, p17, v6

    if-eqz v6, :cond_37

    .line 1954
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v6, :cond_34

    if-eqz p21, :cond_34

    const-wide/16 v6, -0x1

    cmp-long v6, p19, v6

    if-nez v6, :cond_34

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1956
    :cond_34
    move-wide/from16 v68, p17

    .local v68, "newTtl":J
    move-wide/from16 v66, p17

    .line 1957
    .local v66, "newSysTtl":J
    move-wide/from16 v64, p19

    .line 1959
    .local v64, "newSysExpireTime":J
    const-wide/16 v6, -0x1

    cmp-long v6, p19, v6

    if-eqz v6, :cond_36

    move-wide/from16 v62, p19

    .line 2005
    .local v62, "newExpireTime":J
    :goto_1b
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v6, :cond_3f

    const-wide/16 v6, -0x1

    cmp-long v6, v68, v6

    if-eqz v6, :cond_35

    const-wide/16 v6, -0x2

    cmp-long v6, v68, v6

    if-eqz v6, :cond_35

    const-wide/16 v6, 0x0

    cmp-long v6, v68, v6

    if-gez v6, :cond_3f

    :cond_35
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1959
    .end local v62    # "newExpireTime":J
    :cond_36
    invoke-static/range {p17 .. p18}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toExpireTime(J)J

    move-result-wide v62

    goto :goto_1b

    .line 1963
    .end local v64    # "newSysExpireTime":J
    .end local v66    # "newSysTtl":J
    .end local v68    # "newTtl":J
    :cond_37
    if-nez p9, :cond_38

    const-wide/16 v66, -0x1

    .line 1966
    .restart local v66    # "newSysTtl":J
    :goto_1c
    const-wide/16 v6, -0x1

    cmp-long v6, v66, v6

    if-nez v6, :cond_3a

    .line 1967
    const-wide/16 v64, -0x1

    .line 1968
    .restart local v64    # "newSysExpireTime":J
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ttlExtras()J

    move-result-wide v68

    .line 1969
    .restart local v68    # "newTtl":J
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->expireTimeExtras()J

    move-result-wide v62

    .restart local v62    # "newExpireTime":J
    goto :goto_1b

    .line 1963
    .end local v62    # "newExpireTime":J
    .end local v64    # "newSysExpireTime":J
    .end local v66    # "newSysTtl":J
    .end local v68    # "newTtl":J
    :cond_38
    if-eqz v49, :cond_39

    invoke-interface/range {p9 .. p9}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;->forUpdate()J

    move-result-wide v66

    goto :goto_1c

    :cond_39
    invoke-interface/range {p9 .. p9}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;->forCreate()J

    move-result-wide v66

    goto :goto_1c

    .line 1971
    .restart local v66    # "newSysTtl":J
    :cond_3a
    const-wide/16 v6, -0x2

    cmp-long v6, v66, v6

    if-nez v6, :cond_3b

    .line 1972
    sget-object p4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 1974
    const-wide/16 v66, -0x1

    .line 1975
    const-wide/16 v64, -0x1

    .line 1977
    .restart local v64    # "newSysExpireTime":J
    const-wide/16 v68, 0x0

    .line 1978
    .restart local v68    # "newTtl":J
    const-wide/16 v62, 0x0

    .line 1980
    .restart local v62    # "newExpireTime":J
    const/16 v19, 0x0

    .end local v78    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v19    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    move-object/from16 v78, v19

    .end local v19    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v78    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    goto :goto_1b

    .line 1983
    .end local v62    # "newExpireTime":J
    .end local v64    # "newSysExpireTime":J
    .end local v68    # "newTtl":J
    :cond_3b
    const-wide/16 v64, -0x1

    .line 1984
    .restart local v64    # "newSysExpireTime":J
    move-wide/from16 v68, v66

    .line 1985
    .restart local v68    # "newTtl":J
    invoke-static/range {v68 .. v69}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toExpireTime(J)J

    move-result-wide v62

    .restart local v62    # "newExpireTime":J
    goto :goto_1b

    .line 1990
    .end local v62    # "newExpireTime":J
    .end local v64    # "newSysExpireTime":J
    .end local v66    # "newSysTtl":J
    .end local v68    # "newTtl":J
    :cond_3c
    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->ttl()J

    move-result-wide v68

    .restart local v68    # "newTtl":J
    move-wide/from16 v66, v68

    .line 1991
    .restart local v66    # "newSysTtl":J
    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->expireTime()J

    move-result-wide v62

    .restart local v62    # "newExpireTime":J
    move-wide/from16 v64, v62

    .restart local v64    # "newSysExpireTime":J
    goto :goto_1b

    .line 1995
    .end local v62    # "newExpireTime":J
    .end local v64    # "newSysExpireTime":J
    .end local v66    # "newSysTtl":J
    .end local v68    # "newTtl":J
    :cond_3d
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v6, :cond_3e

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p4

    if-eq v0, v6, :cond_3e

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1997
    :cond_3e
    const-wide/16 v66, -0x1

    .line 1998
    .restart local v66    # "newSysTtl":J
    const-wide/16 v64, -0x1

    .line 2000
    .restart local v64    # "newSysExpireTime":J
    const-wide/16 v68, 0x0

    .line 2001
    .restart local v68    # "newTtl":J
    const-wide/16 v62, 0x0

    .restart local v62    # "newExpireTime":J
    goto/16 :goto_1b

    .line 2006
    :cond_3f
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v6, :cond_41

    const-wide/16 v6, -0x1

    cmp-long v6, v62, v6

    if-eqz v6, :cond_40

    const-wide/16 v6, 0x0

    cmp-long v6, v62, v6

    if-gez v6, :cond_41

    :cond_40
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 2008
    :cond_41
    const/16 v55, 0x0

    .line 2011
    .local v55, "interceptRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p4

    if-ne v0, v6, :cond_57

    .line 2012
    if-eqz p23, :cond_6f

    .line 2013
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-direct {v0, v4, v1, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->value(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheObject;Z)Ljava/lang/Object;

    move-result-object v79

    .line 2015
    .restart local v79    # "updated0":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v4

    new-instance v17, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v19, v0

    move-object/from16 v20, v58

    move-object/from16 v21, v13

    move-object/from16 v22, v70

    invoke-direct/range {v17 .. v22}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljava/lang/Object;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v79

    invoke-interface {v4, v0, v1}, Lorg/apache/ignite/cache/CacheInterceptor;->onBeforePut(Ljavax/cache/Cache$Entry;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v56

    .line 2018
    .local v56, "interceptorVal":Ljava/lang/Object;
    if-nez v56, :cond_43

    .line 2019
    new-instance v17, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;

    const/16 v18, 0x0

    if-eqz p8, :cond_42

    move-object/from16 v19, v13

    :goto_1d
    const/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v21, v11

    invoke-direct/range {v17 .. v28}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;-><init>(ZLorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/lang/IgniteBiTuple;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;Z)V

    monitor-exit p0

    move-object/from16 v38, v45

    .end local v45    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v38    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    move/from16 v30, v75

    .end local v75    # "res":Z
    .restart local v30    # "res":Z
    goto/16 :goto_a

    .end local v30    # "res":Z
    .end local v38    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v45    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v75    # "res":Z
    :cond_42
    const/16 v19, 0x0

    goto :goto_1d

    .line 2028
    :cond_43
    move-object/from16 v0, v56

    move-object/from16 v1, v79

    if-eq v0, v1, :cond_6e

    .line 2029
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v56

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v79

    .line 2031
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v79

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v19

    .end local v78    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v19    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    move-object/from16 v4, v79

    .line 2036
    .end local v56    # "interceptorVal":Ljava/lang/Object;
    .end local v79    # "updated0":Ljava/lang/Object;
    :goto_1e
    if-eqz p7, :cond_44

    .line 2038
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->keyValue(Z)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v10, 0x0

    move-object/from16 v0, v19

    invoke-static {v0, v9, v10}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v6, v7, v8, v9, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->putToStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    .line 2040
    :cond_44
    if-nez v49, :cond_52

    .line 2041
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isNew()Z

    move-result v60

    .line 2043
    .local v60, "new0":Z
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v6, :cond_45

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked()Z

    move-result v6

    if-nez v6, :cond_45

    if-nez v60, :cond_45

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isInternal()Z

    move-result v6

    if-nez v6, :cond_45

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid entry [entry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", locNodeId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 2046
    :cond_45
    if-nez v60, :cond_46

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isInternal()Z

    move-result v6

    if-nez v6, :cond_46

    .line 2047
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked(Z)V

    .line 2056
    .end local v60    # "new0":Z
    :cond_46
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v19

    invoke-interface {v6, v0, v7}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->prepareForCache(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v19

    move-object/from16 v18, p0

    move-wide/from16 v20, v62

    move-object/from16 v22, p1

    move-object/from16 v23, v13

    .line 2060
    invoke-virtual/range {v18 .. v23}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->updateIndex(Lorg/apache/ignite/internal/processors/cache/CacheObject;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    move-object/from16 v18, p0

    move-wide/from16 v20, v62

    move-wide/from16 v22, v68

    move-object/from16 v24, p1

    .line 2062
    invoke-virtual/range {v18 .. v24}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->update(Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 2064
    move-object/from16 v0, p0

    move-object/from16 v1, p16

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->drReplicate(Lorg/apache/ignite/internal/processors/dr/GridDrType;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 2066
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p14

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->recordNodeId(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 2068
    if-eqz p10, :cond_6d

    .line 2069
    const/16 v27, 0x0

    .line 2071
    .local v27, "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v77, :cond_49

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v6

    const/16 v7, 0x40

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 2072
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6, v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    check-cast v27, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 2074
    .restart local v27    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->partition()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    const/16 v26, 0x40

    if-nez v27, :cond_47

    if-eqz v49, :cond_53

    :cond_47
    const/16 v28, 0x1

    :goto_1f
    if-nez v27, :cond_48

    if-eqz v49, :cond_54

    :cond_48
    const/16 v30, 0x1

    :goto_20
    invoke-virtual/range {v77 .. v77}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v23, p2

    move-object/from16 v25, p1

    move-object/from16 v29, v27

    move-object/from16 v31, p24

    move-object/from16 v33, p25

    invoke-virtual/range {v20 .. v33}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 2079
    :cond_49
    if-eqz p1, :cond_4c

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v6

    const/16 v7, 0x3f

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 2080
    if-nez v27, :cond_4a

    .line 2081
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6, v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    check-cast v27, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 2083
    .restart local v27    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_4a
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->partition()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v30, v0

    const/16 v32, 0x0

    const/16 v34, 0x3f

    if-eqz v19, :cond_55

    const/16 v36, 0x1

    :goto_21
    if-nez v27, :cond_4b

    if-eqz v49, :cond_56

    :cond_4b
    const/16 v38, 0x1

    :goto_22
    const/16 v40, 0x0

    move-object/from16 v31, p2

    move-object/from16 v33, p1

    move-object/from16 v35, v19

    move-object/from16 v37, v27

    move-object/from16 v39, p24

    move-object/from16 v41, p25

    invoke-virtual/range {v28 .. v41}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_4c
    move-object v6, v4

    move-object/from16 v38, v45

    .end local v45    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v38    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    move/from16 v30, v75

    .line 2178
    .end local v27    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v75    # "res":Z
    .restart local v30    # "res":Z
    :goto_23
    if-eqz v30, :cond_4d

    .line 2179
    :try_start_e
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p11

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->updateMetrics(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Z)V

    .line 2181
    :cond_4d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isReplicated()Z

    move-result v4

    if-nez v4, :cond_4e

    if-eqz p12, :cond_4f

    .line 2182
    :cond_4e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->continuousQueries()Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v21, p0

    move-object/from16 v24, v13

    invoke-virtual/range {v20 .. v25}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->onEntryUpdated(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;Z)V

    .line 2184
    :cond_4f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dataStructures()Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p4

    if-ne v0, v4, :cond_6b

    const/4 v4, 0x1

    :goto_24
    invoke-virtual {v7, v8, v4}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->onEntryUpdated(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Z)V

    .line 2186
    if-eqz p23, :cond_50

    .line 2187
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p4

    if-ne v0, v4, :cond_6c

    .line 2188
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v4

    new-instance v20, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v22, v0

    move-object/from16 v23, v58

    move-object/from16 v24, v19

    move-object/from16 v25, v6

    invoke-direct/range {v20 .. v25}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljava/lang/Object;)V

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Lorg/apache/ignite/cache/CacheInterceptor;->onAfterPut(Ljavax/cache/Cache$Entry;)V

    .line 2192
    :goto_25
    if-eqz v55, :cond_50

    .line 2193
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual/range {v55 .. v55}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v13

    .line 2195
    :cond_50
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 2197
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 2198
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updated cache entry [val="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", old="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", entry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2200
    :cond_51
    new-instance v29, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;

    const/16 v40, 0x1

    move-object/from16 v31, v13

    move-object/from16 v32, v19

    move-object/from16 v33, v11

    move-wide/from16 v34, v66

    move-wide/from16 v36, v64

    move-object/from16 v39, v43

    invoke-direct/range {v29 .. v40}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;-><init>(ZLorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/lang/IgniteBiTuple;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;Z)V

    move-object/from16 v17, v29

    goto/16 :goto_a

    .line 2050
    .end local v30    # "res":Z
    .end local v38    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v45    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v75    # "res":Z
    :cond_52
    :try_start_f
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v6, :cond_46

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked()Z

    move-result v6

    if-eqz v6, :cond_46

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid entry [entry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", locNodeId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 2074
    .restart local v27    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_53
    const/16 v28, 0x0

    goto/16 :goto_1f

    :cond_54
    const/16 v30, 0x0

    goto/16 :goto_20

    .line 2083
    :cond_55
    const/16 v36, 0x0

    goto/16 :goto_21

    :cond_56
    const/16 v38, 0x0

    goto/16 :goto_22

    .line 2090
    .end local v19    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v27    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v78    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_57
    if-eqz p23, :cond_58

    .line 2091
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v6

    new-instance v20, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v22, v0

    move-object/from16 v23, v58

    move-object/from16 v24, v13

    move-object/from16 v25, v70

    invoke-direct/range {v20 .. v25}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljava/lang/Object;)V

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Lorg/apache/ignite/cache/CacheInterceptor;->onBeforeRemove(Ljavax/cache/Cache$Entry;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v55

    .line 2094
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v55

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cancelRemove(Lorg/apache/ignite/lang/IgniteBiTuple;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 2095
    new-instance v29, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual/range {v55 .. v55}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v31

    const/16 v32, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v33, v11

    invoke-direct/range {v29 .. v40}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;-><init>(ZLorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/lang/IgniteBiTuple;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;Z)V

    monitor-exit p0

    move-object/from16 v38, v45

    .end local v45    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v38    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    move/from16 v30, v75

    .end local v75    # "res":Z
    .restart local v30    # "res":Z
    move-object/from16 v17, v29

    goto/16 :goto_a

    .line 2106
    .end local v30    # "res":Z
    .end local v38    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v45    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v75    # "res":Z
    :cond_58
    if-eqz p7, :cond_59

    .line 2108
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->keyValue(Z)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->removeFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Object;)Z

    .line 2112
    :cond_59
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->clearIndex(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 2114
    if-eqz v49, :cond_5c

    .line 2115
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v6, :cond_5a

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked()Z

    move-result v6

    if-eqz v6, :cond_5a

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 2117
    :cond_5a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isInternal()Z

    move-result v6

    if-nez v6, :cond_5b

    .line 2118
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked(Z)V

    .line 2132
    :cond_5b
    :goto_26
    move-object/from16 v45, p1

    .line 2134
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valPtr:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5e

    const/16 v50, 0x1

    .line 2137
    .local v50, "hasValPtr":Z
    :goto_27
    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v20, p0

    move-object/from16 v26, p1

    invoke-virtual/range {v20 .. v26}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->update(Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 2139
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v6, :cond_5f

    const-wide/16 v6, -0x1

    cmp-long v6, v66, v6

    if-eqz v6, :cond_5f

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 2121
    .end local v50    # "hasValPtr":Z
    :cond_5c
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isNew()Z

    move-result v60

    .line 2123
    .restart local v60    # "new0":Z
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v6, :cond_5d

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked()Z

    move-result v6

    if-nez v6, :cond_5d

    if-nez v60, :cond_5d

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isInternal()Z

    move-result v6

    if-nez v6, :cond_5d

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid entry [entry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", locNodeId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 2126
    :cond_5d
    if-eqz v60, :cond_5b

    .line 2127
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isInternal()Z

    move-result v6

    if-nez v6, :cond_5b

    .line 2128
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked(Z)V

    goto/16 :goto_26

    .line 2134
    .end local v60    # "new0":Z
    :cond_5e
    const/16 v50, 0x0

    goto :goto_27

    .line 2140
    .restart local v50    # "hasValPtr":Z
    :cond_5f
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v6, :cond_60

    const-wide/16 v6, -0x1

    cmp-long v6, v64, v6

    if-eqz v6, :cond_60

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 2142
    :cond_60
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->offheapTiered()Z

    move-result v6

    if-eqz v6, :cond_61

    if-eqz v50, :cond_61

    .line 2143
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->removeOffheap(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Z

    move-result v76

    .line 2145
    .local v76, "rmv":Z
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v6, :cond_61

    if-nez v76, :cond_61

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 2148
    .end local v76    # "rmv":Z
    :cond_61
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->clearReaders()V

    .line 2150
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p14

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->recordNodeId(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 2152
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p16

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->drReplicate(Lorg/apache/ignite/internal/processors/dr/GridDrType;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 2154
    if-eqz p10, :cond_67

    .line 2155
    const/16 v27, 0x0

    .line 2157
    .restart local v27    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v77, :cond_64

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v6

    const/16 v7, 0x40

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v6

    if-eqz v6, :cond_64

    .line 2158
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6, v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    check-cast v27, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 2160
    .restart local v27    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->partition()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    const/16 v26, 0x40

    if-nez v27, :cond_62

    if-eqz v49, :cond_68

    :cond_62
    const/16 v28, 0x1

    :goto_28
    if-nez v27, :cond_63

    if-eqz v49, :cond_69

    :cond_63
    const/16 v30, 0x1

    :goto_29
    invoke-virtual/range {v77 .. v77}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v23, p2

    move-object/from16 v25, p1

    move-object/from16 v29, v27

    move-object/from16 v31, p24

    move-object/from16 v33, p25

    invoke-virtual/range {v20 .. v33}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 2165
    :cond_64
    if-eqz p1, :cond_67

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v6

    const/16 v7, 0x41

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 2166
    if-nez v27, :cond_65

    .line 2167
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6, v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    check-cast v27, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 2169
    .restart local v27    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_65
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->partition()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v30, v0

    const/16 v32, 0x0

    const/16 v34, 0x41

    const/16 v35, 0x0

    const/16 v36, 0x0

    if-nez v27, :cond_66

    if-eqz v49, :cond_6a

    :cond_66
    const/16 v38, 0x1

    :goto_2a
    const/16 v40, 0x0

    move-object/from16 v31, p2

    move-object/from16 v33, p1

    move-object/from16 v37, v27

    move-object/from16 v39, p24

    move-object/from16 v41, p25

    invoke-virtual/range {v28 .. v41}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 2175
    .end local v27    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_67
    move/from16 v30, v49

    .end local v75    # "res":Z
    .restart local v30    # "res":Z
    move-object v6, v4

    move-object/from16 v38, v45

    .end local v45    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v38    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    move-object/from16 v19, v78

    .end local v78    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v19    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    goto/16 :goto_23

    .line 2160
    .end local v19    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v30    # "res":Z
    .end local v38    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v27    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v45    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v75    # "res":Z
    .restart local v78    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_68
    const/16 v28, 0x0

    goto :goto_28

    :cond_69
    const/16 v30, 0x0

    goto :goto_29

    .line 2169
    :cond_6a
    const/16 v38, 0x0

    goto :goto_2a

    .line 2184
    .end local v27    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v45    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v50    # "hasValPtr":Z
    .end local v75    # "res":Z
    .end local v78    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v19    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v30    # "res":Z
    .restart local v38    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_6b
    const/4 v4, 0x0

    goto/16 :goto_24

    .line 2190
    :cond_6c
    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v4

    new-instance v20, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v22, v0

    move-object/from16 v23, v58

    move-object/from16 v24, v13

    move-object/from16 v25, v70

    invoke-direct/range {v20 .. v25}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljava/lang/Object;)V

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Lorg/apache/ignite/cache/CacheInterceptor;->onAfterRemove(Ljavax/cache/Cache$Entry;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto/16 :goto_25

    .line 2195
    .end local v13    # "oldVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v19    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v49    # "hadVal":Z
    .end local v51    # "ignoreTime":Z
    .end local v55    # "interceptRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    .end local v59    # "needVal":Z
    .end local v62    # "newExpireTime":J
    .end local v64    # "newSysExpireTime":J
    .end local v66    # "newSysTtl":J
    .end local v68    # "newTtl":J
    .end local v74    # "readThrough":Z
    :catchall_2
    move-exception v4

    goto/16 :goto_5

    .end local v30    # "res":Z
    .end local v38    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v13    # "oldVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v19    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v45    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v49    # "hadVal":Z
    .restart local v51    # "ignoreTime":Z
    .restart local v55    # "interceptRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    .restart local v59    # "needVal":Z
    .restart local v62    # "newExpireTime":J
    .restart local v64    # "newSysExpireTime":J
    .restart local v66    # "newSysTtl":J
    .restart local v68    # "newTtl":J
    .restart local v74    # "readThrough":Z
    .restart local v75    # "res":Z
    :cond_6d
    move-object v6, v4

    move-object/from16 v38, v45

    .end local v45    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v38    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    move/from16 v30, v75

    .end local v75    # "res":Z
    .restart local v30    # "res":Z
    goto/16 :goto_23

    .end local v19    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v30    # "res":Z
    .end local v38    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v45    # "enqueueVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v56    # "interceptorVal":Ljava/lang/Object;
    .restart local v75    # "res":Z
    .restart local v78    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v79    # "updated0":Ljava/lang/Object;
    :cond_6e
    move-object/from16 v4, v79

    move-object/from16 v19, v78

    .end local v78    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v19    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    goto/16 :goto_1e

    .end local v19    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v56    # "interceptorVal":Ljava/lang/Object;
    .end local v79    # "updated0":Ljava/lang/Object;
    .restart local v78    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_6f
    move-object/from16 v19, v78

    .end local v78    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v19    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    goto/16 :goto_1e

    .end local v13    # "oldVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v19    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v49    # "hadVal":Z
    .end local v51    # "ignoreTime":Z
    .end local v55    # "interceptRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    .end local v62    # "newExpireTime":J
    .end local v64    # "newSysExpireTime":J
    .end local v66    # "newSysTtl":J
    .end local v68    # "newTtl":J
    .end local v74    # "readThrough":Z
    .restart local v58    # "key0":Ljava/lang/Object;
    .restart local v77    # "transformClo":Ljava/lang/Object;
    .restart local v79    # "updated0":Ljava/lang/Object;
    .restart local p5    # "writeObj":Ljava/lang/Object;
    :cond_70
    move-object/from16 v6, v77

    move-object/from16 v77, p5

    goto/16 :goto_c
.end method

.method public innerUpdateLocal(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/lang/Object;[Ljava/lang/Object;ZZLjavax/cache/expiry/ExpiryPolicy;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;ZLjava/util/UUID;Ljava/lang/String;)Lorg/apache/ignite/internal/util/lang/GridTuple3;
    .locals 61
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "op"    # Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .param p3, "writeObj"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "invokeArgs"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "writeThrough"    # Z
    .param p6, "retval"    # Z
    .param p7, "expiryPlc"    # Ljavax/cache/expiry/ExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8, "evt"    # Z
    .param p9, "metrics"    # Z
    .param p10, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11, "intercept"    # Z
    .param p12, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13, "taskName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "ZZ",
            "Ljavax/cache/expiry/ExpiryPolicy;",
            "ZZ[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            "Z",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 1307
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->atomic()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1311
    :cond_1
    const/16 v56, 0x1

    .line 1313
    .local v56, "res":Z
    const/16 v48, 0x0

    .line 1315
    .local v48, "interceptorRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;*>;"
    const/16 v50, 0x0

    .line 1317
    .local v50, "invokeRes":Ljavax/cache/processor/EntryProcessorResult;, "Ljavax/cache/processor/EntryProcessorResult<Ljava/lang/Object;>;"
    monitor-enter p0

    .line 1318
    if-nez p6, :cond_2

    if-nez p11, :cond_2

    :try_start_0
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_2

    invoke-static/range {p10 .. p10}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_2
    const/16 v53, 0x1

    .line 1320
    .local v53, "needVal":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 1323
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isNew()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1324
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v4, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->unswap(ZZ)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 1327
    :cond_3
    if-eqz v53, :cond_c

    if-nez p6, :cond_b

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->rawGetOrUnmarshalUnlocked(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v5

    .line 1329
    .local v5, "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :goto_2
    const/16 v55, 0x0

    .line 1331
    .local v55, "readThrough":Z
    const/4 v13, 0x0

    .line 1333
    .local v13, "old0":Ljava/lang/Object;
    if-eqz v53, :cond_6

    if-nez v5, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->readThrough()Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->loadPreviousValue()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1335
    :cond_4
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .end local v5    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v8, p12

    move-object/from16 v9, p13

    invoke-virtual/range {v4 .. v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->readThrough(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ZLjava/util/UUID;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 1337
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4, v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v5

    .line 1339
    .restart local v5    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    const-wide/16 v58, 0x0

    .line 1340
    .local v58, "ttl":J
    const-wide/16 v6, 0x0

    .line 1342
    .local v6, "expireTime":J
    if-eqz p7, :cond_5

    if-eqz v5, :cond_5

    .line 1343
    invoke-interface/range {p7 .. p7}, Ljavax/cache/expiry/ExpiryPolicy;->getExpiryForCreation()Ljavax/cache/expiry/Duration;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toTtl(Ljavax/cache/expiry/Duration;)J

    move-result-wide v58

    .line 1345
    const-wide/16 v10, -0x2

    cmp-long v4, v58, v10

    if-nez v4, :cond_d

    .line 1346
    const-wide/16 v58, 0x1

    .line 1347
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->expireTimeInPast()J

    move-result-wide v6

    .line 1356
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {v4, v5, v9}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->prepareForCache(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v5

    .line 1358
    if-eqz v5, :cond_f

    .line 1359
    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v8, p1

    invoke-virtual/range {v4 .. v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->updateIndex(Lorg/apache/ignite/internal/processors/cache/CacheObject;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    :goto_4
    move-object/from16 v4, p0

    move-wide/from16 v8, v58

    move-object/from16 v10, p1

    .line 1363
    invoke-virtual/range {v4 .. v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->update(Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 1367
    .end local v6    # "expireTime":J
    .end local v13    # "old0":Ljava/lang/Object;
    .end local v58    # "ttl":J
    :cond_6
    if-eqz p9, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v53, :cond_8

    .line 1369
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_7

    invoke-static/range {p10 .. p10}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->putIfAbsentFilter([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1370
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v9

    if-eqz v5, :cond_10

    const/4 v4, 0x1

    :goto_5
    invoke-virtual {v9, v4}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->onRead(Z)V

    .line 1374
    :cond_8
    invoke-static/range {p10 .. p10}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 1375
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    move-object/from16 v1, p10

    invoke-virtual {v4, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isAllLocked(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v54

    .line 1377
    .local v54, "pass":Z
    if-nez v54, :cond_12

    .line 1378
    if-eqz p7, :cond_9

    if-nez v55, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->putIfAbsentFilter([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hasValueUnlocked()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1379
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->updateTtl(Ljavax/cache/expiry/ExpiryPolicy;)V

    .line 1381
    :cond_9
    new-instance v4, Lorg/apache/ignite/internal/util/typedef/T3;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    if-eqz p6, :cond_11

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v11, 0x0

    invoke-static {v5, v9, v11}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v9

    :goto_6
    const/4 v11, 0x0

    invoke-direct {v4, v10, v9, v11}, Lorg/apache/ignite/internal/util/typedef/T3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit p0

    .line 1584
    .end local v50    # "invokeRes":Ljavax/cache/processor/EntryProcessorResult;, "Ljavax/cache/processor/EntryProcessorResult<Ljava/lang/Object;>;"
    .end local v54    # "pass":Z
    :goto_7
    return-object v4

    .line 1318
    .end local v5    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v53    # "needVal":Z
    .end local v55    # "readThrough":Z
    .restart local v50    # "invokeRes":Ljavax/cache/processor/EntryProcessorResult;, "Ljavax/cache/processor/EntryProcessorResult<Ljava/lang/Object;>;"
    :cond_a
    const/16 v53, 0x0

    goto/16 :goto_0

    .line 1327
    .restart local v53    # "needVal":Z
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    goto/16 :goto_2

    .line 1349
    .restart local v5    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v6    # "expireTime":J
    .restart local v13    # "old0":Ljava/lang/Object;
    .restart local v55    # "readThrough":Z
    .restart local v58    # "ttl":J
    :cond_d
    const-wide/16 v10, -0x1

    cmp-long v4, v58, v10

    if-nez v4, :cond_e

    .line 1350
    const-wide/16 v58, 0x0

    goto/16 :goto_3

    .line 1352
    :cond_e
    invoke-static/range {v58 .. v59}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toExpireTime(J)J

    move-result-wide v6

    goto/16 :goto_3

    .line 1361
    :cond_f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->clearIndex(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    goto/16 :goto_4

    .line 1582
    .end local v5    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v6    # "expireTime":J
    .end local v13    # "old0":Ljava/lang/Object;
    .end local v50    # "invokeRes":Ljavax/cache/processor/EntryProcessorResult;, "Ljavax/cache/processor/EntryProcessorResult<Ljava/lang/Object;>;"
    .end local v53    # "needVal":Z
    .end local v55    # "readThrough":Z
    .end local v58    # "ttl":J
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1370
    .restart local v5    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v50    # "invokeRes":Ljavax/cache/processor/EntryProcessorResult;, "Ljavax/cache/processor/EntryProcessorResult<Ljava/lang/Object;>;"
    .restart local v53    # "needVal":Z
    .restart local v55    # "readThrough":Z
    :cond_10
    const/4 v4, 0x0

    goto :goto_5

    .line 1381
    .restart local v54    # "pass":Z
    :cond_11
    const/4 v9, 0x0

    goto :goto_6

    .line 1385
    .end local v54    # "pass":Z
    :cond_12
    const/16 v28, 0x0

    .line 1389
    .local v28, "transformCloClsName":Ljava/lang/String;
    const/16 v52, 0x0

    .line 1390
    .local v52, "key0":Ljava/lang/Object;
    const/16 v60, 0x0

    .line 1393
    .local v60, "updated0":Ljava/lang/Object;
    :try_start_1
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_17

    .line 1394
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v28

    .line 1396
    move-object/from16 v0, p3

    check-cast v0, Ljavax/cache/processor/EntryProcessor;

    move-object/from16 v45, v0

    .line 1398
    .local v45, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;*>;"
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v4, :cond_13

    if-nez v45, :cond_13

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1400
    :cond_13
    new-instance v44, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v0, v44

    invoke-direct {v0, v4, v9, v5}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1403
    .local v44, "entry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :try_start_2
    move-object/from16 v0, v45

    move-object/from16 v1, v44

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Ljavax/cache/processor/EntryProcessor;->process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    .line 1405
    .local v43, "computed":Ljava/lang/Object;
    invoke-virtual/range {v44 .. v44}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->modified()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1406
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual/range {v44 .. v44}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v60

    .line 1408
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v60

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v15

    .line 1413
    .end local v60    # "updated0":Ljava/lang/Object;
    .local v15, "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :goto_8
    invoke-virtual/range {v44 .. v44}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->key()Ljava/lang/Object;

    move-result-object v52

    .line 1415
    if-eqz v43, :cond_16

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v43

    invoke-virtual {v9, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v4, v9}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v50, v4

    :goto_9
    move-object/from16 v4, v60

    move-object/from16 v11, v52

    .line 1423
    .end local v43    # "computed":Ljava/lang/Object;
    .end local v50    # "invokeRes":Ljavax/cache/processor/EntryProcessorResult;, "Ljavax/cache/processor/EntryProcessorResult<Ljava/lang/Object;>;"
    .end local v52    # "key0":Ljava/lang/Object;
    :goto_a
    :try_start_3
    invoke-virtual/range {v44 .. v44}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->modified()Z

    move-result v9

    if-nez v9, :cond_18

    .line 1424
    if-eqz p7, :cond_14

    if-nez v55, :cond_14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hasValueUnlocked()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1425
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->updateTtl(Ljavax/cache/expiry/ExpiryPolicy;)V

    .line 1427
    :cond_14
    new-instance v4, Lorg/apache/ignite/internal/util/lang/GridTuple3;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v0, v50

    invoke-direct {v4, v9, v10, v0}, Lorg/apache/ignite/internal/util/lang/GridTuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit p0

    goto/16 :goto_7

    .line 1411
    .end local v15    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v43    # "computed":Ljava/lang/Object;
    .restart local v50    # "invokeRes":Ljavax/cache/processor/EntryProcessorResult;, "Ljavax/cache/processor/EntryProcessorResult<Ljava/lang/Object;>;"
    .restart local v52    # "key0":Ljava/lang/Object;
    .restart local v60    # "updated0":Ljava/lang/Object;
    :cond_15
    move-object v15, v5

    .restart local v15    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    goto :goto_8

    .line 1415
    .end local v60    # "updated0":Ljava/lang/Object;
    :cond_16
    const/16 v50, 0x0

    goto :goto_9

    .line 1417
    .end local v15    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v43    # "computed":Ljava/lang/Object;
    .end local v52    # "key0":Ljava/lang/Object;
    :catch_0
    move-exception v8

    .line 1418
    .local v8, "e":Ljava/lang/Exception;
    move-object v15, v5

    .line 1420
    .restart local v15    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    new-instance v51, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;

    move-object/from16 v0, v51

    invoke-direct {v0, v8}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;-><init>(Ljava/lang/Exception;)V

    .end local v50    # "invokeRes":Ljavax/cache/processor/EntryProcessorResult;, "Ljavax/cache/processor/EntryProcessorResult<Ljava/lang/Object;>;"
    .local v51, "invokeRes":Ljavax/cache/processor/EntryProcessorResult;, "Ljavax/cache/processor/EntryProcessorResult<Ljava/lang/Object;>;"
    move-object/from16 v4, v60

    move-object/from16 v11, v52

    move-object/from16 v50, v51

    .local v50, "invokeRes":Ljava/lang/Object;, "Ljavax/cache/processor/EntryProcessorResult<Ljava/lang/Object;>;"
    goto :goto_a

    .line 1431
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v15    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v44    # "entry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v45    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;*>;"
    .end local v51    # "invokeRes":Ljavax/cache/processor/EntryProcessorResult;, "Ljavax/cache/processor/EntryProcessorResult<Ljava/lang/Object;>;"
    .local v50, "invokeRes":Ljavax/cache/processor/EntryProcessorResult;, "Ljavax/cache/processor/EntryProcessorResult<Ljava/lang/Object;>;"
    .restart local v52    # "key0":Ljava/lang/Object;
    .restart local v60    # "updated0":Ljava/lang/Object;
    :cond_17
    move-object/from16 v0, p3

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-object v15, v0

    .restart local v15    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    move-object/from16 v4, v60

    move-object/from16 v11, v52

    .line 1433
    .end local v50    # "invokeRes":Ljavax/cache/processor/EntryProcessorResult;, "Ljavax/cache/processor/EntryProcessorResult<Ljava/lang/Object;>;"
    .end local v52    # "key0":Ljava/lang/Object;
    .end local v60    # "updated0":Ljava/lang/Object;
    :cond_18
    if-nez v15, :cond_19

    sget-object p2, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 1435
    :goto_b
    if-eqz p11, :cond_40

    .line 1438
    sget-object v9, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p2

    if-ne v0, v9, :cond_1f

    .line 1439
    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->value(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheObject;Z)Ljava/lang/Object;

    move-result-object v60

    .line 1441
    .restart local v60    # "updated0":Ljava/lang/Object;
    new-instance v8, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object v12, v5

    invoke-direct/range {v8 .. v13}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljava/lang/Object;)V

    .line 1443
    .local v8, "e":Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v4

    move-object/from16 v0, v60

    invoke-interface {v4, v8, v0}, Lorg/apache/ignite/cache/CacheInterceptor;->onBeforePut(Ljavax/cache/Cache$Entry;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    .line 1445
    .local v49, "interceptorVal":Ljava/lang/Object;
    if-nez v49, :cond_1a

    .line 1446
    new-instance v4, Lorg/apache/ignite/internal/util/lang/GridTuple3;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->value(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheObject;Z)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v0, v50

    invoke-direct {v4, v9, v10, v0}, Lorg/apache/ignite/internal/util/lang/GridTuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit p0

    goto/16 :goto_7

    .line 1433
    .end local v8    # "e":Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;
    .end local v49    # "interceptorVal":Ljava/lang/Object;
    .end local v60    # "updated0":Ljava/lang/Object;
    :cond_19
    sget-object p2, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    goto :goto_b

    .line 1448
    .restart local v8    # "e":Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;
    .restart local v49    # "interceptorVal":Ljava/lang/Object;
    .restart local v60    # "updated0":Ljava/lang/Object;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v60

    .line 1450
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v60

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v15

    move-object/from16 v4, v60

    .line 1462
    .end local v49    # "interceptorVal":Ljava/lang/Object;
    .end local v60    # "updated0":Ljava/lang/Object;
    :cond_1b
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;->key()Ljava/lang/Object;

    move-result-object v52

    .line 1463
    .restart local v52    # "key0":Ljava/lang/Object;
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;->value()Ljava/lang/Object;

    move-result-object v13

    .restart local v13    # "old0":Ljava/lang/Object;
    move-object v9, v4

    .line 1466
    .end local v8    # "e":Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;
    .end local v13    # "old0":Ljava/lang/Object;
    .end local v52    # "key0":Ljava/lang/Object;
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hasValueUnlocked()Z

    move-result v46

    .line 1468
    .local v46, "hadVal":Z
    const-wide/16 v58, 0x0

    .line 1469
    .restart local v58    # "ttl":J
    const-wide/16 v6, 0x0

    .line 1471
    .restart local v6    # "expireTime":J
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_1c

    .line 1472
    if-eqz p7, :cond_22

    .line 1473
    if-eqz v46, :cond_20

    invoke-interface/range {p7 .. p7}, Ljavax/cache/expiry/ExpiryPolicy;->getExpiryForUpdate()Ljavax/cache/expiry/Duration;

    move-result-object v4

    :goto_d
    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toTtl(Ljavax/cache/expiry/Duration;)J

    move-result-wide v58

    .line 1475
    const-wide/16 v10, -0x1

    cmp-long v4, v58, v10

    if-nez v4, :cond_21

    .line 1476
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ttlExtras()J

    move-result-wide v58

    .line 1477
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->expireTimeExtras()J

    move-result-wide v6

    .line 1488
    :cond_1c
    :goto_e
    const-wide/16 v10, -0x2

    cmp-long v4, v58, v10

    if-nez v4, :cond_1d

    .line 1489
    sget-object p2, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 1492
    :cond_1d
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_30

    .line 1494
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {v4, v15, v10}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->prepareForCache(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v15

    .line 1496
    if-eqz p5, :cond_1e

    .line 1498
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->keyValue(Z)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v14, 0x0

    invoke-static {v15, v12, v14}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v4, v10, v11, v12, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->putToStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    :cond_1e
    move-object/from16 v14, p0

    move-wide/from16 v16, v6

    move-object/from16 v18, p1

    move-object/from16 v19, v5

    .line 1502
    invoke-virtual/range {v14 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->updateIndex(Lorg/apache/ignite/internal/processors/cache/CacheObject;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 1504
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v4, :cond_23

    const-wide/16 v10, -0x2

    cmp-long v4, v58, v10

    if-nez v4, :cond_23

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1454
    .end local v6    # "expireTime":J
    .end local v46    # "hadVal":Z
    .end local v58    # "ttl":J
    :cond_1f
    new-instance v8, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object v12, v5

    invoke-direct/range {v8 .. v13}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljava/lang/Object;)V

    .line 1456
    .restart local v8    # "e":Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v9

    invoke-interface {v9, v8}, Lorg/apache/ignite/cache/CacheInterceptor;->onBeforeRemove(Ljavax/cache/Cache$Entry;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v48

    .line 1458
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v48

    invoke-virtual {v9, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cancelRemove(Lorg/apache/ignite/lang/IgniteBiTuple;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 1459
    new-instance v4, Lorg/apache/ignite/internal/util/lang/GridTuple3;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual/range {v48 .. v48}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v0, v50

    invoke-direct {v4, v9, v10, v0}, Lorg/apache/ignite/internal/util/lang/GridTuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit p0

    goto/16 :goto_7

    .line 1473
    .end local v8    # "e":Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;
    .restart local v6    # "expireTime":J
    .restart local v46    # "hadVal":Z
    .restart local v58    # "ttl":J
    :cond_20
    invoke-interface/range {p7 .. p7}, Ljavax/cache/expiry/ExpiryPolicy;->getExpiryForCreation()Ljavax/cache/expiry/Duration;

    move-result-object v4

    goto/16 :goto_d

    .line 1479
    :cond_21
    const-wide/16 v10, -0x2

    cmp-long v4, v58, v10

    if-eqz v4, :cond_1c

    .line 1480
    invoke-static/range {v58 .. v59}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toExpireTime(J)J

    move-result-wide v6

    goto/16 :goto_e

    .line 1483
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ttlExtras()J

    move-result-wide v58

    .line 1484
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->expireTimeExtras()J

    move-result-wide v6

    goto/16 :goto_e

    :cond_23
    move-object/from16 v14, p0

    move-wide/from16 v16, v6

    move-wide/from16 v18, v58

    move-object/from16 v20, p1

    .line 1506
    invoke-virtual/range {v14 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->update(Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 1508
    if-eqz p8, :cond_29

    .line 1509
    const/16 v23, 0x0

    .line 1511
    .local v23, "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v28, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v4

    const/16 v10, 0x40

    invoke-virtual {v4, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1512
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    check-cast v23, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 1514
    .restart local v23    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->partition()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    check-cast v21, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    const/16 v22, 0x40

    if-nez v23, :cond_24

    if-eqz v46, :cond_2c

    :cond_24
    const/16 v24, 0x1

    :goto_f
    if-nez v23, :cond_25

    if-eqz v46, :cond_2d

    :cond_25
    const/16 v26, 0x1

    :goto_10
    move-object/from16 v25, v23

    move-object/from16 v27, p12

    move-object/from16 v29, p13

    invoke-virtual/range {v16 .. v29}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v4

    const/16 v10, 0x3f

    invoke-virtual {v4, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1520
    if-nez v23, :cond_27

    .line 1521
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    check-cast v23, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 1523
    .restart local v23    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->partition()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v32

    const/16 v33, 0x0

    const/16 v34, 0x0

    check-cast v34, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    const/16 v35, 0x3f

    if-eqz v15, :cond_2e

    const/16 v37, 0x1

    :goto_11
    if-nez v23, :cond_28

    if-eqz v46, :cond_2f

    :cond_28
    const/16 v39, 0x1

    :goto_12
    const/16 v41, 0x0

    move-object/from16 v36, v15

    move-object/from16 v38, v23

    move-object/from16 v40, p12

    move-object/from16 v42, p13

    invoke-virtual/range {v29 .. v42}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    .end local v23    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_29
    :goto_13
    if-eqz v56, :cond_2a

    .line 1570
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->updateMetrics(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Z)V

    .line 1572
    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->continuousQueries()Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v17, p0

    move-object/from16 v20, v5

    invoke-virtual/range {v16 .. v21}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->onEntryUpdated(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;Z)V

    .line 1574
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dataStructures()Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_3d

    const/4 v4, 0x1

    :goto_14
    invoke-virtual {v10, v11, v4}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->onEntryUpdated(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Z)V

    .line 1576
    if-eqz p11, :cond_2b

    .line 1577
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_3e

    .line 1578
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v4

    new-instance v16, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v18, v0

    move-object/from16 v19, v52

    move-object/from16 v20, v15

    move-object/from16 v21, v9

    invoke-direct/range {v16 .. v21}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljava/lang/Object;)V

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Lorg/apache/ignite/cache/CacheInterceptor;->onAfterPut(Ljavax/cache/Cache$Entry;)V

    .line 1582
    :cond_2b
    :goto_15
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1584
    new-instance v9, Lorg/apache/ignite/internal/util/lang/GridTuple3;

    invoke-static/range {v56 .. v56}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    if-eqz v48, :cond_3f

    invoke-virtual/range {v48 .. v48}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v4

    :goto_16
    invoke-virtual {v11, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v50

    invoke-direct {v9, v10, v4, v0}, Lorg/apache/ignite/internal/util/lang/GridTuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v9

    goto/16 :goto_7

    .line 1514
    .restart local v23    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_2c
    const/16 v24, 0x0

    goto/16 :goto_f

    :cond_2d
    const/16 v26, 0x0

    goto/16 :goto_10

    .line 1523
    :cond_2e
    const/16 v37, 0x0

    goto/16 :goto_11

    :cond_2f
    const/16 v39, 0x0

    goto/16 :goto_12

    .line 1530
    .end local v23    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_30
    if-eqz p5, :cond_31

    .line 1532
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->keyValue(Z)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->removeFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Object;)Z

    .line 1534
    :cond_31
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valPtr:J

    const-wide/16 v16, 0x0

    cmp-long v4, v10, v16

    if-eqz v4, :cond_32

    const/16 v47, 0x1

    .line 1538
    .local v47, "hasValPtr":Z
    :goto_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->clearIndex(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 1540
    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v16, p0

    move-object/from16 v22, p1

    invoke-virtual/range {v16 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->update(Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 1542
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->offheapTiered()Z

    move-result v4

    if-eqz v4, :cond_33

    if-eqz v47, :cond_33

    .line 1543
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {v4, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->removeOffheap(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Z

    move-result v57

    .line 1545
    .local v57, "rmv":Z
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v4, :cond_33

    if-nez v57, :cond_33

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1534
    .end local v47    # "hasValPtr":Z
    .end local v57    # "rmv":Z
    :cond_32
    const/16 v47, 0x0

    goto :goto_17

    .line 1548
    .restart local v47    # "hasValPtr":Z
    :cond_33
    if-eqz p8, :cond_39

    .line 1549
    const/16 v23, 0x0

    .line 1551
    .restart local v23    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v28, :cond_36

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v4

    const/16 v10, 0x40

    invoke-virtual {v4, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1552
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->partition()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    check-cast v21, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    const/16 v22, 0x40

    if-nez v23, :cond_34

    if-eqz v46, :cond_3a

    :cond_34
    const/16 v24, 0x1

    :goto_18
    if-nez v23, :cond_35

    if-eqz v46, :cond_3b

    :cond_35
    const/16 v26, 0x1

    :goto_19
    move-object/from16 v25, v23

    move-object/from16 v27, p12

    move-object/from16 v29, p13

    invoke-virtual/range {v16 .. v29}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    :cond_36
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v4

    const/16 v10, 0x41

    invoke-virtual {v4, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1557
    if-nez v23, :cond_37

    .line 1558
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    check-cast v23, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 1560
    .restart local v23    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->partition()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v32

    const/16 v33, 0x0

    const/16 v34, 0x0

    check-cast v34, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    const/16 v35, 0x41

    const/16 v36, 0x0

    const/16 v37, 0x0

    if-nez v23, :cond_38

    if-eqz v46, :cond_3c

    :cond_38
    const/16 v39, 0x1

    :goto_1a
    const/16 v41, 0x0

    move-object/from16 v38, v23

    move-object/from16 v40, p12

    move-object/from16 v42, p13

    invoke-virtual/range {v29 .. v42}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    .end local v23    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_39
    move/from16 v56, v46

    goto/16 :goto_13

    .line 1552
    .restart local v23    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_3a
    const/16 v24, 0x0

    goto :goto_18

    :cond_3b
    const/16 v26, 0x0

    goto :goto_19

    .line 1560
    :cond_3c
    const/16 v39, 0x0

    goto :goto_1a

    .line 1574
    .end local v23    # "evtOld":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v47    # "hasValPtr":Z
    :cond_3d
    const/4 v4, 0x0

    goto/16 :goto_14

    .line 1580
    :cond_3e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v4

    new-instance v16, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v18, v0

    move-object/from16 v19, v52

    move-object/from16 v20, v5

    move-object/from16 v21, v13

    invoke-direct/range {v16 .. v21}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljava/lang/Object;)V

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Lorg/apache/ignite/cache/CacheInterceptor;->onAfterRemove(Ljavax/cache/Cache$Entry;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_15

    .line 1584
    :cond_3f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v12, 0x0

    invoke-static {v5, v4, v12}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_16

    .end local v6    # "expireTime":J
    .end local v46    # "hadVal":Z
    .end local v58    # "ttl":J
    :cond_40
    move-object v9, v4

    move-object/from16 v52, v11

    goto/16 :goto_c
.end method

.method public declared-synchronized invalidate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 2
    .param p1, "curVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "newVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2546
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2548
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2549
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->saveValueForIndexUnlocked()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v0

    .line 2551
    .local v0, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 2553
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 2555
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->releaseSwap()V

    .line 2557
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->clearIndex(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 2559
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->onInvalidate()V

    .line 2562
    .end local v0    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_2
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->obsoleteVersionExtras()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public invalidate([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 4
    .param p1, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 2575
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmptyOrNulls([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2576
    monitor-enter p0

    .line 2577
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 2579
    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->nextVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->invalidate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    .line 2581
    monitor-exit p0

    .line 2608
    :goto_0
    return v1

    .line 2582
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2588
    :cond_0
    monitor-enter p0

    .line 2589
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 2591
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 2592
    .local v0, "startVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2594
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isAll(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2595
    const/4 v1, 0x0

    goto :goto_0

    .line 2592
    .end local v0    # "startVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 2597
    .restart local v0    # "startVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_1
    monitor-enter p0

    .line 2598
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 2600
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2601
    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->nextVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->invalidate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    .line 2603
    monitor-exit p0

    goto :goto_0

    .line 2605
    :catchall_2
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    :cond_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2608
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->invalidate([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v1

    goto :goto_0
.end method

.method public isDht()Z
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public isInternal()Z
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->internal()Z

    move-result v0

    return v0
.end method

.method public isLocal()Z
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public isNear()Z
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public isNew()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 349
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 351
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 353
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isStartVersion()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isNewLocked()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 358
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 360
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isStartVersion()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isOffHeapValuesOnly()Z
    .locals 2

    .prologue
    .line 2702
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getMemoryMode()Lorg/apache/ignite/cache/CacheMemoryMode;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/cache/CacheMemoryMode;->OFFHEAP_VALUES:Lorg/apache/ignite/cache/CacheMemoryMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplicated()Z
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public isStartVersion()Z
    .locals 4

    .prologue
    .line 367
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->nodeOrder()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->order()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->startVer:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .locals 1

    .prologue
    .line 2717
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    return-object v0
.end method

.method protected keyValue(Z)Ljava/lang/Object;
    .locals 2
    .param p1, "cpy"    # Z

    .prologue
    .line 1100
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized localCandidate(J)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 3
    .param p1, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 3468
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 3470
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3472
    .local v0, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->localCandidate(J)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 3468
    .end local v0    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public varargs declared-synchronized localCandidates([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;
    .locals 2
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 3443
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 3445
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v0

    .line 3447
    .local v0, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->localCandidates([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 3443
    .end local v0    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized localOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 3492
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 3494
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3496
    .local v0, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->localOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 3492
    .end local v0    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized lockedBy(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 2
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 3405
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 3407
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v0

    .line 3409
    .local v0, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isOwnedBy(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3405
    .end local v0    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public varargs declared-synchronized lockedByAny([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 2
    .param p1, "exclude"    # [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 3355
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 3357
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v0

    .line 3359
    .local v0, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3355
    .end local v0    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public lockedByThread()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 3364
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->lockedByThread(J)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized lockedByThread(J)Z
    .locals 5
    .param p1, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3396
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 3398
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v0

    .line 3400
    .local v0, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-array v4, v4, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0, p1, p2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isLocallyOwnedByThread(JZ[Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 3396
    .end local v0    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized lockedByThread(JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 7
    .param p1, "threadId"    # J
    .param p3, "exclude"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3379
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 3381
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v0

    .line 3383
    .local v0, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-eqz v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-virtual {v0, p1, p2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isLocallyOwnedByThread(JZ[Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 3379
    .end local v0    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized lockedByThreadUnsafe(J)Z
    .locals 5
    .param p1, "threadId"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3414
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v0

    .line 3416
    .local v0, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-array v4, v4, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0, p1, p2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isLocallyOwnedByThread(JZ[Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 3414
    .end local v0    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized lockedByUnsafe(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 2
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 3421
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v0

    .line 3423
    .local v0, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isOwnedBy(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3421
    .end local v0    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized lockedLocally(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 2
    .param p1, "lockVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 3369
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 3371
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v0

    .line 3373
    .local v0, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isLocallyOwned(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3369
    .end local v0    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized lockedLocallyByIdOrThread(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;J)Z
    .locals 2
    .param p1, "lockVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 3389
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v0

    .line 3391
    .local v0, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isLocallyOwnedByIdOrThread(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3389
    .end local v0    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized lockedLocallyUnsafe(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 2
    .param p1, "lockVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 3428
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v0

    .line 3430
    .local v0, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isLocallyOwned(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3428
    .end local v0    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public markObsolete(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 2
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 2419
    monitor-enter p0

    .line 2420
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->markObsolete0(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)Z

    move-result v0

    .line 2421
    .local v0, "obsolete":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2423
    if-eqz v0, :cond_0

    .line 2424
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->onMarkedObsolete()V

    .line 2426
    :cond_0
    return v0

    .line 2421
    .end local v0    # "obsolete":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected final markObsolete0(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)Z
    .locals 5
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "clear"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2500
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2502
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->obsoleteVersionExtras()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    .line 2504
    .local v1, "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-eqz p1, :cond_5

    .line 2506
    if-eqz v1, :cond_2

    .line 2523
    :cond_1
    :goto_0
    return v2

    .line 2509
    :cond_2
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v0

    .line 2511
    .local v0, "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    if-eqz v0, :cond_3

    new-array v4, v2, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    aput-object p1, v4, v3

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2512
    :cond_3
    move-object v1, p1

    .line 2514
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->obsoleteVersionExtras(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 2516
    if-eqz p2, :cond_4

    .line 2517
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 2520
    :cond_4
    if-nez v1, :cond_1

    move v2, v3

    goto :goto_0

    .line 2523
    .end local v0    # "mvcc":Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    :cond_5
    if-nez v1, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method public markObsoleteIfEmpty(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 9
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2431
    const/4 v8, 0x0

    .line 2432
    .local v8, "obsolete":Z
    const/4 v7, 0x0

    .line 2435
    .local v7, "deferred":Z
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2436
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->obsoleteVersionExtras()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2437
    const/4 v0, 0x0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2458
    if-eqz v8, :cond_0

    .line 2459
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->onMarkedObsolete()V

    .line 2461
    :cond_0
    if-eqz v7, :cond_1

    .line 2462
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->onDeferredDelete(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 2465
    :cond_1
    :goto_0
    return v0

    .line 2439
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hasValueUnlocked()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkExpired()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2440
    :cond_3
    if-nez p1, :cond_4

    .line 2441
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->nextVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object p1

    .line 2443
    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deferredDelete()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isStartVersion()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->detached()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isInternal()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2444
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2445
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->update(Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 2447
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked(Z)V

    .line 2449
    const/4 v7, 0x1

    .line 2455
    :cond_5
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2458
    if-eqz v8, :cond_6

    .line 2459
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->onMarkedObsolete()V

    .line 2461
    :cond_6
    if-eqz v7, :cond_7

    .line 2462
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->onDeferredDelete(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    :cond_7
    move v0, v8

    .line 2465
    goto :goto_0

    .line 2453
    :cond_8
    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->markObsolete0(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)Z

    move-result v8

    goto :goto_1

    .line 2455
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2458
    :catchall_1
    move-exception v0

    if-eqz v8, :cond_9

    .line 2459
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->onMarkedObsolete()V

    .line 2461
    :cond_9
    if-eqz v7, :cond_a

    .line 2462
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->onDeferredDelete(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    :cond_a
    throw v0
.end method

.method public markObsoleteVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 2
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    const/4 v0, 0x1

    .line 2470
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deferredDelete()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2474
    :cond_0
    monitor-enter p0

    .line 2475
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->obsoleteVersionExtras()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2476
    monitor-exit p0

    .line 2487
    :cond_1
    :goto_0
    return v0

    .line 2478
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2479
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 2482
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2481
    :cond_3
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->markObsolete0(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)Z

    move-result v0

    .line 2482
    .local v0, "marked":Z
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2484
    if-eqz v0, :cond_1

    .line 2485
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->onMarkedObsolete()V

    goto :goto_0
.end method

.method public memorySize()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 291
    const/4 v2, 0x0

    .line 295
    .local v2, "vb":[B
    monitor-enter p0

    .line 296
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V

    .line 298
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->valueBytes(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)[B

    move-result-object v1

    .line 300
    .local v1, "kb":[B
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v3, :cond_0

    .line 301
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V

    .line 303
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->valueBytes(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)[B

    move-result-object v2

    .line 306
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->extrasSize()I

    move-result v0

    .line 307
    .local v0, "extrasSize":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    add-int/lit16 v3, v0, 0x89

    array-length v4, v1

    add-int/2addr v4, v3

    if-nez v2, :cond_1

    const/4 v3, 0x1

    :goto_0
    add-int/2addr v3, v4

    return v3

    .line 307
    .end local v0    # "extrasSize":I
    .end local v1    # "kb":[B
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 309
    .restart local v0    # "extrasSize":I
    .restart local v1    # "kb":[B
    :cond_1
    array-length v3, v2

    goto :goto_0
.end method

.method public meta(Ljava/util/UUID;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/UUID;",
            ")TV1;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4039
    const-string v1, "name"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4041
    monitor-enter p0

    .line 4042
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->attributeDataExtras()Lorg/apache/ignite/internal/util/GridLeanMap;

    move-result-object v0

    .line 4044
    .local v0, "attrData":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<Ljava/util/UUID;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridLeanMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 4045
    .end local v0    # "attrData":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<Ljava/util/UUID;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected mvccExtras()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4243
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->extras:Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->extras:Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected mvccExtras(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V
    .locals 1
    .param p1, "mvcc"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 4250
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->extras:Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->extras:Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;->mvcc(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->extras:Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;

    .line 4251
    return-void

    .line 4250
    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccEntryExtras;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccEntryExtras;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method next(I)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .locals 1
    .param p1, "segId"    # I

    .prologue
    .line 2748
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->next0:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->next1:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    goto :goto_0
.end method

.method next(ILorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;)V
    .locals 1
    .param p1, "segId"    # I
    .param p2, "next"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2758
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    .line 2759
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->next0:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    .line 2762
    :goto_0
    return-void

    .line 2761
    :cond_0
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->next1:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    goto :goto_0
.end method

.method public final declared-synchronized obsolete()Z
    .locals 1

    .prologue
    .line 2533
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->obsoleteVersionExtras()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized obsolete(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 2
    .param p1, "exclude"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 2538
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->obsoleteVersionExtras()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    .line 2540
    .local v0, "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2538
    .end local v0    # "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized obsoleteOrDeleted()Z
    .locals 1

    .prologue
    .line 4184
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->obsoleteVersionExtras()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deferredDelete()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hasValueUnlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized obsoleteVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 2412
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->obsoleteVersionExtras()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
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

.method protected obsoleteVersionExtras()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4257
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->extras:Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->extras:Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;->obsoleteVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected obsoleteVersionExtras(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 1
    .param p1, "obsoleteVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 4264
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->extras:Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->extras:Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;->obsoleteVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->extras:Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;

    .line 4266
    return-void

    .line 4264
    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteEntryExtras;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteEntryExtras;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 0

    .prologue
    .line 2570
    return-void
.end method

.method public onMarkedObsolete()V
    .locals 0

    .prologue
    .line 2529
    return-void
.end method

.method public onTtlExpired(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 20
    .param p1, "obsoleteVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 3513
    const/16 v19, 0x0

    .line 3514
    .local v19, "obsolete":Z
    const/4 v15, 0x0

    .line 3517
    .local v15, "deferred":Z
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3518
    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 3520
    .local v10, "expiredVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valPtr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    const/16 v18, 0x1

    .line 3522
    .local v18, "hasOldBytes":Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkExpired()Z

    move-result v17

    .line 3524
    .local v17, "expired":Z
    if-eqz v17, :cond_3

    .line 3525
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deferredDelete()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->detached()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isInternal()Z

    move-result v2

    if-nez v2, :cond_7

    .line 3526
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3527
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->update(Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 3529
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked(Z)V

    .line 3531
    const/4 v15, 0x1

    .line 3539
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v2

    const/16 v3, 0x46

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3540
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->partition()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x46

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-nez v10, :cond_1

    if-eqz v18, :cond_8

    :cond_1
    const/4 v11, 0x1

    :goto_2
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v2 .. v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 3554
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->continuousQueries()Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v10}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->onEntryExpired(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 3556
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3562
    if-eqz v19, :cond_4

    .line 3563
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->onMarkedObsolete()V

    .line 3565
    :cond_4
    if-eqz v15, :cond_5

    .line 3566
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->onDeferredDelete(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 3569
    .end local v10    # "expiredVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v17    # "expired":Z
    .end local v18    # "hasOldBytes":Z
    :cond_5
    :goto_3
    return v19

    .line 3520
    .restart local v10    # "expiredVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 3535
    .restart local v17    # "expired":Z
    .restart local v18    # "hasOldBytes":Z
    :cond_7
    const/4 v2, 0x1

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->markObsolete0(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3536
    const/16 v19, 0x1

    goto :goto_1

    .line 3540
    :cond_8
    const/4 v11, 0x0

    goto :goto_2

    .line 3556
    .end local v10    # "expiredVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v17    # "expired":Z
    .end local v18    # "hasOldBytes":Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3558
    :catch_0
    move-exception v16

    .line 3559
    .local v16, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_4
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to clean up expired cache entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3562
    if-eqz v19, :cond_9

    .line 3563
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->onMarkedObsolete()V

    .line 3565
    :cond_9
    if-eqz v15, :cond_5

    .line 3566
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->onDeferredDelete(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    goto :goto_3

    .line 3562
    .end local v16    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_1
    move-exception v2

    if-eqz v19, :cond_a

    .line 3563
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->onMarkedObsolete()V

    .line 3565
    :cond_a
    if-eqz v15, :cond_b

    .line 3566
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->onDeferredDelete(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    :cond_b
    throw v2
.end method

.method public partition()I
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    return v0
.end method

.method public partitionValid()Z
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x1

    return v0
.end method

.method public peek(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 8
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;",
            ">;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .local p1, "modes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;>;"
    const/4 v6, 0x0

    .line 2820
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 2822
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    .line 2824
    .local v3, "mode":Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;
    const/4 v5, 0x0

    :try_start_0
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->localTxx()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v7

    invoke-virtual {p0, v5, v3, p2, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->peek0(ZLorg/apache/ignite/internal/processors/cache/GridCachePeekMode;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v4

    .line 2826
    .local v4, "val":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    if-eqz v4, :cond_1

    .line 2827
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2839
    .end local v3    # "mode":Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;
    .end local v4    # "val":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    :goto_0
    return-object v5

    .line 2829
    .restart local v3    # "mode":Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;
    :catch_0
    move-exception v2

    .line 2830
    .local v2, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_2
    move-object v5, v6

    .line 2832
    goto :goto_0

    .line 2834
    .end local v2    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    :catch_1
    move-exception v0

    .line 2835
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v5, Lorg/apache/ignite/IgniteException;

    const-string v6, "Unable to perform entry peek() operation."

    invoke-direct {v5, v6, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v3    # "mode":Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;
    :cond_3
    move-object v5, v6

    .line 2839
    goto :goto_0
.end method

.method public peek(Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 6
    .param p1, "mode"    # Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2769
    const/4 v3, 0x0

    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->localTxx()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v5

    invoke-virtual {p0, v3, p1, p2, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->peek0(ZLorg/apache/ignite/internal/processors/cache/GridCachePeekMode;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v2

    .line 2771
    .local v2, "peek":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2776
    .end local v2    # "peek":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    :goto_0
    return-object v3

    .restart local v2    # "peek":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    :cond_0
    move-object v3, v4

    .line 2771
    goto :goto_0

    .line 2773
    .end local v2    # "peek":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    :catch_0
    move-exception v1

    .line 2774
    .local v1, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_1
    move-object v3, v4

    .line 2776
    goto :goto_0

    .line 2778
    .end local v1    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    :catch_1
    move-exception v0

    .line 2779
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v3, Lorg/apache/ignite/IgniteException;

    const-string v4, "Unable to perform entry peek() operation."

    invoke-direct {v3, v4, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public peek(ZZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 6
    .param p1, "heap"    # Z
    .param p2, "offheap"    # Z
    .param p3, "swap"    # Z
    .param p4, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p5, "expiryPlc"    # Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2791
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2794
    :cond_0
    if-eqz p1, :cond_1

    .line 2795
    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-direct {p0, v3, p4, v5, p5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->peekGlobal(ZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v2

    .line 2797
    .local v2, "val":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    if-eqz v2, :cond_1

    .line 2798
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 2812
    .end local v2    # "val":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    :goto_0
    return-object v3

    .line 2801
    :cond_1
    if-nez p2, :cond_2

    if-eqz p3, :cond_4

    .line 2802
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, p0, v5, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->read(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;ZZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v0

    .line 2804
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v4

    goto :goto_0

    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    :cond_4
    move-object v3, v4

    .line 2807
    goto :goto_0

    .line 2809
    :catch_0
    move-exception v1

    .line 2810
    .local v1, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_5
    move-object v3, v4

    .line 2812
    goto :goto_0
.end method

.method public peek0(ZLorg/apache/ignite/internal/processors/cache/GridCachePeekMode;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/util/lang/GridTuple;
    .locals 4
    .param p1, "failFast"    # Z
    .param p2, "mode"    # Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .param p4, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ")",
            "Lorg/apache/ignite/internal/util/lang/GridTuple",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;,
            Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2856
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-eqz p4, :cond_0

    invoke-interface {p4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->local()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2858
    :cond_0
    if-eqz p4, :cond_1

    invoke-interface {p4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    .line 2860
    .local v0, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :goto_0
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$1;->$SwitchMap$org$apache$ignite$internal$processors$cache$GridCachePeekMode:[I

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2895
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2858
    .end local v0    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    goto :goto_0

    .line 2862
    .restart local v0    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :pswitch_0
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->peekTx(Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v1

    .line 2897
    :cond_2
    :goto_1
    return-object v1

    .line 2865
    :pswitch_1
    invoke-direct {p0, p1, v0, p3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->peekGlobal(ZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v1

    goto :goto_1

    .line 2868
    :pswitch_2
    invoke-direct {p0, p1, v0, p3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->peekGlobal(ZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v1

    goto :goto_1

    .line 2871
    :pswitch_3
    invoke-direct {p0, p1, v0, p3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->peekGlobal(ZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v1

    goto :goto_1

    .line 2885
    :pswitch_4
    if-eqz p4, :cond_3

    invoke-interface {p4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/transactions/TransactionState;->ACTIVE:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v2, v3, :cond_4

    :cond_3
    invoke-direct {p0, p1, v0, p3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->peekGlobal(ZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->peekTxThenGlobal(Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v1

    goto :goto_1

    .line 2889
    :pswitch_5
    invoke-direct {p0, p1, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->peekSwap(Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v1

    goto :goto_1

    .line 2892
    :pswitch_6
    invoke-direct {p0, p1, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->peekDb(Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v1

    goto :goto_1

    .line 2860
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public peekVisibleValue()Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3781
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->userTx()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v3

    .line 3783
    .local v3, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    if-eqz v3, :cond_1

    .line 3784
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    const/4 v8, 0x0

    invoke-interface {v3, v5, v6, v7, v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->peek(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;ZLorg/apache/ignite/internal/processors/cache/KeyCacheObject;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v2

    .line 3786
    .local v2, "peek":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    if-eqz v2, :cond_1

    .line 3787
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 3800
    .end local v2    # "peek":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    :cond_0
    :goto_0
    return-object v4

    .line 3790
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->detached()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3791
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->rawGet()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v4

    goto :goto_0

    .line 3802
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :catch_0
    move-exception v5

    .line 3794
    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 3796
    .restart local v0    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-eqz v0, :cond_0

    .line 3800
    :try_start_1
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->GLOBAL:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->peek(Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_0

    .line 3807
    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v3    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :catch_1
    move-exception v1

    .line 3808
    .local v1, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    new-instance v4, Lorg/apache/ignite/IgniteException;

    const-string v5, "Should never happen."

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public poke(Lorg/apache/ignite/internal/processors/cache/CacheObject;)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 13
    .param p1, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2903
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2907
    :cond_0
    monitor-enter p0

    .line 2908
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 2910
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isNew()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valid(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2911
    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->unswap(ZZ)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 2913
    :cond_2
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2914
    const/4 v5, 0x0

    monitor-exit p0

    .line 2934
    :cond_3
    :goto_0
    return-object v5

    .line 2916
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->rawGetOrUnmarshalUnlocked(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v5

    .line 2918
    .local v5, "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->nextVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    .line 2922
    .local v4, "nextVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->expireTimeExtras()J

    move-result-wide v2

    .line 2924
    .local v2, "expireTime":J
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->prepareForCache(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object p1

    move-object v0, p0

    move-object v1, p1

    .line 2926
    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->updateIndex(Lorg/apache/ignite/internal/processors/cache/CacheObject;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 2928
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ttlExtras()J

    move-result-wide v10

    move-object v6, p0

    move-object v7, p1

    move-wide v8, v2

    move-object v12, v4

    invoke-virtual/range {v6 .. v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->update(Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 2929
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2931
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2932
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Poked cache entry [newVal="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", oldVal="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", entry="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v6, 0x5d

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 2929
    .end local v2    # "expireTime":J
    .end local v4    # "nextVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v5    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public putMetaIfAbsent(Ljava/util/UUID;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/UUID;",
            "TV1;)TV1;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4102
    .local p2, "val":Ljava/lang/Object;, "TV1;"
    const-string v1, "name"

    const-string/jumbo v2, "val"

    invoke-static {p1, v1, p2, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 4104
    monitor-enter p0

    .line 4105
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->meta(Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v0

    .line 4107
    .local v0, "v":Ljava/lang/Object;, "TV1;"
    if-nez v0, :cond_0

    .line 4108
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->addMeta(Ljava/util/UUID;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "v":Ljava/lang/Object;, "TV1;"
    monitor-exit p0

    .line 4110
    :goto_0
    return-object v0

    .restart local v0    # "v":Ljava/lang/Object;, "TV1;"
    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 4111
    .end local v0    # "v":Ljava/lang/Object;, "TV1;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized rawExpireTime()J
    .locals 2

    .prologue
    .line 3501
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->expireTimeExtras()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized rawGet()Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 1

    .prologue
    .line 3131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized rawGetOrUnmarshal(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 1
    .param p1, "tmp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 3136
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->rawGetOrUnmarshalUnlocked(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;
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

.method public rawGetOrUnmarshalUnlocked(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 6
    .param p1, "tmp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 3145
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 3147
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 3149
    .local v0, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v0, :cond_1

    .line 3161
    .end local v0    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :goto_0
    return-object v0

    .line 3152
    .restart local v0    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_1
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valPtr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 3153
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valPtr:J

    invoke-virtual {v2, v4, v5, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->fromOffheap(JZ)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    .line 3155
    .local v1, "val0":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-nez p1, :cond_2

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3156
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/ClassLoader;)V

    :cond_2
    move-object v0, v1

    .line 3158
    goto :goto_0

    .line 3161
    .end local v1    # "val0":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized rawPut(Lorg/apache/ignite/internal/processors/cache/CacheObject;J)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 8
    .param p1, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .param p2, "ttl"    # J

    .prologue
    .line 3180
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 3182
    .local v7, "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    invoke-static {p2, p3}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toExpireTime(J)J

    move-result-wide v2

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->nextVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->update(Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3184
    monitor-exit p0

    return-object v7

    .line 3180
    .end local v7    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized rawTtl()J
    .locals 2

    .prologue
    .line 3574
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ttlExtras()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected readExternalMeta(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 4165
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/GridLeanMap;

    .line 4167
    .local v0, "cp":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<Ljava/util/UUID;Ljava/lang/Object;>;"
    monitor-enter p0

    .line 4168
    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->attributeDataExtras(Lorg/apache/ignite/internal/util/GridLeanMap;)V

    .line 4169
    monitor-exit p0

    .line 4170
    return-void

    .line 4169
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected readThrough(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ZLjava/util/UUID;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p3, "reload"    # Z
    .param p4, "subjId"    # Ljava/util/UUID;
    .param p5, "taskName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 595
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->loadFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected recordNodeId(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 0
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 939
    return-void
.end method

.method protected final releaseSwap()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isSwapOrOffheapEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    monitor-enter p0

    .line 575
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->remove(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V

    .line 576
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed swap entry [entry="

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

    .line 581
    :cond_0
    return-void

    .line 576
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public varargs remoteMvccSnapshot([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;
    .locals 1
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
    .line 3452
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeMeta(Ljava/util/UUID;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/UUID;",
            ")TV1;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 4051
    const-string v2, "name"

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4053
    monitor-enter p0

    .line 4054
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->attributeDataExtras()Lorg/apache/ignite/internal/util/GridLeanMap;

    move-result-object v0

    .line 4056
    .local v0, "attrData":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<Ljava/util/UUID;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 4057
    monitor-exit p0

    .line 4064
    :goto_0
    return-object v1

    .line 4059
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridLeanMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4061
    .local v1, "old":Ljava/lang/Object;, "TV1;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridLeanMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4062
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->attributeDataExtras(Lorg/apache/ignite/internal/util/GridLeanMap;)V

    .line 4064
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 4065
    .end local v0    # "attrData":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<Ljava/util/UUID;Ljava/lang/Object;>;"
    .end local v1    # "old":Ljava/lang/Object;, "TV1;"
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeMeta(Ljava/util/UUID;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "name"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/UUID;",
            "TV1;)Z"
        }
    .end annotation

    .prologue
    .local p2, "val":Ljava/lang/Object;, "TV1;"
    const/4 v2, 0x0

    .line 4071
    const-string v3, "name"

    const-string/jumbo v4, "val"

    invoke-static {p1, v3, p2, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 4073
    monitor-enter p0

    .line 4074
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->attributeDataExtras()Lorg/apache/ignite/internal/util/GridLeanMap;

    move-result-object v0

    .line 4076
    .local v0, "attrData":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<Ljava/util/UUID;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 4077
    monitor-exit p0

    .line 4090
    :goto_0
    return v2

    .line 4079
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridLeanMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4081
    .local v1, "old":Ljava/lang/Object;, "TV1;"
    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4082
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridLeanMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4084
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridLeanMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4085
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->attributeDataExtras(Lorg/apache/ignite/internal/util/GridLeanMap;)V

    .line 4087
    :cond_1
    const/4 v2, 0x1

    monitor-exit p0

    goto :goto_0

    .line 4091
    .end local v0    # "attrData":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<Ljava/util/UUID;Ljava/lang/Object;>;"
    .end local v1    # "old":Ljava/lang/Object;, "TV1;"
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4090
    .restart local v0    # "attrData":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<Ljava/util/UUID;Ljava/lang/Object;>;"
    .restart local v1    # "old":Ljava/lang/Object;, "TV1;"
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public replaceMeta(Ljava/util/UUID;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "name"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/UUID;",
            "TV1;TV1;)Z"
        }
    .end annotation

    .prologue
    .line 4117
    .local p2, "curVal":Ljava/lang/Object;, "TV1;"
    .local p3, "newVal":Ljava/lang/Object;, "TV1;"
    const-string v1, "name"

    const-string v3, "newVal"

    const-string v5, "curVal"

    move-object v0, p1

    move-object v2, p3

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 4119
    monitor-enter p0

    .line 4120
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hasMeta(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4121
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->meta(Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v6

    .line 4123
    .local v6, "val":Ljava/lang/Object;, "TV1;"
    if-eqz v6, :cond_0

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4124
    invoke-virtual {p0, p1, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->addMeta(Ljava/util/UUID;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4126
    const/4 v0, 0x1

    monitor-exit p0

    .line 4130
    .end local v6    # "val":Ljava/lang/Object;, "TV1;"
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 4131
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected saveValueForIndexUnlocked()Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 3727
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 3729
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->queries()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    move-result-object v3

    if-nez v3, :cond_2

    move-object v1, v2

    .line 3743
    :cond_1
    :goto_0
    return-object v1

    .line 3732
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->rawGetOrUnmarshalUnlocked(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    .line 3734
    .local v1, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-nez v1, :cond_1

    .line 3735
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {v3, v4, v5, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->read(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v0

    .line 3737
    .local v0, "swapEntry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    if-nez v0, :cond_3

    move-object v1, v2

    .line 3738
    goto :goto_0

    .line 3740
    :cond_3
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    goto :goto_0
.end method

.method public startVersion()J
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->startVer:J

    return-wide v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4328
    monitor-enter p0

    :try_start_0
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;
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

.method public ttl()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 3599
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->currentTx()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    move-result-object v2

    .line 3601
    .local v2, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    if-eqz v2, :cond_0

    .line 3602
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->entryTtl(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)J

    move-result-wide v0

    .line 3604
    .local v0, "entryTtl":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 3611
    .end local v0    # "entryTtl":J
    :goto_0
    return-wide v0

    .line 3608
    :cond_0
    monitor-enter p0

    .line 3609
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 3611
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ttlExtras()J

    move-result-wide v0

    monitor-exit p0

    goto :goto_0

    .line 3612
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected ttlAndExpireTimeExtras(JJ)V
    .locals 3
    .param p1, "ttl"    # J
    .param p3, "expireTime"    # J

    .prologue
    .line 4302
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4304
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->extras:Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->extras:Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;->ttlAndExpireTime(JJ)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->extras:Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;

    .line 4306
    return-void

    .line 4304
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheTtlEntryExtras;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheTtlEntryExtras;-><init>(JJ)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ttlExtras()J
    .locals 2

    .prologue
    .line 4287
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->extras:Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->extras:Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;->ttl()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .locals 2

    .prologue
    .line 2722
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->txKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v0

    return-object v0
.end method

.method public unswap()Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 418
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->unswap(ZZ)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v0

    return-object v0
.end method

.method public unswap(ZZ)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 11
    .param p1, "ignoreFlags"    # Z
    .param p2, "needVal"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->SKIP_SWAP:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v10, 0x1

    .line 432
    .local v10, "swapEnabled":Z
    :goto_0
    if-nez v10, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isOffHeapEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 433
    const/4 v1, 0x0

    .line 488
    :goto_1
    return-object v1

    .line 430
    .end local v10    # "swapEnabled":Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 435
    .restart local v10    # "swapEnabled":Z
    :cond_2
    monitor-enter p0

    .line 436
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isStartVersion()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->flags:B

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_b

    .line 439
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->offheapTiered()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 440
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->readOffheapPointer(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v7

    .line 442
    .local v7, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    if-eqz v7, :cond_3

    .line 443
    invoke-interface {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->offheapPointer()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_6

    .line 444
    invoke-interface {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->offheapPointer()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valPtr:J

    .line 446
    if-eqz p2, :cond_3

    .line 447
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valPtr:J

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->fromOffheap(JZ)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    .line 449
    .local v1, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    invoke-interface {v7, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 459
    .end local v1    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_3
    :goto_2
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 460
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read swap entry [swapEntry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cacheEntry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 462
    :cond_4
    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->flags:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->flags:B

    .line 465
    if-eqz v7, :cond_b

    .line 466
    invoke-interface {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->expireTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_9

    const-wide/16 v8, 0x0

    .line 468
    .local v8, "delta":J
    :goto_3
    const-wide/16 v2, 0x0

    cmp-long v0, v8, v2

    if-ltz v0, :cond_a

    .line 469
    invoke-interface {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    .line 471
    .restart local v1    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->prepareForCache(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    .line 474
    invoke-interface {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->expireTime()J

    move-result-wide v2

    invoke-interface {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->ttl()J

    move-result-wide v4

    invoke-interface {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->update(Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 477
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->offheapTiered()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->offheapPointer()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    .line 478
    invoke-interface {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->offheapPointer()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valPtr:J

    .line 480
    :cond_5
    monitor-exit p0

    goto/16 :goto_1

    .line 486
    .end local v1    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v7    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    .end local v8    # "delta":J
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 453
    .restart local v7    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    :cond_6
    const-wide/16 v2, 0x0

    :try_start_1
    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valPtr:J

    goto/16 :goto_2

    .line 457
    .end local v7    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    :cond_7
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->detached()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v0, p0, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->read(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;ZZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v7

    .restart local v7    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    :goto_4
    goto/16 :goto_2

    .end local v7    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    :cond_8
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->readAndRemove(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v7

    goto :goto_4

    .line 466
    .restart local v7    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    :cond_9
    invoke-interface {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->expireTime()J

    move-result-wide v2

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    sub-long v8, v2, v4

    goto :goto_3

    .line 483
    .restart local v8    # "delta":J
    :cond_a
    invoke-interface {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->clearIndex(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 486
    .end local v7    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    .end local v8    # "delta":J
    :cond_b
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method protected final update(Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 6
    .param p1, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "expireTime"    # J
    .param p4, "ttl"    # J
    .param p6, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    const-wide/16 v4, 0x0

    .line 2620
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p6, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2621
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2622
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    const-wide/16 v2, -0x2

    cmp-long v2, p4, v2

    if-eqz v2, :cond_2

    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-eqz v2, :cond_2

    cmp-long v2, p4, v4

    if-gez v2, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, p4, p5}, Ljava/lang/AssertionError;-><init>(J)V

    throw v2

    .line 2624
    :cond_3
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->expireTimeExtras()J

    move-result-wide v0

    .line 2626
    .local v0, "oldExpireTime":J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_4

    cmp-long v2, p2, v0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/CacheConfiguration;->isEagerTtl()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2627
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ttl()Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->removeTrackedEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;)V

    .line 2629
    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 2631
    invoke-virtual {p0, p4, p5, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ttlAndExpireTimeExtras(JJ)V

    .line 2633
    cmp-long v2, p2, v4

    if-eqz v2, :cond_5

    cmp-long v2, p2, v0

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/CacheConfiguration;->isEagerTtl()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2634
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ttl()Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;->addTrackedEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;)V

    .line 2636
    :cond_5
    iput-object p6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 2637
    return-void
.end method

.method protected updateIndex(Lorg/apache/ignite/internal/processors/cache/CacheObject;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    .locals 10
    .param p1, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "expireTime"    # J
    .param p4, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p5, "prevVal"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 3678
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 3679
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "null values in update index for key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 3682
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->queries()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    move-result-object v0

    .line 3684
    .local v0, "qryMgr":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
    if-eqz v0, :cond_2

    .line 3685
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p4

    move-wide v6, p2

    invoke-virtual/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->store(Ljava/lang/Object;[BLjava/lang/Object;[BLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;J)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3696
    :cond_2
    return-void

    .line 3693
    .end local v0    # "qryMgr":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
    :catch_0
    move-exception v8

    .line 3694
    .local v8, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheIndexUpdateException;

    invoke-direct {v1, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheIndexUpdateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateTtl(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;J)V
    .locals 2
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "ttl"    # J

    .prologue
    .line 3627
    monitor-enter p0

    .line 3628
    :try_start_0
    invoke-direct {p0, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->updateTtl(J)V

    .line 3640
    monitor-exit p0

    .line 3641
    return-void

    .line 3640
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public valid(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z
    .locals 1
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 372
    const/4 v0, 0x1

    return v0
.end method

.method protected value(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    .locals 14
    .param p1, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    const-wide/16 v12, 0x0

    .line 191
    sget-boolean v8, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 194
    :cond_0
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->isIgfsDataCache()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->igfsHelper()Lorg/apache/ignite/internal/processors/igfs/IgfsHelper;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/internal/processors/igfs/IgfsHelper;->isIgfsBlockKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 196
    invoke-direct {p0, p1, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valueLength0(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/lang/IgniteBiTuple;)I

    move-result v3

    .line 197
    .local v3, "newSize":I
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-nez v9, :cond_1

    iget-wide v10, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valPtr:J

    cmp-long v9, v10, v12

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valueBytes0()Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v7

    :cond_1
    invoke-direct {p0, v8, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valueLength0(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/lang/IgniteBiTuple;)I

    move-result v4

    .line 199
    .local v4, "oldSize":I
    sub-int v0, v3, v4

    .line 201
    .local v0, "delta":I
    if-eqz v0, :cond_2

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v7

    if-nez v7, :cond_2

    .line 202
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v7

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->onIgfsDataSizeChanged(J)V

    .line 205
    .end local v0    # "delta":I
    .end local v3    # "newSize":I
    .end local v4    # "oldSize":I
    :cond_2
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isOffHeapValuesOnly()Z

    move-result v7

    if-nez v7, :cond_3

    .line 206
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 208
    iput-wide v12, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valPtr:J

    .line 250
    :goto_0
    return-void

    .line 212
    :cond_3
    :try_start_0
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 213
    const/4 v6, 0x0

    .line 215
    .local v6, "val0":Ljava/lang/Object;
    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->type()B

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4

    .line 216
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v9

    invoke-interface {p1, v9}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->valueBytes(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)[B

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->unmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;[BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v6

    .line 219
    if-eqz v6, :cond_4

    .line 220
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridDeploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->deploy(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .line 223
    .end local v6    # "val0":Ljava/lang/Object;
    :cond_4
    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->p2pLoader(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 224
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v8

    new-instance v9, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    invoke-direct {v9, v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;-><init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;)V

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->addDeploymentContext(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;)V

    .line 229
    :cond_5
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unsafeMemory()Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v2

    .line 231
    .local v2, "mem":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    sget-boolean v7, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v7, :cond_6

    if-nez v2, :cond_6

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v2    # "mem":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    sget-object v7, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to deserialize value [entry="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", val="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 247
    new-instance v7, Lorg/apache/ignite/IgniteException;

    invoke-direct {v7, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 233
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v2    # "mem":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    :cond_6
    if-eqz p1, :cond_7

    .line 234
    :try_start_1
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->type()B

    move-result v5

    .line 236
    .local v5, "type":B
    iget-wide v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valPtr:J

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v7

    invoke-interface {p1, v7}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->valueBytes(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)[B

    move-result-object v7

    invoke-virtual {v2, v8, v9, v7, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->putOffHeap(J[BB)J

    move-result-wide v8

    iput-wide v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valPtr:J

    goto/16 :goto_0

    .line 239
    .end local v5    # "type":B
    :cond_7
    iget-wide v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valPtr:J

    invoke-virtual {v2, v8, v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->removeOffHeap(J)V

    .line 241
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valPtr:J
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public declared-synchronized valueBytes()Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 3645
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 3647
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valueBytesUnlocked()Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 3645
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public valueBytes(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 2
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 3653
    const/4 v0, 0x0

    .line 3655
    .local v0, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    monitor-enter p0

    .line 3656
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 3658
    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3659
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valueBytesUnlocked()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v0

    .line 3660
    :cond_1
    monitor-exit p0

    .line 3662
    return-object v0

    .line 3660
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected valueBytes0()Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<[B",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 548
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 550
    :cond_0
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valPtr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 551
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isOffHeapValuesOnly()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->offheapTiered()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 553
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unsafeMemory()Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valPtr:J

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->get(J)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v2

    .line 561
    :goto_0
    return-object v2

    .line 556
    :cond_2
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 559
    :cond_3
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->valueBytes(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)[B

    move-result-object v0

    .line 561
    .local v0, "bytes":[B
    new-instance v2, Lorg/apache/ignite/lang/IgniteBiTuple;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->type()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 563
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    .line 564
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v2, Lorg/apache/ignite/IgniteException;

    invoke-direct {v2, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected valueBytesUnlocked()Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 6

    .prologue
    .line 275
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 277
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 279
    .local v1, "val0":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-nez v1, :cond_1

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valPtr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 280
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->valueBytes0()Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    .line 282
    .local v0, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<[BLjava/lang/Byte;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v3

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-interface {v3, v4, v5, v2}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->toCacheObject(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;B[B)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    .line 285
    .end local v0    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<[BLjava/lang/Byte;>;"
    .end local v1    # "val0":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_1
    return-object v1
.end method

.method public declared-synchronized version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 2727
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 2729
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2727
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized versionedEntry()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 3273
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isStartVersion()Z

    move-result v9

    .line 3275
    .local v9, "isNew":Z
    if-eqz v9, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->unswap(ZZ)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v0

    .line 3277
    .local v0, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :goto_0
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ttlExtras()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->expireTimeExtras()J

    move-result-wide v6

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->conflictVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    invoke-direct/range {v1 .. v9}, Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 3275
    .end local v0    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->rawGetOrUnmarshalUnlocked(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 3273
    .end local v9    # "isNew":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized versionedValue(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 13
    .param p1, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .param p2, "curVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p3, "newVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 3291
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkObsolete()V

    .line 3293
    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {p2, v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3294
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eq p1, v0, :cond_3

    .line 3295
    if-nez p3, :cond_1

    .line 3296
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->nextVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object p3

    .line 3298
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->rawGetOrUnmarshalUnlocked(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v5

    .line 3300
    .local v5, "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ttlExtras()J

    move-result-wide v10

    .line 3302
    .local v10, "ttl":J
    invoke-static {v10, v11}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toExpireTime(J)J

    move-result-wide v2

    .line 3305
    .local v2, "expTime":J
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->prepareForCache(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object p1

    .line 3307
    if-eqz p1, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p3

    .line 3308
    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->updateIndex(Lorg/apache/ignite/internal/processors/cache/CacheObject;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 3310
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3311
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deletedUnlocked(Z)V

    :cond_2
    move-object v6, p0

    move-object v7, p1

    move-wide v8, v2

    move-object/from16 v12, p3

    .line 3315
    invoke-virtual/range {v6 .. v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->update(Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3318
    .end local v2    # "expTime":J
    .end local v5    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v10    # "ttl":J
    :cond_3
    const/4 v0, 0x1

    .line 3321
    :goto_0
    monitor-exit p0

    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 3291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public visitable([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 8
    .param p1, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3963
    const/4 v3, 0x0

    .line 3966
    .local v3, "rmv":Z
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3967
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->obsoleteOrDeleted()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3968
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3996
    if-eqz v3, :cond_0

    .line 3997
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->onMarkedObsolete()V

    .line 3999
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map()Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    move-result-object v6

    invoke-virtual {v6, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    .line 4005
    :cond_0
    :goto_0
    return v5

    .line 3970
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->checkExpired()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3971
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->markObsolete0(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)Z

    move-result v3

    .line 3973
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3996
    if-eqz v3, :cond_0

    .line 3997
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->onMarkedObsolete()V

    .line 3999
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map()Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    move-result-object v6

    invoke-virtual {v6, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    goto :goto_0

    .line 3975
    :cond_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3977
    :try_start_4
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v7

    if-eq p1, v7, :cond_4

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isAll(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v7

    if-nez v7, :cond_4

    .line 3996
    if-eqz v3, :cond_0

    .line 3997
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->onMarkedObsolete()V

    .line 3999
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map()Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    move-result-object v6

    invoke-virtual {v6, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    goto :goto_0

    .line 3975
    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v6
    :try_end_6
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3980
    :catch_0
    move-exception v0

    .line 3981
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_7
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v7, "An exception was thrown while filter checking."

    invoke-static {v6, v7, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3983
    const-class v6, Ljava/lang/RuntimeException;

    invoke-virtual {v0, v6}, Lorg/apache/ignite/IgniteCheckedException;->getCause(Ljava/lang/Class;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/RuntimeException;

    .line 3985
    .local v2, "ex":Ljava/lang/RuntimeException;
    if-eqz v2, :cond_7

    .line 3986
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3996
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v5

    if-eqz v3, :cond_3

    .line 3997
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->onMarkedObsolete()V

    .line 3999
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map()Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    move-result-object v6

    invoke-virtual {v6, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    :cond_3
    throw v5

    .line 3996
    :cond_4
    if-eqz v3, :cond_5

    .line 3997
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->onMarkedObsolete()V

    .line 3999
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map()Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    move-result-object v7

    invoke-virtual {v7, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    .line 4003
    :cond_5
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->localTxx()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v4

    .line 4005
    .local v4, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->removed(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_6
    move v5, v6

    goto/16 :goto_0

    .line 3988
    .end local v4    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .restart local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    :cond_7
    :try_start_8
    const-class v6, Ljava/lang/Error;

    invoke-virtual {v0, v6}, Lorg/apache/ignite/IgniteCheckedException;->getCause(Ljava/lang/Class;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/Error;

    .line 3990
    .local v1, "err":Ljava/lang/Error;
    if-eqz v1, :cond_8

    .line 3991
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 3996
    :cond_8
    if-eqz v3, :cond_0

    .line 3997
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->onMarkedObsolete()V

    .line 3999
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map()Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    move-result-object v6

    invoke-virtual {v6, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    goto/16 :goto_0
.end method

.method public wrap()Ljavax/cache/Cache$Entry;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3750
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->userTx()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v3

    .line 3754
    .local v3, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    if-eqz v3, :cond_1

    .line 3755
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    const/4 v8, 0x0

    invoke-interface {v3, v5, v6, v7, v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->peek(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;ZLorg/apache/ignite/internal/processors/cache/KeyCacheObject;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v2

    .line 3757
    .local v2, "peek":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    if-nez v2, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->rawGetOrUnmarshal(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v4

    .line 3762
    .end local v2    # "peek":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .local v4, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :goto_0
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/CacheEntryImpl;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/ignite/internal/processors/cache/CacheEntryImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    .line 3757
    .end local v4    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v2    # "peek":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    :cond_0
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-object v4, v5

    goto :goto_0

    .line 3760
    .end local v2    # "peek":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->rawGetOrUnmarshal(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .restart local v4    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    goto :goto_0

    .line 3765
    .end local v3    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .end local v4    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catch_0
    move-exception v1

    .line 3766
    .local v1, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    new-instance v5, Lorg/apache/ignite/IgniteException;

    const-string v6, "Should never happen."

    invoke-direct {v5, v6}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3768
    .end local v1    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    :catch_1
    move-exception v0

    .line 3769
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v5, Lorg/apache/ignite/IgniteException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to wrap entry: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public wrapEviction()Lorg/apache/ignite/cache/eviction/EvictableEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/cache/eviction/EvictableEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3814
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    return-object v0
.end method

.method public wrapLazyValue()Ljavax/cache/Cache$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3775
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$1;)V

    return-object v0
.end method

.method public declared-synchronized wrapVersioned()Lorg/apache/ignite/internal/processors/cache/CacheVersionedEntryImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/processors/cache/CacheVersionedEntryImpl",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3819
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheVersionedEntryImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/CacheVersionedEntryImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected writeExternalMeta(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4147
    monitor-enter p0

    .line 4148
    :try_start_0
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->attributeDataExtras()Lorg/apache/ignite/internal/util/GridLeanMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>(Ljava/util/Map;)V

    .line 4149
    .local v0, "cp":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/lang/Object;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4151
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 4152
    return-void

    .line 4149
    .end local v0    # "cp":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
