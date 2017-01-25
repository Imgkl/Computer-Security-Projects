.class public Lorg/apache/ignite/configuration/CacheConfiguration;
.super Ljavax/cache/configuration/MutableConfiguration;
.source "CacheConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljavax/cache/configuration/MutableConfiguration",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field public static final ALL_NODES:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end field

.field public static final DFLT_BACKUPS:I = 0x0

.field public static final DFLT_CACHE_ATOMICITY_MODE:Lorg/apache/ignite/cache/CacheAtomicityMode;

.field public static final DFLT_CACHE_MODE:Lorg/apache/ignite/cache/CacheMode;

.field public static final DFLT_CACHE_SIZE:I = 0x186a0

.field public static final DFLT_COPY_ON_READ:Z = true

.field public static final DFLT_EAGER_TTL:Z = true

.field public static final DFLT_EVICT_KEY_BUFFER_SIZE:I = 0x400

.field public static final DFLT_EVICT_SYNCHRONIZED:Z = false

.field public static final DFLT_EVICT_SYNCHRONIZED_CONCURRENCY_LEVEL:I = 0x4

.field public static final DFLT_EVICT_SYNCHRONIZED_TIMEOUT:J = 0x2710L

.field public static final DFLT_INVALIDATE:Z = false

.field public static final DFLT_LOAD_PREV_VAL:Z = false

.field public static final DFLT_LOCK_TIMEOUT:J = 0x0L

.field public static final DFLT_LONG_QRY_WARN_TIMEOUT:J = 0xbb8L

.field public static final DFLT_MAX_CONCURRENT_ASYNC_OPS:I = 0x1f4

.field public static final DFLT_MAX_EVICTION_OVERFLOW_RATIO:F = 10.0f

.field public static final DFLT_MEMORY_MODE:Lorg/apache/ignite/cache/CacheMemoryMode;

.field public static final DFLT_NEAR_START_SIZE:I = 0x5b8d8

.field public static final DFLT_OFFHEAP_MEMORY:J = -0x1L

.field public static final DFLT_READ_FROM_BACKUP:Z = true

.field public static final DFLT_REBALANCE_BATCH_SIZE:I = 0x80000

.field public static final DFLT_REBALANCE_MODE:Lorg/apache/ignite/cache/CacheRebalanceMode;

.field public static final DFLT_REBALANCE_THREAD_POOL_SIZE:I = 0x2

.field public static final DFLT_REBALANCE_THROTTLE:J = 0x0L

.field public static final DFLT_REBALANCE_TIMEOUT:J = 0x2710L

.field public static final DFLT_SQL_ONHEAP_ROW_CACHE_SIZE:I = 0x2800

.field public static final DFLT_START_SIZE:I = 0x16e360

.field public static final DFLT_SWAP_ENABLED:Z = false

.field public static final DFLT_TIME_TO_LIVE:J = 0x0L

.field public static final DFLT_WRITE_BEHIND_BATCH_SIZE:I = 0x200

.field public static final DFLT_WRITE_BEHIND_CRITICAL_SIZE:I = 0x4000

.field public static final DFLT_WRITE_BEHIND_ENABLED:Z = false

.field public static final DFLT_WRITE_BEHIND_FLUSH_FREQUENCY:J = 0x1388L

.field public static final DFLT_WRITE_BEHIND_FLUSH_SIZE:I = 0x2800

.field public static final DFLT_WRITE_FROM_BEHIND_FLUSH_THREAD_CNT:I = 0x1

.field public static final SERVER_NODES:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private aff:Lorg/apache/ignite/cache/affinity/AffinityFunction;

.field private affMapper:Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

.field private atomicWriteOrderMode:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

.field private atomicityMode:Lorg/apache/ignite/cache/CacheAtomicityMode;

.field private backups:I

.field private cacheMode:Lorg/apache/ignite/cache/CacheMode;

.field private cpOnRead:Z

.field private dfltLockTimeout:J

.field private eagerTtl:Z

.field private evictFilter:Lorg/apache/ignite/cache/eviction/EvictionFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/cache/eviction/EvictionFilter",
            "<**>;"
        }
    .end annotation
.end field

.field private evictKeyBufSize:I

.field private evictMaxOverflowRatio:F

.field private evictPlc:Lorg/apache/ignite/cache/eviction/EvictionPolicy;

.field private evictSync:Z

.field private evictSyncConcurrencyLvl:I

.field private evictSyncTimeout:J

.field private indexedTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private interceptor:Lorg/apache/ignite/cache/CacheInterceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/cache/CacheInterceptor",
            "<**>;"
        }
    .end annotation
.end field

.field private invalidate:Z

.field private loadPrevVal:Z

.field private longQryWarnTimeout:J

.field private maxConcurrentAsyncOps:I

.field private memMode:Lorg/apache/ignite/cache/CacheMemoryMode;

.field private name:Ljava/lang/String;

.field private nearCfg:Lorg/apache/ignite/configuration/NearCacheConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/configuration/NearCacheConfiguration",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private nodeFilter:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end field

.field private offHeapMaxMem:J

.field private readFromBackup:Z

.field private rebalanceBatchSize:I

.field private rebalanceDelay:J

.field private rebalanceMode:Lorg/apache/ignite/cache/CacheRebalanceMode;

.field private rebalanceOrder:I

.field private rebalancePoolSize:I

.field private rebalanceThrottle:J

.field private rebalanceTimeout:J

.field private sqlEscapeAll:Z

.field private sqlFuncCls:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private sqlOnheapRowCacheSize:I

.field private startSize:I

.field private storeFactory:Ljavax/cache/configuration/Factory;

.field private swapEnabled:Z

.field private tmLookupClsName:Ljava/lang/String;

.field private ttl:J

.field private typeMeta:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cache/CacheTypeMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private writeBehindBatchSize:I

.field private writeBehindEnabled:Z

.field private writeBehindFlushFreq:J

.field private writeBehindFlushSize:I

.field private writeBehindFlushThreadCnt:I

.field private writeSync:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lorg/apache/ignite/cache/CacheMode;->PARTITIONED:Lorg/apache/ignite/cache/CacheMode;

    sput-object v0, Lorg/apache/ignite/configuration/CacheConfiguration;->DFLT_CACHE_MODE:Lorg/apache/ignite/cache/CacheMode;

    .line 78
    sget-object v0, Lorg/apache/ignite/cache/CacheAtomicityMode;->ATOMIC:Lorg/apache/ignite/cache/CacheAtomicityMode;

    sput-object v0, Lorg/apache/ignite/configuration/CacheConfiguration;->DFLT_CACHE_ATOMICITY_MODE:Lorg/apache/ignite/cache/CacheAtomicityMode;

    .line 96
    sget-object v0, Lorg/apache/ignite/cache/CacheRebalanceMode;->ASYNC:Lorg/apache/ignite/cache/CacheRebalanceMode;

    sput-object v0, Lorg/apache/ignite/configuration/CacheConfiguration;->DFLT_REBALANCE_MODE:Lorg/apache/ignite/cache/CacheRebalanceMode;

    .line 150
    sget-object v0, Lorg/apache/ignite/cache/CacheMemoryMode;->ONHEAP_TIERED:Lorg/apache/ignite/cache/CacheMemoryMode;

    sput-object v0, Lorg/apache/ignite/configuration/CacheConfiguration;->DFLT_MEMORY_MODE:Lorg/apache/ignite/cache/CacheMemoryMode;

    .line 156
    new-instance v0, Lorg/apache/ignite/configuration/CacheConfiguration$1;

    invoke-direct {v0}, Lorg/apache/ignite/configuration/CacheConfiguration$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/configuration/CacheConfiguration;->SERVER_NODES:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 165
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysTrue()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/configuration/CacheConfiguration;->ALL_NODES:Lorg/apache/ignite/lang/IgnitePredicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    const-wide/16 v8, 0x2710

    const/16 v6, 0x2800

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 330
    invoke-direct {p0}, Ljavax/cache/configuration/MutableConfiguration;-><init>()V

    .line 177
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalancePoolSize:I

    .line 180
    iput-wide v8, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalanceTimeout:J

    .line 183
    iput-wide v4, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->ttl:J

    .line 189
    iput-boolean v2, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictSync:Z

    .line 192
    const/16 v0, 0x400

    iput v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictKeyBufSize:I

    .line 195
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictSyncConcurrencyLvl:I

    .line 198
    iput-wide v8, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictSyncTimeout:J

    .line 204
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictMaxOverflowRatio:F

    .line 207
    iput-boolean v3, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->eagerTtl:Z

    .line 210
    iput-wide v4, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->dfltLockTimeout:J

    .line 213
    const v0, 0x16e360

    iput v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->startSize:I

    .line 228
    iput-boolean v2, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->loadPrevVal:Z

    .line 234
    sget-object v0, Lorg/apache/ignite/configuration/CacheConfiguration;->DFLT_CACHE_MODE:Lorg/apache/ignite/cache/CacheMode;

    iput-object v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->cacheMode:Lorg/apache/ignite/cache/CacheMode;

    .line 243
    iput v2, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->backups:I

    .line 246
    iput-boolean v2, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->invalidate:Z

    .line 252
    sget-object v0, Lorg/apache/ignite/configuration/CacheConfiguration;->DFLT_REBALANCE_MODE:Lorg/apache/ignite/cache/CacheRebalanceMode;

    iput-object v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalanceMode:Lorg/apache/ignite/cache/CacheRebalanceMode;

    .line 258
    const/high16 v0, 0x80000

    iput v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalanceBatchSize:I

    .line 261
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->offHeapMaxMem:J

    .line 264
    iput-boolean v2, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->swapEnabled:Z

    .line 267
    const/16 v0, 0x1f4

    iput v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->maxConcurrentAsyncOps:I

    .line 270
    iput-boolean v2, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeBehindEnabled:Z

    .line 273
    iput v6, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeBehindFlushSize:I

    .line 276
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeBehindFlushFreq:J

    .line 279
    iput v3, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeBehindFlushThreadCnt:I

    .line 282
    const/16 v0, 0x200

    iput v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeBehindBatchSize:I

    .line 285
    sget-object v0, Lorg/apache/ignite/configuration/CacheConfiguration;->DFLT_MEMORY_MODE:Lorg/apache/ignite/cache/CacheMemoryMode;

    iput-object v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->memMode:Lorg/apache/ignite/cache/CacheMemoryMode;

    .line 294
    iput-wide v4, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalanceThrottle:J

    .line 303
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->longQryWarnTimeout:J

    .line 309
    iput-boolean v3, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->readFromBackup:Z

    .line 324
    iput v6, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->sqlOnheapRowCacheSize:I

    .line 327
    iput-boolean v3, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->cpOnRead:Z

    .line 332
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    const-wide/16 v8, 0x2710

    const/16 v6, 0x2800

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 335
    invoke-direct {p0}, Ljavax/cache/configuration/MutableConfiguration;-><init>()V

    .line 177
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalancePoolSize:I

    .line 180
    iput-wide v8, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalanceTimeout:J

    .line 183
    iput-wide v4, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->ttl:J

    .line 189
    iput-boolean v2, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictSync:Z

    .line 192
    const/16 v0, 0x400

    iput v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictKeyBufSize:I

    .line 195
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictSyncConcurrencyLvl:I

    .line 198
    iput-wide v8, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictSyncTimeout:J

    .line 204
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictMaxOverflowRatio:F

    .line 207
    iput-boolean v3, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->eagerTtl:Z

    .line 210
    iput-wide v4, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->dfltLockTimeout:J

    .line 213
    const v0, 0x16e360

    iput v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->startSize:I

    .line 228
    iput-boolean v2, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->loadPrevVal:Z

    .line 234
    sget-object v0, Lorg/apache/ignite/configuration/CacheConfiguration;->DFLT_CACHE_MODE:Lorg/apache/ignite/cache/CacheMode;

    iput-object v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->cacheMode:Lorg/apache/ignite/cache/CacheMode;

    .line 243
    iput v2, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->backups:I

    .line 246
    iput-boolean v2, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->invalidate:Z

    .line 252
    sget-object v0, Lorg/apache/ignite/configuration/CacheConfiguration;->DFLT_REBALANCE_MODE:Lorg/apache/ignite/cache/CacheRebalanceMode;

    iput-object v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalanceMode:Lorg/apache/ignite/cache/CacheRebalanceMode;

    .line 258
    const/high16 v0, 0x80000

    iput v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalanceBatchSize:I

    .line 261
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->offHeapMaxMem:J

    .line 264
    iput-boolean v2, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->swapEnabled:Z

    .line 267
    const/16 v0, 0x1f4

    iput v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->maxConcurrentAsyncOps:I

    .line 270
    iput-boolean v2, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeBehindEnabled:Z

    .line 273
    iput v6, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeBehindFlushSize:I

    .line 276
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeBehindFlushFreq:J

    .line 279
    iput v3, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeBehindFlushThreadCnt:I

    .line 282
    const/16 v0, 0x200

    iput v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeBehindBatchSize:I

    .line 285
    sget-object v0, Lorg/apache/ignite/configuration/CacheConfiguration;->DFLT_MEMORY_MODE:Lorg/apache/ignite/cache/CacheMemoryMode;

    iput-object v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->memMode:Lorg/apache/ignite/cache/CacheMemoryMode;

    .line 294
    iput-wide v4, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalanceThrottle:J

    .line 303
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->longQryWarnTimeout:J

    .line 309
    iput-boolean v3, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->readFromBackup:Z

    .line 324
    iput v6, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->sqlOnheapRowCacheSize:I

    .line 327
    iput-boolean v3, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->cpOnRead:Z

    .line 336
    iput-object p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->name:Ljava/lang/String;

    .line 337
    return-void
.end method

.method public constructor <init>(Ljavax/cache/configuration/CompleteConfiguration;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/configuration/CompleteConfiguration",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    .local p1, "cfg":Ljavax/cache/configuration/CompleteConfiguration;, "Ljavax/cache/configuration/CompleteConfiguration<TK;TV;>;"
    const-wide/16 v2, 0x2710

    const/16 v8, 0x2800

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 345
    invoke-direct {p0, p1}, Ljavax/cache/configuration/MutableConfiguration;-><init>(Ljavax/cache/configuration/CompleteConfiguration;)V

    .line 177
    const/4 v1, 0x2

    iput v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalancePoolSize:I

    .line 180
    iput-wide v2, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalanceTimeout:J

    .line 183
    iput-wide v6, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->ttl:J

    .line 189
    iput-boolean v4, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictSync:Z

    .line 192
    const/16 v1, 0x400

    iput v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictKeyBufSize:I

    .line 195
    const/4 v1, 0x4

    iput v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictSyncConcurrencyLvl:I

    .line 198
    iput-wide v2, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictSyncTimeout:J

    .line 204
    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictMaxOverflowRatio:F

    .line 207
    iput-boolean v5, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->eagerTtl:Z

    .line 210
    iput-wide v6, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->dfltLockTimeout:J

    .line 213
    const v1, 0x16e360

    iput v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->startSize:I

    .line 228
    iput-boolean v4, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->loadPrevVal:Z

    .line 234
    sget-object v1, Lorg/apache/ignite/configuration/CacheConfiguration;->DFLT_CACHE_MODE:Lorg/apache/ignite/cache/CacheMode;

    iput-object v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->cacheMode:Lorg/apache/ignite/cache/CacheMode;

    .line 243
    iput v4, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->backups:I

    .line 246
    iput-boolean v4, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->invalidate:Z

    .line 252
    sget-object v1, Lorg/apache/ignite/configuration/CacheConfiguration;->DFLT_REBALANCE_MODE:Lorg/apache/ignite/cache/CacheRebalanceMode;

    iput-object v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalanceMode:Lorg/apache/ignite/cache/CacheRebalanceMode;

    .line 258
    const/high16 v1, 0x80000

    iput v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalanceBatchSize:I

    .line 261
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->offHeapMaxMem:J

    .line 264
    iput-boolean v4, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->swapEnabled:Z

    .line 267
    const/16 v1, 0x1f4

    iput v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->maxConcurrentAsyncOps:I

    .line 270
    iput-boolean v4, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeBehindEnabled:Z

    .line 273
    iput v8, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeBehindFlushSize:I

    .line 276
    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeBehindFlushFreq:J

    .line 279
    iput v5, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeBehindFlushThreadCnt:I

    .line 282
    const/16 v1, 0x200

    iput v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeBehindBatchSize:I

    .line 285
    sget-object v1, Lorg/apache/ignite/configuration/CacheConfiguration;->DFLT_MEMORY_MODE:Lorg/apache/ignite/cache/CacheMemoryMode;

    iput-object v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->memMode:Lorg/apache/ignite/cache/CacheMemoryMode;

    .line 294
    iput-wide v6, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalanceThrottle:J

    .line 303
    const-wide/16 v2, 0xbb8

    iput-wide v2, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->longQryWarnTimeout:J

    .line 309
    iput-boolean v5, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->readFromBackup:Z

    .line 324
    iput v8, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->sqlOnheapRowCacheSize:I

    .line 327
    iput-boolean v5, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->cpOnRead:Z

    .line 347
    instance-of v1, p1, Lorg/apache/ignite/configuration/CacheConfiguration;

    if-nez v1, :cond_0

    .line 412
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 350
    check-cast v0, Lorg/apache/ignite/configuration/CacheConfiguration;

    .line 356
    .local v0, "cc":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinity()Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->aff:Lorg/apache/ignite/cache/affinity/AffinityFunction;

    .line 357
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinityMapper()Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->affMapper:Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    .line 358
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicityMode()Lorg/apache/ignite/cache/CacheAtomicityMode;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->atomicityMode:Lorg/apache/ignite/cache/CacheAtomicityMode;

    .line 359
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicWriteOrderMode()Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->atomicWriteOrderMode:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    .line 360
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getBackups()I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->backups:I

    .line 361
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheLoaderFactory()Ljavax/cache/configuration/Factory;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->cacheLoaderFactory:Ljavax/cache/configuration/Factory;

    .line 362
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->cacheMode:Lorg/apache/ignite/cache/CacheMode;

    .line 363
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheWriterFactory()Ljavax/cache/configuration/Factory;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->cacheWriterFactory:Ljavax/cache/configuration/Factory;

    .line 364
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isCopyOnRead()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->cpOnRead:Z

    .line 365
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getDefaultLockTimeout()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->dfltLockTimeout:J

    .line 366
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isEagerTtl()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->eagerTtl:Z

    .line 367
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictionFilter()Lorg/apache/ignite/cache/eviction/EvictionFilter;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictFilter:Lorg/apache/ignite/cache/eviction/EvictionFilter;

    .line 368
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictSynchronizedKeyBufferSize()I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictKeyBufSize:I

    .line 369
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictMaxOverflowRatio()F

    move-result v1

    iput v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictMaxOverflowRatio:F

    .line 370
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictionPolicy()Lorg/apache/ignite/cache/eviction/EvictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictPlc:Lorg/apache/ignite/cache/eviction/EvictionPolicy;

    .line 371
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isEvictSynchronized()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictSync:Z

    .line 372
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictSynchronizedConcurrencyLevel()I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictSyncConcurrencyLvl:I

    .line 373
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictSynchronizedTimeout()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictSyncTimeout:J

    .line 374
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getExpiryPolicyFactory()Ljavax/cache/configuration/Factory;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->expiryPolicyFactory:Ljavax/cache/configuration/Factory;

    .line 375
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getIndexedTypes()[Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->indexedTypes:[Ljava/lang/Class;

    .line 376
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->interceptor:Lorg/apache/ignite/cache/CacheInterceptor;

    .line 377
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isInvalidate()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->invalidate:Z

    .line 378
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isReadThrough()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->isReadThrough:Z

    .line 379
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isWriteThrough()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->isWriteThrough:Z

    .line 380
    iget-object v1, v0, Lorg/apache/ignite/configuration/CacheConfiguration;->listenerConfigurations:Ljava/util/HashSet;

    iput-object v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->listenerConfigurations:Ljava/util/HashSet;

    .line 381
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isLoadPreviousValue()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->loadPrevVal:Z

    .line 382
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getLongQueryWarningTimeout()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->longQryWarnTimeout:J

    .line 383
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getOffHeapMaxMemory()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->offHeapMaxMem:J

    .line 384
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getMaxConcurrentAsyncOperations()I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->maxConcurrentAsyncOps:I

    .line 385
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getMemoryMode()Lorg/apache/ignite/cache/CacheMemoryMode;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->memMode:Lorg/apache/ignite/cache/CacheMemoryMode;

    .line 386
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->name:Ljava/lang/String;

    .line 387
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getNearConfiguration()Lorg/apache/ignite/configuration/NearCacheConfiguration;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->nearCfg:Lorg/apache/ignite/configuration/NearCacheConfiguration;

    .line 388
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getNodeFilter()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->nodeFilter:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 389
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceMode()Lorg/apache/ignite/cache/CacheRebalanceMode;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalanceMode:Lorg/apache/ignite/cache/CacheRebalanceMode;

    .line 390
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceBatchSize()I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalanceBatchSize:I

    .line 391
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceDelay()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalanceDelay:J

    .line 392
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceOrder()I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalanceOrder:I

    .line 393
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceThreadPoolSize()I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalancePoolSize:I

    .line 394
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceTimeout()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalanceTimeout:J

    .line 395
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceThrottle()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalanceThrottle:J

    .line 396
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isReadFromBackup()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->readFromBackup:Z

    .line 397
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isSqlEscapeAll()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->sqlEscapeAll:Z

    .line 398
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getSqlFunctionClasses()[Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->sqlFuncCls:[Ljava/lang/Class;

    .line 399
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getSqlOnheapRowCacheSize()I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->sqlOnheapRowCacheSize:I

    .line 400
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getStartSize()I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->startSize:I

    .line 401
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheStoreFactory()Ljavax/cache/configuration/Factory;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->storeFactory:Ljavax/cache/configuration/Factory;

    .line 402
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isSwapEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->swapEnabled:Z

    .line 403
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getTransactionManagerLookupClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->tmLookupClsName:Ljava/lang/String;

    .line 404
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getDefaultTimeToLive()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->ttl:J

    .line 405
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getTypeMetadata()Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->typeMeta:Ljava/util/Collection;

    .line 406
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteBehindBatchSize()I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeBehindBatchSize:I

    .line 407
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isWriteBehindEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeBehindEnabled:Z

    .line 408
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteBehindFlushFrequency()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeBehindFlushFreq:J

    .line 409
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteBehindFlushSize()I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeBehindFlushSize:I

    .line 410
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteBehindFlushThreadCount()I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeBehindFlushThreadCnt:I

    .line 411
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteSynchronizationMode()Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeSync:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    goto/16 :goto_0
.end method


# virtual methods
.method public getAffinity()Lorg/apache/ignite/cache/affinity/AffinityFunction;
    .locals 1

    .prologue
    .line 796
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->aff:Lorg/apache/ignite/cache/affinity/AffinityFunction;

    return-object v0
.end method

.method public getAffinityMapper()Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;
    .locals 1

    .prologue
    .line 1301
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->affMapper:Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    return-object v0
.end method

.method public getAtomicWriteOrderMode()Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;
    .locals 1

    .prologue
    .line 855
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->atomicWriteOrderMode:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    return-object v0
.end method

.method public getAtomicityMode()Lorg/apache/ignite/cache/CacheAtomicityMode;
    .locals 1

    .prologue
    .line 836
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->atomicityMode:Lorg/apache/ignite/cache/CacheAtomicityMode;

    return-object v0
.end method

.method public getBackups()I
    .locals 1

    .prologue
    .line 876
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->backups:I

    return v0
.end method

.method public getCacheMode()Lorg/apache/ignite/cache/CacheMode;
    .locals 1

    .prologue
    .line 816
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->cacheMode:Lorg/apache/ignite/cache/CacheMode;

    return-object v0
.end method

.method public getCacheStoreFactory()Ljavax/cache/configuration/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/cache/configuration/Factory",
            "<",
            "Lorg/apache/ignite/cache/store/CacheStore",
            "<-TK;-TV;>;>;"
        }
    .end annotation

    .prologue
    .line 777
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->storeFactory:Ljavax/cache/configuration/Factory;

    return-object v0
.end method

.method public getDefaultLockTimeout()J
    .locals 2

    .prologue
    .line 897
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-wide v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->dfltLockTimeout:J

    return-wide v0
.end method

.method public getDefaultTimeToLive()J
    .locals 2

    .prologue
    .line 443
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-wide v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->ttl:J

    return-wide v0
.end method

.method public getEvictMaxOverflowRatio()F
    .locals 1

    .prologue
    .line 646
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictMaxOverflowRatio:F

    return v0
.end method

.method public getEvictSynchronizedConcurrencyLevel()I
    .locals 1

    .prologue
    .line 594
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictSyncConcurrencyLvl:I

    return v0
.end method

.method public getEvictSynchronizedKeyBufferSize()I
    .locals 1

    .prologue
    .line 563
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictKeyBufSize:I

    return v0
.end method

.method public getEvictSynchronizedTimeout()J
    .locals 2

    .prologue
    .line 617
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-wide v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictSyncTimeout:J

    return-wide v0
.end method

.method public getEvictionFilter()Lorg/apache/ignite/cache/eviction/EvictionFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/cache/eviction/EvictionFilter",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 672
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictFilter:Lorg/apache/ignite/cache/eviction/EvictionFilter;

    return-object v0
.end method

.method public getEvictionPolicy()Lorg/apache/ignite/cache/eviction/EvictionPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/cache/eviction/EvictionPolicy",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 463
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictPlc:Lorg/apache/ignite/cache/eviction/EvictionPolicy;

    return-object v0
.end method

.method public getIndexedTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1536
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->indexedTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/cache/CacheInterceptor",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1386
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->interceptor:Lorg/apache/ignite/cache/CacheInterceptor;

    return-object v0
.end method

.method public getLongQueryWarningTimeout()J
    .locals 2

    .prologue
    .line 1488
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-wide v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->longQryWarnTimeout:J

    return-wide v0
.end method

.method public getMaxConcurrentAsyncOperations()I
    .locals 1

    .prologue
    .line 1048
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->maxConcurrentAsyncOps:I

    return v0
.end method

.method public getMemoryMode()Lorg/apache/ignite/cache/CacheMemoryMode;
    .locals 1

    .prologue
    .line 1367
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->memMode:Lorg/apache/ignite/cache/CacheMemoryMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNearConfiguration()Lorg/apache/ignite/configuration/NearCacheConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/configuration/NearCacheConfiguration",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->nearCfg:Lorg/apache/ignite/configuration/NearCacheConfiguration;

    return-object v0
.end method

.method public getNodeFilter()Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 514
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->nodeFilter:Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method

.method public getOffHeapMaxMemory()J
    .locals 2

    .prologue
    .line 1339
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-wide v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->offHeapMaxMem:J

    return-wide v0
.end method

.method public getRebalanceBatchSize()I
    .locals 1

    .prologue
    .line 1004
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalanceBatchSize:I

    return v0
.end method

.method public getRebalanceDelay()J
    .locals 2

    .prologue
    .line 1245
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-wide v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalanceDelay:J

    return-wide v0
.end method

.method public getRebalanceMode()Lorg/apache/ignite/cache/CacheRebalanceMode;
    .locals 1

    .prologue
    .line 963
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalanceMode:Lorg/apache/ignite/cache/CacheRebalanceMode;

    return-object v0
.end method

.method public getRebalanceOrder()I
    .locals 1

    .prologue
    .line 982
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalanceOrder:I

    return v0
.end method

.method public getRebalanceThreadPoolSize()I
    .locals 1

    .prologue
    .line 1189
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalancePoolSize:I

    return v0
.end method

.method public getRebalanceThrottle()J
    .locals 2

    .prologue
    .line 1272
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-wide v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalanceThrottle:J

    return-wide v0
.end method

.method public getRebalanceTimeout()J
    .locals 2

    .prologue
    .line 1210
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-wide v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalanceTimeout:J

    return-wide v0
.end method

.method public getSqlFunctionClasses()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1479
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->sqlFuncCls:[Ljava/lang/Class;

    return-object v0
.end method

.method public getSqlOnheapRowCacheSize()I
    .locals 1

    .prologue
    .line 1564
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->sqlOnheapRowCacheSize:I

    return v0
.end method

.method public getStartSize()I
    .locals 1

    .prologue
    .line 717
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->startSize:I

    return v0
.end method

.method public getTransactionManagerLookupClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 933
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->tmLookupClsName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeMetadata()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cache/CacheTypeMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1404
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->typeMeta:Ljava/util/Collection;

    return-object v0
.end method

.method public getWriteBehindBatchSize()I
    .locals 1

    .prologue
    .line 1167
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeBehindBatchSize:I

    return v0
.end method

.method public getWriteBehindFlushFrequency()J
    .locals 2

    .prologue
    .line 1119
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-wide v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeBehindFlushFreq:J

    return-wide v0
.end method

.method public getWriteBehindFlushSize()I
    .locals 1

    .prologue
    .line 1093
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeBehindFlushSize:I

    return v0
.end method

.method public getWriteBehindFlushThreadCount()I
    .locals 1

    .prologue
    .line 1143
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeBehindFlushThreadCnt:I

    return v0
.end method

.method public getWriteSynchronizationMode()Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;
    .locals 1

    .prologue
    .line 496
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeSync:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    return-object v0
.end method

.method public isCopyOnRead()Z
    .locals 1

    .prologue
    .line 1449
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->cpOnRead:Z

    return v0
.end method

.method public isEagerTtl()Z
    .locals 1

    .prologue
    .line 697
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->eagerTtl:Z

    return v0
.end method

.method public isEvictSynchronized()Z
    .locals 1

    .prologue
    .line 542
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictSync:Z

    return v0
.end method

.method public isInvalidate()Z
    .locals 1

    .prologue
    .line 915
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->invalidate:Z

    return v0
.end method

.method public isLoadPreviousValue()Z
    .locals 1

    .prologue
    .line 746
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->loadPrevVal:Z

    return v0
.end method

.method public isReadFromBackup()Z
    .locals 1

    .prologue
    .line 1426
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->readFromBackup:Z

    return v0
.end method

.method public isSqlEscapeAll()Z
    .locals 1

    .prologue
    .line 1508
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->sqlEscapeAll:Z

    return v0
.end method

.method public isSwapEnabled()Z
    .locals 1

    .prologue
    .line 1023
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->swapEnabled:Z

    return v0
.end method

.method public isWriteBehindEnabled()Z
    .locals 1

    .prologue
    .line 1069
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeBehindEnabled:Z

    return v0
.end method

.method public setAffinity(Lorg/apache/ignite/cache/affinity/AffinityFunction;)V
    .locals 0
    .param p1, "aff"    # Lorg/apache/ignite/cache/affinity/AffinityFunction;

    .prologue
    .line 805
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->aff:Lorg/apache/ignite/cache/affinity/AffinityFunction;

    .line 806
    return-void
.end method

.method public setAffinityMapper(Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;)V
    .locals 0
    .param p1, "affMapper"    # Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    .prologue
    .line 1311
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->affMapper:Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    .line 1312
    return-void
.end method

.method public setAtomicWriteOrderMode(Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;)V
    .locals 0
    .param p1, "atomicWriteOrderMode"    # Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    .prologue
    .line 865
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->atomicWriteOrderMode:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    .line 866
    return-void
.end method

.method public setAtomicityMode(Lorg/apache/ignite/cache/CacheAtomicityMode;)V
    .locals 0
    .param p1, "atomicityMode"    # Lorg/apache/ignite/cache/CacheAtomicityMode;

    .prologue
    .line 845
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->atomicityMode:Lorg/apache/ignite/cache/CacheAtomicityMode;

    .line 846
    return-void
.end method

.method public setBackups(I)V
    .locals 0
    .param p1, "backups"    # I

    .prologue
    .line 887
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->backups:I

    .line 888
    return-void
.end method

.method public setCacheMode(Lorg/apache/ignite/cache/CacheMode;)V
    .locals 0
    .param p1, "cacheMode"    # Lorg/apache/ignite/cache/CacheMode;

    .prologue
    .line 825
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->cacheMode:Lorg/apache/ignite/cache/CacheMode;

    .line 826
    return-void
.end method

.method public setCacheStoreFactory(Ljavax/cache/configuration/Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/configuration/Factory",
            "<+",
            "Lorg/apache/ignite/cache/store/CacheStore",
            "<-TK;-TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 787
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    .local p1, "storeFactory":Ljavax/cache/configuration/Factory;, "Ljavax/cache/configuration/Factory<+Lorg/apache/ignite/cache/store/CacheStore<-TK;-TV;>;>;"
    iput-object p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->storeFactory:Ljavax/cache/configuration/Factory;

    .line 788
    return-void
.end method

.method public setCopyOnRead(Z)V
    .locals 0
    .param p1, "cpOnGet"    # Z

    .prologue
    .line 1459
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput-boolean p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->cpOnRead:Z

    .line 1460
    return-void
.end method

.method public setDefaultLockTimeout(J)V
    .locals 1
    .param p1, "dfltLockTimeout"    # J

    .prologue
    .line 906
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput-wide p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->dfltLockTimeout:J

    .line 907
    return-void
.end method

.method public setDefaultTimeToLive(J)V
    .locals 1
    .param p1, "ttl"    # J

    .prologue
    .line 452
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput-wide p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->ttl:J

    .line 453
    return-void
.end method

.method public setEagerTtl(Z)V
    .locals 0
    .param p1, "eagerTtl"    # Z

    .prologue
    .line 707
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput-boolean p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->eagerTtl:Z

    .line 708
    return-void
.end method

.method public setEvictMaxOverflowRatio(F)V
    .locals 0
    .param p1, "evictMaxOverflowRatio"    # F

    .prologue
    .line 655
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictMaxOverflowRatio:F

    .line 656
    return-void
.end method

.method public setEvictSynchronized(Z)V
    .locals 0
    .param p1, "evictSync"    # Z

    .prologue
    .line 552
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput-boolean p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictSync:Z

    .line 553
    return-void
.end method

.method public setEvictSynchronizedConcurrencyLevel(I)V
    .locals 0
    .param p1, "evictSyncConcurrencyLvl"    # I

    .prologue
    .line 603
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictSyncConcurrencyLvl:I

    .line 604
    return-void
.end method

.method public setEvictSynchronizedKeyBufferSize(I)V
    .locals 0
    .param p1, "evictKeyBufSize"    # I

    .prologue
    .line 572
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictKeyBufSize:I

    .line 573
    return-void
.end method

.method public setEvictSynchronizedTimeout(J)V
    .locals 1
    .param p1, "evictSyncTimeout"    # J

    .prologue
    .line 626
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput-wide p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictSyncTimeout:J

    .line 627
    return-void
.end method

.method public setEvictionFilter(Lorg/apache/ignite/cache/eviction/EvictionFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cache/eviction/EvictionFilter",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 681
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    .local p1, "evictFilter":Lorg/apache/ignite/cache/eviction/EvictionFilter;, "Lorg/apache/ignite/cache/eviction/EvictionFilter<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictFilter:Lorg/apache/ignite/cache/eviction/EvictionFilter;

    .line 682
    return-void
.end method

.method public setEvictionPolicy(Lorg/apache/ignite/cache/eviction/EvictionPolicy;)V
    .locals 0
    .param p1, "evictPlc"    # Lorg/apache/ignite/cache/eviction/EvictionPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 472
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->evictPlc:Lorg/apache/ignite/cache/eviction/EvictionPolicy;

    .line 473
    return-void
.end method

.method public varargs setIndexedTypes([Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1553
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    .local p1, "indexedTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iput-object p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->indexedTypes:[Ljava/lang/Class;

    .line 1554
    return-void
.end method

.method public setInterceptor(Lorg/apache/ignite/cache/CacheInterceptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cache/CacheInterceptor",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1395
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    .local p1, "interceptor":Lorg/apache/ignite/cache/CacheInterceptor;, "Lorg/apache/ignite/cache/CacheInterceptor<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->interceptor:Lorg/apache/ignite/cache/CacheInterceptor;

    .line 1396
    return-void
.end method

.method public setInvalidate(Z)V
    .locals 0
    .param p1, "invalidate"    # Z

    .prologue
    .line 924
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput-boolean p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->invalidate:Z

    .line 925
    return-void
.end method

.method public setLoadPreviousValue(Z)V
    .locals 0
    .param p1, "loadPrevVal"    # Z

    .prologue
    .line 767
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput-boolean p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->loadPrevVal:Z

    .line 768
    return-void
.end method

.method public setLongQueryWarningTimeout(J)V
    .locals 1
    .param p1, "longQryWarnTimeout"    # J

    .prologue
    .line 1497
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput-wide p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->longQryWarnTimeout:J

    .line 1498
    return-void
.end method

.method public setMaxConcurrentAsyncOperations(I)V
    .locals 0
    .param p1, "maxConcurrentAsyncOps"    # I

    .prologue
    .line 1058
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->maxConcurrentAsyncOps:I

    .line 1059
    return-void
.end method

.method public setMemoryMode(Lorg/apache/ignite/cache/CacheMemoryMode;)V
    .locals 0
    .param p1, "memMode"    # Lorg/apache/ignite/cache/CacheMemoryMode;

    .prologue
    .line 1376
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->memMode:Lorg/apache/ignite/cache/CacheMemoryMode;

    .line 1377
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 431
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "Name cannot be null or empty."

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 433
    iput-object p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->name:Ljava/lang/String;

    .line 434
    return-void

    .line 431
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNearConfiguration(Lorg/apache/ignite/configuration/NearCacheConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/configuration/NearCacheConfiguration",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 486
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    .local p1, "nearCfg":Lorg/apache/ignite/configuration/NearCacheConfiguration;, "Lorg/apache/ignite/configuration/NearCacheConfiguration<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->nearCfg:Lorg/apache/ignite/configuration/NearCacheConfiguration;

    .line 487
    return-void
.end method

.method public setNodeFilter(Lorg/apache/ignite/lang/IgnitePredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 523
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    .local p1, "nodeFilter":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iput-object p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->nodeFilter:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 524
    return-void
.end method

.method public setOffHeapMaxMemory(J)V
    .locals 1
    .param p1, "offHeapMaxMem"    # J

    .prologue
    .line 1355
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput-wide p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->offHeapMaxMem:J

    .line 1356
    return-void
.end method

.method public setReadFromBackup(Z)V
    .locals 0
    .param p1, "readFromBackup"    # Z

    .prologue
    .line 1435
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput-boolean p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->readFromBackup:Z

    .line 1436
    return-void
.end method

.method public setRebalanceBatchSize(I)V
    .locals 0
    .param p1, "rebalanceBatchSize"    # I

    .prologue
    .line 1013
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalanceBatchSize:I

    .line 1014
    return-void
.end method

.method public setRebalanceDelay(J)V
    .locals 1
    .param p1, "rebalanceDelay"    # J

    .prologue
    .line 1254
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput-wide p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalanceDelay:J

    .line 1255
    return-void
.end method

.method public setRebalanceMode(Lorg/apache/ignite/cache/CacheRebalanceMode;)V
    .locals 0
    .param p1, "rebalanceMode"    # Lorg/apache/ignite/cache/CacheRebalanceMode;

    .prologue
    .line 952
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalanceMode:Lorg/apache/ignite/cache/CacheRebalanceMode;

    .line 953
    return-void
.end method

.method public setRebalanceOrder(I)V
    .locals 0
    .param p1, "rebalanceOrder"    # I

    .prologue
    .line 992
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalanceOrder:I

    .line 993
    return-void
.end method

.method public setRebalanceThreadPoolSize(I)V
    .locals 0
    .param p1, "rebalancePoolSize"    # I

    .prologue
    .line 1199
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalancePoolSize:I

    .line 1200
    return-void
.end method

.method public setRebalanceThrottle(J)V
    .locals 1
    .param p1, "rebalanceThrottle"    # J

    .prologue
    .line 1287
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput-wide p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalanceThrottle:J

    .line 1288
    return-void
.end method

.method public setRebalanceTimeout(J)V
    .locals 1
    .param p1, "rebalanceTimeout"    # J

    .prologue
    .line 1219
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput-wide p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->rebalanceTimeout:J

    .line 1220
    return-void
.end method

.method public setSqlEscapeAll(Z)V
    .locals 0
    .param p1, "sqlEscapeAll"    # Z

    .prologue
    .line 1519
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput-boolean p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->sqlEscapeAll:Z

    .line 1520
    return-void
.end method

.method public varargs setSqlFunctionClasses([Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1469
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    .local p1, "cls":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iput-object p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->sqlFuncCls:[Ljava/lang/Class;

    .line 1470
    return-void
.end method

.method public setSqlOnheapRowCacheSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 1575
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->sqlOnheapRowCacheSize:I

    .line 1576
    return-void
.end method

.method public setStartSize(I)V
    .locals 0
    .param p1, "startSize"    # I

    .prologue
    .line 726
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->startSize:I

    .line 727
    return-void
.end method

.method public setSwapEnabled(Z)V
    .locals 0
    .param p1, "swapEnabled"    # Z

    .prologue
    .line 1032
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput-boolean p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->swapEnabled:Z

    .line 1033
    return-void
.end method

.method public setTransactionManagerLookupClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tmLookupClsName"    # Ljava/lang/String;

    .prologue
    .line 943
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->tmLookupClsName:Ljava/lang/String;

    .line 944
    return-void
.end method

.method public setTypeMetadata(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cache/CacheTypeMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1413
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    .local p1, "typeMeta":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cache/CacheTypeMetadata;>;"
    iput-object p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->typeMeta:Ljava/util/Collection;

    .line 1414
    return-void
.end method

.method public setWriteBehindBatchSize(I)V
    .locals 0
    .param p1, "writeBehindBatchSize"    # I

    .prologue
    .line 1177
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeBehindBatchSize:I

    .line 1178
    return-void
.end method

.method public setWriteBehindEnabled(Z)V
    .locals 0
    .param p1, "writeBehindEnabled"    # Z

    .prologue
    .line 1078
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput-boolean p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeBehindEnabled:Z

    .line 1079
    return-void
.end method

.method public setWriteBehindFlushFrequency(J)V
    .locals 1
    .param p1, "writeBehindFlushFreq"    # J

    .prologue
    .line 1129
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput-wide p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeBehindFlushFreq:J

    .line 1130
    return-void
.end method

.method public setWriteBehindFlushSize(I)V
    .locals 0
    .param p1, "writeBehindFlushSize"    # I

    .prologue
    .line 1103
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeBehindFlushSize:I

    .line 1104
    return-void
.end method

.method public setWriteBehindFlushThreadCount(I)V
    .locals 0
    .param p1, "writeBehindFlushThreadCnt"    # I

    .prologue
    .line 1153
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeBehindFlushThreadCnt:I

    .line 1154
    return-void
.end method

.method public setWriteSynchronizationMode(Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;)V
    .locals 0
    .param p1, "writeSync"    # Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    .prologue
    .line 505
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/configuration/CacheConfiguration;->writeSync:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    .line 506
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1580
    .local p0, "this":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
