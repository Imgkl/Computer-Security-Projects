.class public abstract Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
.super Ljava/lang/Object;
.source "GridCacheAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCache;
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$78;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdatePutAndGetTimeStatClosure;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdatePutTimeStatClosure;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateRemoveTimeStatClosure;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateGetTimeStatClosure;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateTimeStatClosure;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalSizeCallable;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SizeCallable;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearKeySetCallable;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearAllCallable;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearCallable;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncInOp;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncInOp;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/processors/cache/GridCache",
        "<TK;TV;>;",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx",
        "<TK;TV;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CLEAR_ALL_SPLIT_THRESHOLD:I = 0x2710

.field private static final RET2FLAG:Lorg/apache/ignite/lang/IgniteClosure;

.field protected static final RET2NULL:Lorg/apache/ignite/lang/IgniteClosure;

.field private static final RET2VAL:Lorg/apache/ignite/lang/IgniteClosure;

.field private static final serialVersionUID:J

.field private static final stash:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private aff:Lorg/apache/ignite/cache/affinity/Affinity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/cache/affinity/Affinity",
            "<TK;>;"
        }
    .end annotation
.end field

.field private asyncOpsSem:Ljava/util/concurrent/Semaphore;

.field protected cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field protected ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field protected gridCfg:Lorg/apache/ignite/configuration/IgniteConfiguration;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private igfsDataCache:Z

.field private igfsDataCacheSize:Lorg/jsr166/LongAdder8;

.field private igfsDataSpaceMax:J

.field protected keyCheck:Z

.field protected lastFut:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;",
            ">;"
        }
    .end annotation
.end field

.field protected locNodeId:Ljava/util/UUID;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field protected log:Lorg/apache/ignite/IgniteLogger;

.field protected map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field protected metrics:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

.field private mongoDataCache:Z

.field private mongoMetaCache:Z

.field protected mxBean:Lorg/apache/ignite/mxbean/CacheMetricsMXBean;

.field private qry:Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueries",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private valCheck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->$assertionsDisabled:Z

    .line 86
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->stash:Ljava/lang/ThreadLocal;

    .line 94
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$2;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$2;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->RET2VAL:Lorg/apache/ignite/lang/IgniteClosure;

    .line 107
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$3;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$3;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->RET2NULL:Lorg/apache/ignite/lang/IgniteClosure;

    .line 122
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$4;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$4;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->RET2FLAG:Lorg/apache/ignite/lang/IgniteClosure;

    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v1, 0x1

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const-string v0, "IGNITE_CACHE_KEY_VALIDATION_DISABLED"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    .line 137
    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->valCheck:Z

    .line 140
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$5;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$5;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->lastFut:Ljava/lang/ThreadLocal;

    .line 216
    return-void

    .line 134
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;I)V
    .locals 2
    .param p2, "startSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;I)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;IF)V

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)V

    .line 225
    return-void
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)V
    .locals 18
    .param p2, "map"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const-string v11, "IGNITE_CACHE_KEY_VALIDATION_DISABLED"

    invoke-static {v11}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    const/4 v11, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    .line 137
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->valCheck:Z

    .line 140
    new-instance v11, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$5;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$5;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->lastFut:Ljava/lang/ThreadLocal;

    .line 233
    sget-boolean v11, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->$assertionsDisabled:Z

    if-nez v11, :cond_1

    if-nez p1, :cond_1

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 134
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 235
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 237
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->gridCfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    .line 238
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    .line 240
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->locNodeId:Ljava/util/UUID;

    .line 242
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    .line 244
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridLogger()Lorg/apache/ignite/IgniteLogger;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-interface {v11, v14}, Lorg/apache/ignite/IgniteLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    .line 246
    new-instance v11, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    .line 248
    new-instance v11, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsMXBeanImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->mxBean:Lorg/apache/ignite/mxbean/CacheMetricsMXBean;

    .line 250
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->gridCfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v11}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getFileSystemConfiguration()[Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v7

    .line 252
    .local v7, "igfsCfgs":[Lorg/apache/ignite/configuration/FileSystemConfiguration;
    if-eqz v7, :cond_3

    .line 253
    move-object v2, v7

    .local v2, "arr$":[Lorg/apache/ignite/configuration/FileSystemConfiguration;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v10, :cond_3

    aget-object v6, v2, v3

    .line 254
    .local v6, "igfsCfg":Lorg/apache/ignite/configuration/FileSystemConfiguration;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDataCacheName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 255
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v11

    if-nez v11, :cond_3

    .line 256
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->igfsDataCache:Z

    .line 257
    new-instance v11, Lorg/jsr166/LongAdder8;

    invoke-direct {v11}, Lorg/jsr166/LongAdder8;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->igfsDataCacheSize:Lorg/jsr166/LongAdder8;

    .line 259
    invoke-virtual {v6}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getMaxSpaceSize()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->igfsDataSpaceMax:J

    .line 261
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->igfsDataSpaceMax:J

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_3

    .line 262
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v12

    .line 265
    .local v12, "maxMem":J
    const-wide/32 v14, 0x20000000

    sub-long v8, v12, v14

    .line 267
    .local v8, "jvmFreeSize":J
    const-wide/16 v14, 0x0

    cmp-long v11, v8, v14

    if-gtz v11, :cond_2

    .line 268
    const-wide/16 v14, 0x2

    div-long v8, v12, v14

    .line 270
    :cond_2
    const v11, 0x3f4ccccd    # 0.8f

    long-to-float v14, v12

    mul-float/2addr v11, v14

    float-to-long v4, v11

    .line 272
    .local v4, "dfltMaxSize":J
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->igfsDataSpaceMax:J

    .line 281
    .end local v2    # "arr$":[Lorg/apache/ignite/configuration/FileSystemConfiguration;
    .end local v3    # "i$":I
    .end local v4    # "dfltMaxSize":J
    .end local v6    # "igfsCfg":Lorg/apache/ignite/configuration/FileSystemConfiguration;
    .end local v8    # "jvmFreeSize":J
    .end local v10    # "len$":I
    .end local v12    # "maxMem":J
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/ignite/configuration/CacheConfiguration;->getMaxConcurrentAsyncOperations()I

    move-result v11

    if-lez v11, :cond_4

    .line 282
    new-instance v11, Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v14

    invoke-virtual {v14}, Lorg/apache/ignite/configuration/CacheConfiguration;->getMaxConcurrentAsyncOperations()I

    move-result v14

    invoke-direct {v11, v14}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOpsSem:Ljava/util/concurrent/Semaphore;

    .line 284
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->init()V

    .line 286
    new-instance v11, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-direct {v11, v0, v14}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->qry:Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;

    .line 287
    new-instance v11, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->aff:Lorg/apache/ignite/cache/affinity/Affinity;

    .line 288
    return-void

    .line 253
    .restart local v2    # "arr$":[Lorg/apache/ignite/configuration/FileSystemConfiguration;
    .restart local v3    # "i$":I
    .restart local v6    # "igfsCfg":Lorg/apache/ignite/configuration/FileSystemConfiguration;
    .restart local v10    # "len$":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method

.method static synthetic access$1000()Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->RET2FLAG:Lorg/apache/ignite/lang/IgniteClosure;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZJ)V
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p4, "x4"    # Lorg/apache/ignite/lang/IgniteBiPredicate;
    .param p5, "x5"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p6, "x6"    # Z
    .param p7, "x7"    # J

    .prologue
    .line 77
    invoke-direct/range {p0 .. p8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->loadEntry(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZJ)V

    return-void
.end method

.method static synthetic access$1300(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .param p1, "x1"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->localLoadAndUpdate(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$1700(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Z)Ljavax/cache/Cache$Entry;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->toCacheEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Z)Ljavax/cache/Cache$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .param p1, "x1"    # Ljava/util/Collection;
    .param p2, "x2"    # Ljava/util/Map;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->interceptGet(Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->RET2VAL:Lorg/apache/ignite/lang/IgniteClosure;

    return-object v0
.end method

.method private asyncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
            "<TK;TV;>.AsyncOp<TT;>;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4594
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "op":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>.AsyncOp<TT;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->checkJta()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4600
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4601
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Performing async op: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 4603
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->threadLocalTx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    .line 4605
    .local v18, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    if-eqz v18, :cond_1

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->implicit()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4606
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;->single()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->system()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    :goto_0
    sget-object v8, Lorg/apache/ignite/transactions/TransactionConcurrency;->OPTIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v9, Lorg/apache/ignite/transactions/TransactionIsolation;->READ_COMMITTED:Lorg/apache/ignite/transactions/TransactionIsolation;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getTransactionConfiguration()Lorg/apache/ignite/configuration/TransactionConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/ignite/configuration/TransactionConfiguration;->getDefaultTxTimeout()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v13, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->INVALIDATE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v12, v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v14, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->SKIP_STORE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v13, v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x1

    :goto_1
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v4 .. v16}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->newTx(ZZLorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JZZILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Z)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    move-result-object v18

    .line 4619
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v5, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->SYNC_COMMIT:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4620
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->syncCommit(Z)V

    .line 4623
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOp(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v4

    .end local v18    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    :goto_2
    return-object v4

    .line 4596
    :catch_0
    move-exception v17

    .line 4597
    .local v17, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v4, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 4606
    .end local v17    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v18    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    const/4 v13, 0x0

    goto :goto_1
.end method

.method private clearAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearCallable;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
    .param p1, "clearCall"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearCallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearCallable;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v5, 0x1

    .line 1531
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v5, v5, v4}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->forCacheNodes(Ljava/lang/String;ZZZ)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterGroup;->nodes()Ljava/util/Collection;

    move-result-object v1

    .line 1533
    .local v1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1534
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->closures()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/internal/GridClosureCallMode;->BROADCAST:Lorg/apache/ignite/internal/GridClosureCallMode;

    invoke-virtual {v2, v3, p1, v1, v5}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callAsyncNoFailover(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/concurrent/Callable;Ljava/util/Collection;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 1537
    .local v0, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$9;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$9;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)V

    invoke-interface {v0, v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    .line 1552
    .end local v0    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V

    goto :goto_0
.end method

.method private clearLocally(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 8
    .param p1, "obsoleteVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "TK;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    const/4 v4, 0x0

    .line 1430
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    .line 1432
    .local v0, "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isSwapOrOffheapEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    .line 1434
    .local v1, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :goto_0
    if-eqz v1, :cond_0

    .line 1435
    const/4 v5, 0x0

    invoke-interface {v1, p1, v5, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->clear(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v4

    .line 1444
    .end local v0    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v1    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_0
    :goto_1
    return v4

    .line 1432
    .restart local v0    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1437
    .end local v0    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :catch_0
    move-exception v3

    .line 1438
    .local v3, "ignored":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    goto :goto_1

    .line 1440
    .end local v3    # "ignored":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    :catch_1
    move-exception v2

    .line 1441
    .local v2, "ex":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to clearLocally entry for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private clearRemotes(JLorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearCallable;)V
    .locals 9
    .param p1, "timeout"    # J
    .param p3, "clearCall"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearCallable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1495
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->forCacheNodes(Ljava/lang/String;ZZZ)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterGroup;->forRemotes()Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterGroup;->nodes()Ljava/util/Collection;

    move-result-object v3

    .line 1498
    .local v3, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/4 v1, 0x0

    .line 1500
    .local v1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1501
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_TIMEOUT:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 1503
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->closures()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/internal/GridClosureCallMode;->BROADCAST:Lorg/apache/ignite/internal/GridClosureCallMode;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, p3, v3, v6}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callAsyncNoFailover(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/concurrent/Callable;Ljava/util/Collection;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    .line 1506
    :cond_0
    if-eqz v1, :cond_1

    .line 1507
    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/internal/compute/ComputeTaskTimeoutCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1519
    .end local v1    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    .end local v3    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_1
    :goto_0
    return-void

    .line 1509
    :catch_0
    move-exception v2

    .line 1510
    .local v2, "ignore":Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1511
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "All remote nodes left while cache clearLocally [cacheName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 1513
    .end local v2    # "ignore":Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;
    :catch_1
    move-exception v0

    .line 1514
    .local v0, "e":Lorg/apache/ignite/internal/compute/ComputeTaskTimeoutCheckedException;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Timed out waiting for remote nodes to finish cache clear (consider increasing \'networkTimeout\' configuration property) [cacheName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1517
    throw v0
.end method

.method private entry0(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .locals 20
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p3, "create"    # Z
    .param p4, "touch"    # Z
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1191
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getDefaultTimeToLive()J

    move-result-wide v6

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v8, p3

    invoke-virtual/range {v2 .. v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->putEntryIfObsoleteOrAbsent(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;JZ)Lorg/apache/ignite/internal/util/lang/GridTriple;

    move-result-object v19

    .line 1194
    .local v19, "t":Lorg/apache/ignite/internal/util/lang/GridTriple;, "Lorg/apache/ignite/internal/util/lang/GridTriple<Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;>;"
    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/util/lang/GridTriple;->get1()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 1195
    .local v17, "cur":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/util/lang/GridTriple;->get2()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 1196
    .local v16, "created":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/util/lang/GridTriple;->get3()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 1198
    .local v18, "doomed":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1200
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v2

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->partition()I

    move-result v3

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->locNodeId:Ljava/util/UUID;

    const/4 v6, 0x0

    check-cast v6, Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v7, 0x0

    const/16 v8, 0x3d

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v2 .. v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    :cond_0
    if-eqz v16, :cond_2

    .line 1205
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v2

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1206
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v2

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->partition()I

    move-result v3

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->locNodeId:Ljava/util/UUID;

    const/4 v6, 0x0

    check-cast v6, Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v7, 0x0

    const/16 v8, 0x3c

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v2 .. v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    :cond_1
    if-eqz p4, :cond_2

    .line 1210
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 1213
    :cond_2
    return-object v17
.end method

.method private evictx(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 6
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v3, 0x1

    .line 1572
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    .line 1574
    .local v0, "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    .line 1576
    .local v1, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-nez v1, :cond_0

    .line 1585
    :goto_0
    return v3

    .line 1580
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v1, p2, v4, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evict(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 1582
    :catch_0
    move-exception v2

    .line 1583
    .local v2, "ex":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to evict entry from cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1585
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private globalSize(Z)I
    .locals 12
    .param p1, "primaryOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 4480
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    :try_start_0
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->forCacheNodes(Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/cluster/ClusterGroup;->forRemotes()Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/cluster/ClusterGroup;->nodes()Ljava/util/Collection;

    move-result-object v6

    .line 4482
    .local v6, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/4 v1, 0x0

    .line 4484
    .local v1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Collection<Ljava/lang/Integer;>;>;"
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 4485
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_TIMEOUT:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->gridCfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v9}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkTimeout()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 4487
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->closures()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v7

    new-instance v8, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalSizeCallable;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, p1, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalSizeCallable;-><init>(Ljava/lang/String;ZLorg/apache/ignite/internal/processors/cache/GridCacheAdapter$1;)V

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v6}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->broadcastNoFailover(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;Ljava/util/Collection;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    .line 4491
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->primarySize()I

    move-result v2

    .line 4493
    .local v2, "globalSize":I
    :goto_0
    if-eqz v1, :cond_3

    .line 4494
    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 4495
    .local v3, "i":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v2, v7

    goto :goto_1

    .line 4491
    .end local v2    # "globalSize":I
    .end local v3    # "i":Ljava/lang/Integer;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->size()I
    :try_end_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/internal/compute/ComputeTaskTimeoutCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 4500
    .end local v1    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Collection<Ljava/lang/Integer;>;>;"
    .end local v6    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :catch_0
    move-exception v5

    .line 4501
    .local v5, "ignore":Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4502
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "All remote nodes left while cache clearLocally [cacheName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 4504
    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->primarySize()I

    move-result v7

    :goto_2
    move v2, v7

    .end local v5    # "ignore":Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;
    :cond_3
    return v2

    .restart local v5    # "ignore":Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;
    :cond_4
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->size()I

    move-result v7

    goto :goto_2

    .line 4506
    .end local v5    # "ignore":Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;
    :catch_1
    move-exception v0

    .line 4507
    .local v0, "e":Lorg/apache/ignite/internal/compute/ComputeTaskTimeoutCheckedException;
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Timed out waiting for remote nodes to finish cache clear (consider increasing \'networkTimeout\' configuration property) [cacheName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 4510
    throw v0
.end method

.method private interceptGet(Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1946
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1975
    .end local p2    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :goto_0
    return-object p2

    .line 1949
    .restart local p2    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v2

    .line 1951
    .local v2, "interceptor":Lorg/apache/ignite/cache/CacheInterceptor;, "Lorg/apache/ignite/cache/CacheInterceptor<TK;TV;>;"
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    if-nez v2, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1953
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v4

    .line 1955
    .local v4, "res":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1956
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lorg/apache/ignite/cache/CacheInterceptor;->onGet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1958
    .local v5, "val":Ljava/lang/Object;, "TV;"
    if-eqz v5, :cond_2

    .line 1959
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1962
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v5    # "val":Ljava/lang/Object;, "TV;"
    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v6

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v7

    if-eq v6, v7, :cond_5

    .line 1963
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1964
    .local v3, "key":Ljava/lang/Object;, "TK;"
    if-eqz v3, :cond_4

    .line 1965
    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1966
    const/4 v6, 0x0

    invoke-interface {v2, v3, v6}, Lorg/apache/ignite/cache/CacheInterceptor;->onGet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1968
    .restart local v5    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v5, :cond_4

    .line 1969
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "val":Ljava/lang/Object;, "TV;"
    :cond_5
    move-object p2, v4

    .line 1975
    goto :goto_0
.end method

.method private loadEntry(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZJ)V
    .locals 15
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "val"    # Ljava/lang/Object;
    .param p3, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p4    # Lorg/apache/ignite/lang/IgniteBiPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p6, "replicate"    # Z
    .param p7, "ttl"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "ZJ)V"
        }
    .end annotation

    .prologue
    .line 3891
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p4, "p":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz p4, :cond_0

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-interface {v0, v5, v1}, Lorg/apache/ignite/lang/IgniteBiPredicate;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3914
    :goto_0
    return-void

    .line 3894
    :cond_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v4

    .line 3896
    .local v4, "cacheVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Z)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v3

    .line 3899
    .local v3, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    if-eqz p6, :cond_1

    :try_start_0
    sget-object v12, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_LOAD:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    :goto_1
    move-object/from16 v5, p3

    move-wide/from16 v6, p7

    move-object/from16 v11, p5

    invoke-interface/range {v3 .. v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->initialValue(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/dr/GridDrType;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3910
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 3913
    :goto_2
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->unwindEvicts(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    goto :goto_0

    .line 3899
    :cond_1
    :try_start_1
    sget-object v12, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_NONE:Lorg/apache/ignite/internal/processors/dr/GridDrType;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3902
    :catch_0
    move-exception v2

    .line 3903
    .local v2, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    new-instance v5, Lorg/apache/ignite/IgniteException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to put cache value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3910
    .end local v2    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    throw v5

    .line 3905
    :catch_1
    move-exception v13

    .line 3906
    .local v13, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :try_start_3
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3907
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got removed entry during loadCache (will ignore): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3910
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto :goto_2
.end method

.method private localCachePeek0(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ZZZLorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 8
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "heap"    # Z
    .param p3, "offheap"    # Z
    .param p4, "swap"    # Z
    .param p5, "plc"    # Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v1, 0x0

    .line 869
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 870
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 872
    :cond_1
    if-eqz p2, :cond_3

    .line 873
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    .line 875
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-eqz v0, :cond_3

    .line 876
    sget-object v4, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->peek(ZZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    .line 887
    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_2
    :goto_0
    return-object v1

    .line 879
    :cond_3
    if-nez p3, :cond_4

    if-eqz p4, :cond_2

    .line 880
    :cond_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v7

    .line 882
    .local v7, "swapMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;
    :goto_1
    invoke-virtual {v7, p1, p3, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->read(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v6

    .line 884
    .local v6, "swapEntry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    goto :goto_0

    .line 880
    .end local v6    # "swapEntry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    .end local v7    # "swapMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;
    :cond_5
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v7

    goto :goto_1
.end method

.method private localIteratorHonorExpirePolicy()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v3, 0x0

    .line 4232
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$69;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$69;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)V

    new-array v2, v3, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1, v3, v2}, Lorg/apache/ignite/internal/util/typedef/F;->iterator(Ljava/util/Iterator;Lorg/apache/ignite/lang/IgniteClosure;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private localLoadAndUpdate(Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    const/4 v5, 0x0

    .line 3991
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->dataStream()Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

    move-result-object v4

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namex()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->dataStreamer(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    move-result-object v2

    .line 3993
    .local v2, "ldr":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->allowOverwrite(Z)V

    .line 3994
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->skipStore(Z)V

    .line 3996
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->perNodeBufferSize()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3998
    .local v0, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheKeysView(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 4000
    .local v1, "keys0":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v4

    const/4 v6, 0x0

    new-instance v7, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$66;

    invoke-direct {v7, p0, v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$66;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)V

    invoke-virtual {v4, v6, v1, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->loadAllFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteBiInClosure;)Z

    .line 4012
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4013
    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->addData(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgniteFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4014
    :cond_0
    if-eqz v2, :cond_1

    if-eqz v5, :cond_2

    :try_start_1
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 4015
    :cond_1
    :goto_0
    return-void

    .line 4014
    :catch_0
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->close()V

    goto :goto_0

    .line 3991
    .end local v0    # "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;>;"
    .end local v1    # "keys0":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :catch_1
    move-exception v4

    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4014
    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v5, :cond_4

    :try_start_3
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    throw v4

    :catch_2
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->close()V

    goto :goto_2

    :catchall_1
    move-exception v4

    goto :goto_1
.end method

.method private static parsePeekModes([Lorg/apache/ignite/cache/CachePeekMode;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;
    .locals 6
    .param p0, "peekModes"    # [Lorg/apache/ignite/cache/CachePeekMode;

    .prologue
    const/4 v5, 0x1

    .line 5346
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$1;)V

    .line 5348
    .local v1, "modes":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5349
    invoke-static {v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$302(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    .line 5350
    invoke-static {v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$002(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    .line 5351
    invoke-static {v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$102(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    .line 5353
    invoke-static {v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$202(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    .line 5354
    invoke-static {v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$502(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    .line 5355
    invoke-static {v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$402(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    .line 5411
    :cond_0
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$500(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$400(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5412
    invoke-static {v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$202(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    .line 5413
    invoke-static {v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$502(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    .line 5414
    invoke-static {v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$402(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    .line 5417
    :cond_1
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5418
    invoke-static {v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$002(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    .line 5419
    invoke-static {v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$102(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    .line 5420
    invoke-static {v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$302(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    .line 5423
    :cond_2
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->$assertionsDisabled:Z

    if-nez v3, :cond_5

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$500(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$400(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 5358
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 5359
    aget-object v2, p0, v0

    .line 5361
    .local v2, "peekMode":Lorg/apache/ignite/cache/CachePeekMode;
    const-string v3, "peekMode"

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5363
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$78;->$SwitchMap$org$apache$ignite$cache$CachePeekMode:[I

    invoke-virtual {v2}, Lorg/apache/ignite/cache/CachePeekMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 5406
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->$assertionsDisabled:Z

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 5365
    :pswitch_0
    invoke-static {v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$302(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    .line 5366
    invoke-static {v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$002(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    .line 5367
    invoke-static {v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$102(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    .line 5369
    invoke-static {v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$202(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    .line 5370
    invoke-static {v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$502(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    .line 5371
    invoke-static {v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$402(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    .line 5358
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5376
    :pswitch_1
    invoke-static {v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$102(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    goto :goto_1

    .line 5381
    :pswitch_2
    invoke-static {v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$002(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    goto :goto_1

    .line 5386
    :pswitch_3
    invoke-static {v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$302(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    goto :goto_1

    .line 5391
    :pswitch_4
    invoke-static {v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$202(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    goto :goto_1

    .line 5396
    :pswitch_5
    invoke-static {v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$502(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    goto :goto_1

    .line 5401
    :pswitch_6
    invoke-static {v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$402(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    goto :goto_1

    .line 5424
    .end local v0    # "i":I
    .end local v2    # "peekMode":Lorg/apache/ignite/cache/CachePeekMode;
    :cond_5
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->$assertionsDisabled:Z

    if-nez v3, :cond_6

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 5426
    :cond_6
    return-object v1

    .line 5363
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

.method private peekDb(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1063
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->localTxx()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->loadFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private peekSwap(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/util/lang/GridTuple;
    .locals 3
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ")",
            "Lorg/apache/ignite/internal/util/lang/GridTuple",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v2, 0x1

    .line 1052
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v1

    invoke-virtual {v1, p1, v2, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->read(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v0

    .line 1054
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private syncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
            "<TK;TV;>.SyncOp<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4522
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "op":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>.SyncOp<TT;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->checkJta()V

    .line 4524
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->awaitLastFut()V

    .line 4526
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->threadLocalTx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    .line 4528
    .local v20, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->implicit()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4529
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getTransactionConfiguration()Lorg/apache/ignite/configuration/TransactionConfiguration;

    move-result-object v19

    .line 4531
    .local v19, "tCfg":Lorg/apache/ignite/configuration/TransactionConfiguration;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;->single()Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->system()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    :goto_0
    sget-object v6, Lorg/apache/ignite/transactions/TransactionConcurrency;->OPTIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v7, Lorg/apache/ignite/transactions/TransactionIsolation;->READ_COMMITTED:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/configuration/TransactionConfiguration;->getDefaultTxTimeout()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v11, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->INVALIDATE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v10, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v12, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->SKIP_STORE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v11, v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Z

    move-result v11

    if-nez v11, :cond_3

    const/4 v11, 0x1

    :goto_1
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v2 .. v14}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->newTx(ZZLorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JZZILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Z)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    move-result-object v20

    .line 4545
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->SYNC_COMMIT:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4546
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->syncCommit(Z)V

    .line 4548
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    if-nez v20, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 4531
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 4551
    :cond_4
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;->op(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)Ljava/lang/Object;

    move-result-object v18

    .line 4553
    .local v18, "t":Ljava/lang/Object;, "TT;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_6

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->done()Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transaction is not done: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/internal/transactions/IgniteTxHeuristicCheckedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4557
    .end local v18    # "t":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v15

    .line 4558
    .local v15, "e":Lorg/apache/ignite/IgniteCheckedException;
    :goto_2
    :try_start_1
    throw v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4576
    .end local v15    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->resetContext()V

    .line 4578
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4579
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->resetContext()V

    :cond_5
    throw v2

    .line 4576
    .restart local v18    # "t":Ljava/lang/Object;, "TT;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->resetContext()V

    .line 4578
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4579
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->resetContext()V

    .line 4583
    .end local v18    # "t":Ljava/lang/Object;, "TT;"
    .end local v19    # "tCfg":Lorg/apache/ignite/configuration/TransactionConfiguration;
    :cond_7
    :goto_3
    return-object v18

    .line 4560
    .restart local v19    # "tCfg":Lorg/apache/ignite/configuration/TransactionConfiguration;
    :catch_1
    move-exception v15

    .line 4562
    .restart local v15    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->rollback()V

    .line 4564
    new-instance v16, Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transaction has been rolled back: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->xid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v15}, Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v15    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .local v16, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v15, v16

    .line 4573
    .end local v16    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :goto_4
    :try_start_3
    throw v15

    .line 4567
    .restart local v15    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_2
    move-exception v2

    move-object/from16 v17, v2

    .line 4568
    .local v17, "e1":Ljava/lang/Throwable;
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to rollback transaction (cache may contain stale locks): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 4570
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v0, v17

    invoke-static {v15, v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addLastCause(Ljava/lang/Throwable;Ljava/lang/Throwable;Lorg/apache/ignite/IgniteLogger;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 4583
    .end local v15    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v17    # "e1":Ljava/lang/Throwable;
    .end local v19    # "tCfg":Lorg/apache/ignite/configuration/TransactionConfiguration;
    :cond_8
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;->op(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)Ljava/lang/Object;

    move-result-object v18

    goto :goto_3

    .line 4567
    .restart local v15    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v19    # "tCfg":Lorg/apache/ignite/configuration/TransactionConfiguration;
    :catch_3
    move-exception v2

    move-object/from16 v17, v2

    goto :goto_5

    :catch_4
    move-exception v2

    move-object/from16 v17, v2

    goto :goto_5

    .line 4557
    .end local v15    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_5
    move-exception v15

    goto/16 :goto_2

    :catch_6
    move-exception v15

    goto/16 :goto_2
.end method

.method private toCacheEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Z)Ljavax/cache/Cache$Entry;
    .locals 20
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "deserializePortable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "Z)",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 5277
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p1

    :try_start_0
    invoke-interface/range {v2 .. v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerGet(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZZZZZZZLjava/util/UUID;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v18

    .line 5291
    .local v18, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-nez v18, :cond_0

    .line 5292
    const/4 v2, 0x0

    .line 5309
    .end local v18    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :goto_0
    return-object v2

    .line 5294
    .restart local v18    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v16

    .line 5296
    .local v16, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v17

    .line 5297
    .local v17, "key0":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v19

    .line 5299
    .local v19, "val0":Ljava/lang/Object;
    if-eqz p2, :cond_1

    .line 5300
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapPortableIfNeeded(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v17

    .line 5301
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapPortableIfNeeded(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v19

    .line 5304
    :cond_1
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/CacheEntryImpl;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v2, v0, v1}, Lorg/apache/ignite/internal/processors/cache/CacheEntryImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5306
    .end local v16    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v17    # "key0":Ljava/lang/Object;
    .end local v18    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v19    # "val0":Ljava/lang/Object;
    :catch_0
    move-exception v15

    .line 5307
    .local v15, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 5309
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private validateCacheValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 5140
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->valCheck:Z

    if-eqz v0, :cond_0

    .line 5141
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->validateCacheValue(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 5143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->valCheck:Z

    .line 5145
    :cond_0
    return-void
.end method

.method private validateCacheValues(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 5153
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "vals":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->valCheck:Z

    if-eqz v2, :cond_2

    .line 5154
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5155
    .local v1, "val":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 5158
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->validateCacheValue(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0

    .line 5161
    .end local v1    # "val":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->valCheck:Z

    .line 5163
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method


# virtual methods
.method public affinity()Lorg/apache/ignite/cache/affinity/Affinity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/cache/affinity/Affinity",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 373
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->aff:Lorg/apache/ignite/cache/affinity/Affinity;

    return-object v0
.end method

.method public affinityNode()Z
    .locals 1

    .prologue
    .line 4808
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinityNode()Z

    move-result v0

    return v0
.end method

.method public allEntries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1227
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->allEntries0()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected asyncOp(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 7
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
            "<TK;TV;>.AsyncOp<TT;>;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4634
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p2, "op":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>.AsyncOp<TT;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOpAcquire()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    .line 4636
    .local v1, "fail":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 4693
    :goto_0
    return-object v0

    .line 4639
    :cond_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->lastFut:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;

    .line 4641
    .local v3, "holder":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->lock()V

    .line 4644
    :try_start_0
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->future()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    .line 4646
    .local v2, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;
    move-object v4, p1

    .line 4648
    .local v4, "tx0":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v5

    if-nez v5, :cond_1

    .line 4649
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    new-instance v5, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$72;

    invoke-direct {v5, p0, p2, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$72;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)V

    invoke-direct {v0, v2, v5}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;Lorg/apache/ignite/lang/IgniteBiClosure;)V

    .line 4667
    .local v0, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    invoke-virtual {p0, v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->saveFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4693
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->unlock()V

    goto :goto_0

    .line 4672
    .end local v0    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    :cond_1
    :try_start_1
    invoke-virtual {p2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;->op(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v5

    new-instance v6, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$73;

    invoke-direct {v6, p0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$73;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)V

    invoke-interface {v5, v6}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 4685
    .restart local v0    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    invoke-virtual {p0, v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->saveFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 4687
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->implicit()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4688
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->resetContext()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4693
    :cond_2
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->unlock()V

    goto :goto_0

    .end local v0    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    .end local v2    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;
    .end local v4    # "tx0":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->unlock()V

    throw v5
.end method

.method protected asyncOpAcquire()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4743
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOpsSem:Ljava/util/concurrent/Semaphore;

    if-eqz v1, :cond_0

    .line 4744
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOpsSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4746
    :cond_0
    const/4 v1, 0x0

    .line 4751
    :goto_0
    return-object v1

    .line 4748
    :catch_0
    move-exception v0

    .line 4749
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 4751
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    new-instance v2, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;

    const-string v3, "Failed to wait for asynchronous operation permit (thread got interrupted)."

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;-><init>(Ljava/lang/String;Ljava/lang/InterruptedException;)V

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected asyncOpRelease()V
    .locals 1

    .prologue
    .line 4760
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOpsSem:Ljava/util/concurrent/Semaphore;

    if-eqz v0, :cond_0

    .line 4761
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOpsSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 4762
    :cond_0
    return-void
.end method

.method public awaitLastFut()V
    .locals 3

    .prologue
    .line 4455
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->lastFut:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;

    .line 4457
    .local v1, "holder":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->future()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 4459
    .local v0, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4462
    :try_start_0
    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4468
    :cond_0
    :goto_0
    return-void

    .line 4464
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public cache()Lorg/apache/ignite/internal/processors/cache/GridCache;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/processors/cache/GridCache",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    return-object p0
.end method

.method protected checkJta()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 3809
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->jta()Lorg/apache/ignite/internal/processors/cache/jta/CacheJtaManagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/jta/CacheJtaManagerAdapter;->checkJta()V

    .line 3810
    return-void
.end method

.method public clear()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1449
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->clear(J)V

    .line 1450
    return-void
.end method

.method public clear(J)V
    .locals 3
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1481
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->clearLocally()V

    .line 1483
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearAllCallable;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearAllCallable;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$1;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->clearRemotes(JLorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearCallable;)V

    .line 1484
    return-void
.end method

.method public clear(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1455
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->clearLocally(Ljava/lang/Object;)Z

    .line 1457
    const-wide/16 v0, 0x0

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearKeySetCallable;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearKeySetCallable;-><init>(Ljava/lang/String;Ljava/util/Set;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$1;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->clearRemotes(JLorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearCallable;)V

    .line 1458
    return-void
.end method

.method public clearAll(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TK;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1463
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->clearLocallyAll(Ljava/util/Set;)V

    .line 1465
    const-wide/16 v0, 0x0

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearKeySetCallable;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearKeySetCallable;-><init>(Ljava/lang/String;Ljava/util/Set;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$1;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->clearRemotes(JLorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearCallable;)V

    .line 1466
    return-void
.end method

.method public clearAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1523
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearAllCallable;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearAllCallable;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$1;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->clearAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearCallable;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public clearAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1470
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearKeySetCallable;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearKeySetCallable;-><init>(Ljava/lang/String;Ljava/util/Set;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$1;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->clearAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearCallable;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public clearAsync(Ljava/util/Set;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TK;>;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1475
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearKeySetCallable;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearKeySetCallable;-><init>(Ljava/lang/String;Ljava/util/Set;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$1;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->clearAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearCallable;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public clearLocally()V
    .locals 8

    .prologue
    .line 1359
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v5, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->READ:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)V

    .line 1360
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v5, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_REMOVE:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->checkSecurity(Lorg/apache/ignite/plugin/security/GridSecurityPermission;)V

    .line 1362
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->splitClearLocally()Ljava/util/List;

    move-result-object v3

    .line 1364
    .local v3, "jobs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable<TK;TV;>;>;"
    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1365
    const/4 v0, 0x0

    .line 1367
    .local v0, "execSvc":Ljava/util/concurrent/ExecutorService;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 1368
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 1370
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1371
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1370
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1375
    .end local v1    # "i":I
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1378
    if-eqz v0, :cond_1

    .line 1379
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1382
    :goto_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1383
    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v6}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1385
    :catch_0
    move-exception v2

    .line 1386
    .local v2, "ignore":Ljava/lang/InterruptedException;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v5, "Got interrupted while waiting for Cache.clearLocally() executor service to finish."

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1389
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 1394
    .end local v0    # "execSvc":Ljava/util/concurrent/ExecutorService;
    .end local v2    # "ignore":Ljava/lang/InterruptedException;
    :cond_1
    return-void

    .line 1378
    .restart local v0    # "execSvc":Ljava/util/concurrent/ExecutorService;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_2

    .line 1379
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1382
    :goto_2
    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1383
    const-wide/16 v6, 0x3e8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v6, v7, v5}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1385
    :catch_1
    move-exception v2

    .line 1386
    .restart local v2    # "ignore":Ljava/lang/InterruptedException;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v6, "Got interrupted while waiting for Cache.clearLocally() executor service to finish."

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1389
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 1390
    .end local v2    # "ignore":Ljava/lang/InterruptedException;
    :cond_2
    throw v4
.end method

.method public clearLocally(Ljava/util/Collection;Z)V
    .locals 8
    .param p2, "readers"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1401
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1418
    :cond_0
    return-void

    .line 1404
    :cond_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    .line 1406
    .local v4, "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 1407
    .local v3, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    .line 1410
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-eqz v0, :cond_2

    .line 1411
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v0, v4, p2, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->clear(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1413
    :catch_0
    move-exception v1

    .line 1414
    .local v1, "ex":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to clearLocally entry (will continue to clearLocally other entries): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public clearLocally(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 1349
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->clearLocally0(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v0

    return v0
.end method

.method public varargs clearLocally0(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 5
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
    .line 4855
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->READ:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)V

    .line 4856
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v4, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_REMOVE:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->checkSecurity(Lorg/apache/ignite/plugin/security/GridSecurityPermission;)V

    .line 4858
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4868
    :cond_0
    return-void

    .line 4861
    :cond_1
    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v3, :cond_2

    .line 4862
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKeys(Ljava/lang/Iterable;)V

    .line 4864
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    .line 4866
    .local v2, "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4867
    .local v1, "k":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v2, v1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->clearLocally(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    goto :goto_0
.end method

.method public varargs clearLocally0(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 2
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 4876
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4878
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 4879
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 4881
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->READ:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)V

    .line 4882
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v1, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_REMOVE:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->checkSecurity(Lorg/apache/ignite/plugin/security/GridSecurityPermission;)V

    .line 4884
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->clearLocally(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v0

    return v0
.end method

.method public clearLocallyAll(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 1354
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->clearLocally0(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 1355
    return-void
.end method

.method public commitTxAsync(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 5
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4417
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->lastFut:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;

    .line 4419
    .local v3, "holder":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->lock()V

    .line 4422
    :try_start_0
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->future()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    .line 4424
    .local v2, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4425
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$71;

    invoke-direct {v4, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$71;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    invoke-direct {v0, v2, v4}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;Lorg/apache/ignite/lang/IgniteBiClosure;)V

    .line 4432
    .local v0, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    invoke-virtual {p0, v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->saveFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4446
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->unlock()V

    move-object v1, v0

    .end local v0    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    .local v1, "f":Ljava/lang/Object;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    :goto_0
    return-object v1

    .line 4437
    .end local v1    # "f":Ljava/lang/Object;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commitAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 4439
    .restart local v0    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    invoke-virtual {p0, v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->saveFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 4441
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->resetContext()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4446
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->unlock()V

    move-object v1, v0

    .restart local v1    # "f":Ljava/lang/Object;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    goto :goto_0

    .end local v0    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    .end local v1    # "f":Ljava/lang/Object;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    .end local v2    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->unlock()V

    throw v4
.end method

.method public configuration()Lorg/apache/ignite/configuration/CacheConfiguration;
    .locals 1

    .prologue
    .line 521
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 621
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->containsKeyAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public containsKeyAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 630
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 632
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v8, 0x1

    move-object v0, p0

    move v3, v2

    move-object v5, v4

    move-object v6, v4

    move v7, v2

    invoke-virtual/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->getAllAsync(Ljava/util/Collection;ZZLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Ljava/lang/String;ZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$6;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$6;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)V

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public containsKeys(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)Z"
        }
    .end annotation

    .prologue
    .line 655
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->containsKeysAsync(Ljava/util/Collection;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 657
    :catch_0
    move-exception v0

    .line 658
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public containsKeysAsync(Ljava/util/Collection;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 664
    const-string v0, "keys"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 666
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v5, v4

    move-object v6, v4

    move v7, v2

    invoke-virtual/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->getAllAsync(Ljava/util/Collection;ZZLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Ljava/lang/String;ZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$7;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$7;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 615
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "val":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1220
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->entries0()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entry(Ljava/lang/Object;)Ljavax/cache/Cache$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1114
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1116
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 1117
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 1119
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Z)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->wrap()Ljavax/cache/Cache$Entry;

    move-result-object v0

    return-object v0
.end method

.method public entryEx(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1145
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Z)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    return-object v0
.end method

.method public entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .prologue
    .line 1153
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Z)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    return-object v0
.end method

.method public entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .locals 3
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 1175
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entry0(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    .line 1177
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1179
    :cond_0
    return-object v0
.end method

.method public entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Z)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .locals 3
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "touch"    # Z

    .prologue
    .line 1162
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entry0(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    .line 1164
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1166
    :cond_0
    return-object v0
.end method

.method protected entryExSafe(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1834
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1232
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v0, 0x0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entrySet([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entrySet(I)Ljava/util/Set;
    .locals 1
    .param p1, "part"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1250
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public varargs entrySet([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;
    .locals 1
    .param p1, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 4960
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->entries([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public varargs entrySetx([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;
    .locals 1
    .param p1, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1237
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->entriesx([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public evict(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 1839
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->evict(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v0

    return v0
.end method

.method public varargs evict(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 2
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 4893
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4895
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 4896
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 4898
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->READ:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)V

    .line 4900
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->evictx(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v0

    return v0
.end method

.method public evictAll()V
    .locals 1

    .prologue
    .line 1844
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->evictAll(Ljava/util/Collection;)V

    .line 1845
    return-void
.end method

.method public evictAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)V"
        }
    .end annotation

    .prologue
    .line 1849
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    const/4 v0, 0x0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->evictAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 1850
    return-void
.end method

.method public varargs evictAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 7
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
    .line 4909
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    const-string v4, "keys"

    invoke-static {p1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4911
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v5, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->READ:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)V

    .line 4913
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4933
    :cond_0
    :goto_0
    return-void

    .line 4916
    :cond_1
    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v4, :cond_2

    .line 4917
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 4919
    :cond_2
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    .line 4921
    .local v3, "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evictSyncOrNearSync()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmptyOrNulls([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isSwapOrOffheapEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4923
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->batchEvict(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4925
    :catch_0
    move-exception v0

    .line 4926
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to perform batch evict for keys: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4930
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4931
    .local v2, "k":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v2, v3, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->evictx(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    goto :goto_1
.end method

.method public expiry()Ljavax/cache/expiry/ExpiryPolicy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 452
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public expiryPolicy(Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
    .locals 1
    .param p1, "plc"    # Ljavax/cache/expiry/ExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 5434
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    if-nez p1, :cond_0

    .line 5435
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object p1

    .line 5437
    :cond_0
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;->access$1900(Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;

    move-result-object v0

    return-object v0
.end method

.method public flags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheFlag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forcedFlags()[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->asSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public flagsOff([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .locals 0
    .param p1, "flags"    # [Lorg/apache/ignite/internal/processors/cache/CacheFlag;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/internal/processors/cache/CacheFlag;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    return-object p0
.end method

.method public flagsOn([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .locals 8
    .param p1, "flags"    # [Lorg/apache/ignite/internal/processors/cache/CacheFlag;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/internal/processors/cache/CacheFlag;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v3, 0x0

    .line 407
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    :goto_0
    return-object p0

    .line 410
    .restart local p0    # "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Ljava/util/Set;Ljava/util/UUID;ZLjavax/cache/expiry/ExpiryPolicy;)V

    .line 418
    .local v0, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v1, v2, v0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    move-object p0, v1

    goto :goto_0
.end method

.method public forSubjectId(Ljava/util/UUID;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    .locals 8
    .param p1, "subjId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v3, 0x0

    .line 394
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v3

    move-object v5, p1

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Ljava/util/Set;Ljava/util/UUID;ZLjavax/cache/expiry/ExpiryPolicy;)V

    .line 402
    .local v0, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v1, v2, v0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1
.end method

.method public forceRepartition()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 4801
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;->forcePreload()V

    .line 4803
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;->syncFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1854
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-string v4, "key"

    invoke-static {p1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1856
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v2

    .line 1858
    .local v2, "statsEnabled":Z
    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1860
    .local v0, "start":J
    :goto_0
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->get(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v3

    .line 1862
    .local v3, "val":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1863
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v4

    invoke-interface {v4, p1, v3}, Lorg/apache/ignite/cache/CacheInterceptor;->onGet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1865
    :cond_0
    if-eqz v2, :cond_1

    .line 1866
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->addGetTimeNanos(J)V

    .line 1868
    :cond_1
    return-object v3

    .line 1858
    .end local v0    # "start":J
    .end local v3    # "val":Ljava/lang/Object;, "TV;"
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public varargs get(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    .locals 9
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "deserializePortable"    # Z
    .param p4, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "Z[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v3, 0x0

    .line 1592
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->currentTaskName()Ljava/lang/String;

    move-result-object v6

    .line 1594
    .local v6, "taskName":Ljava/lang/String;
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isReadFromBackup()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p2

    move v7, p3

    move v8, v3

    invoke-virtual/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->getAllAsync(Ljava/util/Collection;ZZLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Ljava/lang/String;ZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3
    .param p2, "deserializePortable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 5013
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->getAllAsync(Ljava/util/Collection;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 5015
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 5017
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getAll(Ljava/util/Collection;)Ljava/util/Map;
    .locals 8
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1897
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    const-string v4, "keys"

    invoke-static {p1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1899
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v1

    .line 1901
    .local v1, "statsEnabled":Z
    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1903
    .local v2, "start":J
    :goto_0
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->getAll(Ljava/util/Collection;Z)Ljava/util/Map;

    move-result-object v0

    .line 1905
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1906
    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->interceptGet(Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 1908
    :cond_0
    if-eqz v1, :cond_1

    .line 1909
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->addGetTimeNanos(J)V

    .line 1911
    :cond_1
    return-object v0

    .line 1901
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local v2    # "start":J
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getAll(Ljava/util/Collection;Z)Ljava/util/Map;
    .locals 2
    .param p2, "deserializePortable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;Z)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 5054
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->LOCAL:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)V

    .line 5056
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->checkJta()V

    .line 5058
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->getAllAsync(Ljava/util/Collection;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getAllAsync(Ljava/util/Collection;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1916
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    const-string v4, "keys"

    invoke-static {p1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1918
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v1

    .line 1920
    .local v1, "statsEnabled":Z
    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1922
    .local v2, "start":J
    :goto_0
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->getAllAsync(Ljava/util/Collection;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 1924
    .local v0, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Map<TK;TV;>;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1925
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$15;

    invoke-direct {v4, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$15;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Collection;)V

    invoke-interface {v0, v4}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 1934
    .end local v0    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Map<TK;TV;>;>;"
    :cond_0
    :goto_1
    return-object v0

    .line 1920
    .end local v2    # "start":J
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 1931
    .restart local v0    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Map<TK;TV;>;>;"
    .restart local v2    # "start":J
    :cond_2
    if-eqz v1, :cond_0

    .line 1932
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateGetTimeStatClosure;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v5

    invoke-direct {v4, v5, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateGetTimeStatClosure;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;J)V

    invoke-interface {v0, v4}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto :goto_1
.end method

.method public getAllAsync(Ljava/util/Collection;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 9
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "deserializePortable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;Z)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 5116
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->currentTaskName()Ljava/lang/String;

    move-result-object v6

    .line 5118
    .local v6, "taskName":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isReadFromBackup()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    move v7, p2

    move v8, v3

    invoke-virtual/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->getAllAsync(Ljava/util/Collection;ZZLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Ljava/lang/String;ZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public getAllAsync(Ljava/util/Collection;ZLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;ZLjava/util/UUID;Ljava/lang/String;ZZLorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 10
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "readThrough"    # Z
    .param p3, "cached"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "checkTx"    # Z
    .param p5, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "taskName"    # Ljava/lang/String;
    .param p7, "deserializePortable"    # Z
    .param p8, "forcePrimary"    # Z
    .param p9, "expiry"    # Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10, "skipVals"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;Z",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "Z",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "ZZ",
            "Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;",
            "Z)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2041
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v1, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_READ:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->checkSecurity(Lorg/apache/ignite/plugin/security/GridSecurityPermission;)V

    .line 2043
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->LOCAL:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)V

    .line 2045
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 2046
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKeys(Ljava/lang/Iterable;)V

    .line 2048
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheKeysView(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    const/4 v9, 0x0

    move-object v0, p0

    move v2, p2

    move v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p9

    move/from16 v8, p10

    invoke-virtual/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->getAllAsync0(Ljava/util/Collection;ZZLjava/util/UUID;Ljava/lang/String;ZLorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;ZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method protected getAllAsync(Ljava/util/Collection;ZZLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Ljava/lang/String;ZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;
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
    .line 2000
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v12

    .line 2002
    .local v12, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0, v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->subjectIdPerCall(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Ljava/util/UUID;

    move-result-object p5

    .line 2004
    const/4 v3, 0x1

    if-nez p3, :cond_0

    const/4 v5, 0x1

    :goto_0
    if-eqz p8, :cond_1

    const/4 v10, 0x0

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move v9, p2

    move/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->getAllAsync(Ljava/util/Collection;ZLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;ZLjava/util/UUID;Ljava/lang/String;ZZLorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v1

    :goto_2
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->expiryPolicy(Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    move-result-object v10

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public getAllAsync0(Ljava/util/Collection;ZZLjava/util/UUID;Ljava/lang/String;ZLorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;ZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 34
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "readThrough"    # Z
    .param p3, "checkTx"    # Z
    .param p4, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "taskName"    # Ljava/lang/String;
    .param p6, "deserializePortable"    # Z
    .param p7, "expiry"    # Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8, "skipVals"    # Z
    .param p9, "keepCacheObjects"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;ZZ",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;",
            "ZZ)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK1;TV1;>;>;"
        }
    .end annotation

    .prologue
    .line 2081
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2082
    new-instance v4, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    .line 2309
    :goto_0
    return-object v4

    .line 2084
    :cond_0
    const/16 v32, 0x0

    .line 2086
    .local v32, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    if-eqz p3, :cond_1

    .line 2088
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->checkJta()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2094
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->system()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    :goto_1
    invoke-virtual {v5, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->threadLocalTx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v32

    .end local v32    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    check-cast v32, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    .line 2097
    .restart local v32    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    :cond_1
    if-eqz v32, :cond_2

    invoke-virtual/range {v32 .. v32}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->implicit()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2099
    :cond_2
    :try_start_1
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_4

    if-nez p1, :cond_4

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2304
    :catch_0
    move-exception v24

    .line 2305
    .local v24, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v4, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2090
    .end local v24    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_1
    move-exception v24

    .line 2091
    .restart local v24    # "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v4, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2094
    .end local v24    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 2101
    :cond_4
    if-nez v32, :cond_7

    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v17

    .line 2105
    .local v17, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :goto_2
    new-instance v29, Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v4

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>(I)V

    .line 2107
    .local v29, "map":Ljava/util/Map;, "Ljava/util/Map<TK1;TV1;>;"
    const/16 v30, 0x0

    .line 2109
    .local v30, "misses":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .local v28, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    move-object/from16 v31, v30

    .line 2111
    .end local v30    # "misses":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .local v31, "misses":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    .line 2114
    .local v3, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    const/4 v4, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isSwapOrOffheapEnabled()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    if-nez p8, :cond_8

    const/4 v9, 0x1

    :goto_5
    if-nez p8, :cond_9

    const/4 v10, 0x1

    :goto_6
    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v12, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p7

    invoke-interface/range {v3 .. v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerGet(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZZZZZZZLjava/util/UUID;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v7

    .line 2127
    .local v7, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-nez v7, :cond_a

    .line 2128
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v33

    .line 2130
    .local v33, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-nez v31, :cond_15

    .line 2131
    new-instance v30, Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-direct/range {v30 .. v30}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>()V
    :try_end_3
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2133
    .end local v31    # "misses":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .restart local v30    # "misses":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    :goto_7
    :try_start_4
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 2148
    :catch_2
    move-exception v27

    .line 2149
    .end local v7    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v33    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .local v27, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :goto_8
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2150
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got removed entry in getAllAsync(..) method (will retry): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    :cond_6
    move-object/from16 v31, v30

    .line 2161
    .end local v30    # "misses":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .restart local v31    # "misses":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    goto :goto_4

    .line 2101
    .end local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v17    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v27    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .end local v28    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v29    # "map":Ljava/util/Map;, "Ljava/util/Map<TK1;TV1;>;"
    .end local v31    # "misses":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    :cond_7
    invoke-virtual/range {v32 .. v32}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v17

    goto/16 :goto_2

    .line 2114
    .restart local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v17    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .restart local v25    # "i$":Ljava/util/Iterator;
    .restart local v28    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v29    # "map":Ljava/util/Map;, "Ljava/util/Map<TK1;TV1;>;"
    .restart local v31    # "misses":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    :cond_8
    const/4 v9, 0x0

    goto :goto_5

    :cond_9
    const/4 v10, 0x0

    goto :goto_6

    .line 2136
    .restart local v7    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_a
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v11, 0x1

    move-object/from16 v5, v29

    move-object/from16 v6, v28

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p6

    invoke-virtual/range {v4 .. v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->addResult(Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZZZ)V

    .line 2138
    if-eqz v32, :cond_b

    invoke-virtual/range {v32 .. v32}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->implicit()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual/range {v32 .. v32}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->isolation()Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/transactions/TransactionIsolation;->READ_COMMITTED:Lorg/apache/ignite/transactions/TransactionIsolation;

    if-ne v4, v5, :cond_c

    .line 2139
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 2141
    :cond_c
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    .line 2143
    new-instance v4, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v29

    invoke-direct {v4, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V
    :try_end_6
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 2148
    .end local v7    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catch_3
    move-exception v27

    move-object/from16 v30, v31

    .end local v31    # "misses":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .restart local v30    # "misses":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    goto :goto_8

    .line 2152
    .end local v30    # "misses":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .restart local v31    # "misses":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    :catch_4
    move-exception v26

    move-object/from16 v30, v31

    .line 2153
    .end local v31    # "misses":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .local v26, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    .restart local v30    # "misses":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    :goto_9
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2154
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Filter validation failed for entry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2156
    :cond_d
    if-eqz v32, :cond_e

    invoke-virtual/range {v32 .. v32}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->implicit()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual/range {v32 .. v32}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->isolation()Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/transactions/TransactionIsolation;->READ_COMMITTED:Lorg/apache/ignite/transactions/TransactionIsolation;

    if-ne v4, v5, :cond_5

    .line 2157
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto/16 :goto_3

    .line 2164
    .end local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v26    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    .end local v28    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_f
    if-nez p8, :cond_10

    if-eqz v30, :cond_10

    if-eqz p2, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->readThrough()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2165
    move-object/from16 v10, v30

    .line 2167
    .local v10, "loadKeys":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    move-object/from16 v16, v32

    .line 2169
    .local v16, "tx0":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 2171
    .local v11, "loaded":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    new-instance v4, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->closures()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    new-instance v8, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;

    move-object/from16 v9, p0

    move-object/from16 v12, v29

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p6

    invoke-direct/range {v8 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Map;Ljava/util/Collection;Ljava/util/Map;ZZZLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    invoke-virtual {v6, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectSafe(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v8}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocalSafe(Ljava/util/concurrent/Callable;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v5

    new-instance v18, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$17;

    move-object/from16 v19, p0

    move-object/from16 v20, v16

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    move-object/from16 v23, v17

    invoke-direct/range {v18 .. v23}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$17;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Ljava/util/Map;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    new-instance v6, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$18;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v6, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$18;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Map;)V

    move-object/from16 v0, v18

    invoke-direct {v4, v5, v0, v6}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;Lorg/apache/ignite/lang/IgniteBiClosure;Lorg/apache/ignite/lang/IgniteBiClosure;)V

    goto/16 :goto_0

    .line 2292
    .end local v10    # "loadKeys":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .end local v11    # "loaded":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v16    # "tx0":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    :cond_10
    if-eqz v30, :cond_12

    .line 2293
    invoke-interface/range {v30 .. v30}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_11
    :goto_a
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 2294
    .restart local v28    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v3

    .line 2296
    .restart local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-eqz v3, :cond_11

    .line 2297
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto :goto_a

    .line 2302
    .end local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v28    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_12
    new-instance v4, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v29

    invoke-direct {v4, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V
    :try_end_7
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 2309
    .end local v17    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v29    # "map":Ljava/util/Map;, "Ljava/util/Map<TK1;TV1;>;"
    .end local v30    # "misses":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    :cond_13
    new-instance v18, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$19;

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, p1

    move/from16 v22, p6

    move/from16 v23, p8

    invoke-direct/range {v18 .. v23}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$19;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Collection;Ljava/util/Collection;ZZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOp(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v4

    goto/16 :goto_0

    .line 2152
    .restart local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v7    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v17    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .restart local v25    # "i$":Ljava/util/Iterator;
    .restart local v28    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v29    # "map":Ljava/util/Map;, "Ljava/util/Map<TK1;TV1;>;"
    .restart local v30    # "misses":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .restart local v33    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :catch_5
    move-exception v26

    goto/16 :goto_9

    .end local v30    # "misses":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .end local v33    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v31    # "misses":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    :cond_14
    move-object/from16 v30, v31

    .end local v31    # "misses":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .restart local v30    # "misses":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    goto/16 :goto_3

    .end local v30    # "misses":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .restart local v31    # "misses":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .restart local v33    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_15
    move-object/from16 v30, v31

    .end local v31    # "misses":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .restart local v30    # "misses":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    goto/16 :goto_7
.end method

.method public getAllOutTx(Ljava/util/List;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TK;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<TK;>;"
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 1625
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->currentTaskName()Ljava/lang/String;

    move-result-object v6

    .line 1627
    .local v6, "taskName":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isReadFromBackup()Z

    move-result v0

    if-nez v0, :cond_0

    move v2, v3

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    move v7, v3

    invoke-virtual/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->getAllAsync(Ljava/util/Collection;ZZLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Ljava/lang/String;ZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_0
    move v2, v8

    goto :goto_0
.end method

.method public getAllOutTxAsync(Ljava/util/List;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TK;>;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<TK;>;"
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 1633
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->currentTaskName()Ljava/lang/String;

    move-result-object v6

    .line 1635
    .local v6, "taskName":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isReadFromBackup()Z

    move-result v0

    if-nez v0, :cond_0

    move v2, v3

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    move v7, v3

    invoke-virtual/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->getAllAsync(Ljava/util/Collection;ZZLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Ljava/lang/String;ZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0

    :cond_0
    move v2, v8

    goto :goto_0
.end method

.method public getAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1873
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-string v4, "key"

    invoke-static {p1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1875
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v1

    .line 1877
    .local v1, "statsEnabled":Z
    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1879
    .local v2, "start":J
    :goto_0
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->getAsync(Ljava/lang/Object;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 1881
    .local v0, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TV;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1882
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$14;

    invoke-direct {v4, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$14;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 1889
    :cond_0
    if-eqz v1, :cond_1

    .line 1890
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateGetTimeStatClosure;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v5

    invoke-direct {v4, v5, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateGetTimeStatClosure;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;J)V

    invoke-interface {v0, v4}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 1892
    :cond_1
    return-object v0

    .line 1877
    .end local v0    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TV;>;"
    .end local v2    # "start":J
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public final getAsync(Ljava/lang/Object;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p2, "deserializePortable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 5026
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->LOCAL:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)V

    .line 5029
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->checkJta()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5035
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->getAllAsync(Ljava/util/Collection;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$75;

    invoke-direct {v2, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$75;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    :goto_0
    return-object v1

    .line 5031
    :catch_0
    move-exception v0

    .line 5032
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getForcePrimary(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1600
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->LOCAL:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)V

    .line 1602
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->currentTaskName()Ljava/lang/String;

    move-result-object v6

    .line 1604
    .local v6, "taskName":Ljava/lang/String;
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v0, p0

    move-object v5, v4

    move v7, v2

    move v8, v3

    invoke-virtual/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->getAllAsync(Ljava/util/Collection;ZZLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Ljava/lang/String;ZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getForcePrimaryAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1610
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->LOCAL:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)V

    .line 1612
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->currentTaskName()Ljava/lang/String;

    move-result-object v6

    .line 1614
    .local v6, "taskName":Ljava/lang/String;
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v0, p0

    move-object v5, v4

    move v7, v2

    move v8, v3

    invoke-virtual/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->getAllAsync(Ljava/util/Collection;ZZLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Ljava/lang/String;ZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$10;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$10;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method varargs globalLoadCache(Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lorg/apache/ignite/lang/IgniteBiPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 4072
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "p":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->globalLoadCacheAsync(Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 4073
    return-void
.end method

.method varargs globalLoadCacheAsync(Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 12
    .param p1    # Lorg/apache/ignite/lang/IgniteBiPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "p":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 4083
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->forCacheNodes(Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v6

    .line 4085
    .local v6, "nodes":Lorg/apache/ignite/cluster/ClusterGroup;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_NO_FAILOVER:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 4087
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v7

    .line 4089
    .local v7, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v4

    .line 4091
    .local v4, "plc":Ljavax/cache/expiry/ExpiryPolicy;
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v8

    sget-object v9, Lorg/apache/ignite/internal/GridClosureCallMode;->BROADCAST:Lorg/apache/ignite/internal/GridClosureCallMode;

    new-array v10, v3, [Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;

    const/4 v11, 0x0

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;-><init>(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;Ljavax/cache/expiry/ExpiryPolicy;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$1;)V

    aput-object v0, v10, v11

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterGroup;->nodes()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v8, v9, v0, v1}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v0

    return-object v0

    .end local v4    # "plc":Ljavax/cache/expiry/ExpiryPolicy;
    :cond_0
    move-object v4, v5

    .line 4089
    goto :goto_0
.end method

.method public globalPrimarySize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 4215
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->globalSize(Z)I

    move-result v0

    return v0
.end method

.method public globalSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 4200
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->globalSize(Z)I

    move-result v0

    return v0
.end method

.method public gridProjection()Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 2

    .prologue
    .line 208
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->forCacheNodes(Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public igfsDataSpaceMax()J
    .locals 2

    .prologue
    .line 4825
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->igfsDataSpaceMax:J

    return-wide v0
.end method

.method public igfsDataSpaceUsed()J
    .locals 2

    .prologue
    .line 4818
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->igfsDataCache:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4820
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->igfsDataCacheSize:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public igniteIterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v3, 0x0

    .line 4254
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isSwapOrOffheapEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4255
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->localIteratorHonorExpirePolicy()Ljava/util/Iterator;

    move-result-object v1

    .line 4261
    :goto_0
    return-object v1

    .line 4257
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->queries()Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;->createScanQuery(Lorg/apache/ignite/lang/IgniteBiPredicate;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;

    move-result-object v1

    invoke-interface {v1, v3}, Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;->keepAll(Z)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;->execute([Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    move-result-object v0

    .line 4261
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture<Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->itHolder()Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$70;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$70;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)V

    invoke-virtual {v1, v0, v2}, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;->iterator(Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;Lorg/apache/ignite/internal/processors/cache/CacheIteratorConverter;)Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;

    move-result-object v1

    goto :goto_0
.end method

.method protected init()V
    .locals 0

    .prologue
    .line 552
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    return-void
.end method

.method public varargs invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;
    .locals 6
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2503
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;"
    const-string v0, "key"

    const-string v1, "entryProcessor"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2505
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 2506
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 2508
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 2510
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$26;

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$26;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;ZLjava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->syncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/cache/processor/EntryProcessorResult;

    return-object v0
.end method

.method public varargs invokeAll(Ljava/util/Map;[Ljava/lang/Object;)Ljava/util/Map;
    .locals 3
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;>;"
    const/4 v0, 0x1

    .line 2693
    const-string v1, "map"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2695
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v1, :cond_0

    .line 2696
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKeys(Ljava/lang/Iterable;)V

    .line 2698
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 2700
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$34;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-direct {v1, p0, v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$34;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;ZLjava/util/Map;[Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->syncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs invokeAll(Ljava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljava/util/Map;
    .locals 6
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<+TK;>;",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .local p2, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;"
    const/4 v2, 0x1

    .line 2537
    const-string v0, "keys"

    const-string v1, "entryProcessor"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2539
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 2540
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKeys(Ljava/lang/Iterable;)V

    .line 2542
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 2544
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_0
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$27;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;ZLjava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->syncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public varargs invokeAllAsync(Ljava/util/Map;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 4
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 2658
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;>;"
    const-string v2, "map"

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2660
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v2, :cond_0

    .line 2661
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKeys(Ljava/lang/Iterable;)V

    .line 2663
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 2665
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$32;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$32;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Collection;Ljava/util/Map;[Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 2675
    .local v0, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    move-object v1, v0

    .line 2677
    .local v1, "fut0":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;>;"
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$33;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$33;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)V

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    return-object v2
.end method

.method public varargs invokeAllAsync(Ljava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 8
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<+TK;>;",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 2616
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .local p2, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;"
    const-string v0, "keys"

    const-string v1, "entryProcessor"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2618
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 2619
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKeys(Ljava/lang/Iterable;)V

    .line 2621
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 2623
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$30;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$30;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Collection;Ljava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v6

    .line 2639
    .local v6, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    move-object v7, v6

    .line 2642
    .local v7, "fut0":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$31;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$31;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)V

    invoke-interface {v7, v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs invokeAsync(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 8
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/processor/EntryProcessorException;
        }
    .end annotation

    .prologue
    .line 2571
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;"
    const-string v0, "key"

    const-string v1, "entryProcessor"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2573
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 2574
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 2576
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 2578
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$28;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$28;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/lang/Object;Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v6

    .line 2591
    .local v6, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    move-object v7, v6

    .line 2593
    .local v7, "fut0":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$29;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$29;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)V

    invoke-interface {v7, v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public isColocated()Z
    .locals 1

    .prologue
    .line 344
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isDht()Z
    .locals 1

    .prologue
    .line 358
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isDhtAtomic()Z
    .locals 1

    .prologue
    .line 351
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 610
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isIgfsDataCache()Z
    .locals 1

    .prologue
    .line 4813
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->igfsDataCache:Z

    return v0
.end method

.method public isLocal()Z
    .locals 1

    .prologue
    .line 337
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isLocked(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x0

    .line 3707
    const-string v3, "key"

    invoke-static {p1, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3709
    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v3, :cond_0

    .line 3710
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 3712
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    .line 3716
    .local v0, "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    .line 3718
    .local v1, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-eqz v1, :cond_1

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {v1, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->lockedByAny([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 3720
    .end local v1    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public isLockedByThread(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v4, 0x0

    .line 3728
    const-string v5, "key"

    invoke-static {p1, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3730
    iget-boolean v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v5, :cond_0

    .line 3731
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 3734
    :cond_0
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    .line 3736
    .local v0, "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    new-instance v5, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersion()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(J)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v0, v5, v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entry0(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    .line 3739
    .local v1, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-nez v1, :cond_2

    .line 3752
    .end local v0    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v1    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_1
    :goto_0
    return v4

    .line 3743
    .restart local v0    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v1    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_2
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->isDht()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->isNearEnabled(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3744
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDht()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v3

    .line 3746
    .local v3, "near":Lorg/apache/ignite/internal/processors/cache/GridCache;, "Lorg/apache/ignite/internal/processors/cache/GridCache<TK;TV;>;"
    :goto_1
    invoke-interface {v3, p1}, Lorg/apache/ignite/internal/processors/cache/GridCache;->isLockedByThread(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->lockedByThread()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    .line 3744
    .end local v3    # "near":Lorg/apache/ignite/internal/processors/cache/GridCache;, "Lorg/apache/ignite/internal/processors/cache/GridCache<TK;TV;>;"
    :cond_4
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v3

    goto :goto_1

    .line 3749
    :cond_5
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->lockedByThread()Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 3751
    .end local v0    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v1    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :catch_0
    move-exception v2

    .line 3752
    .local v2, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    goto :goto_0
.end method

.method public isMongoDataCache()Z
    .locals 1

    .prologue
    .line 4830
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->mongoDataCache:Z

    return v0
.end method

.method public isMongoMetaCache()Z
    .locals 1

    .prologue
    .line 4835
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->mongoMetaCache:Z

    return v0
.end method

.method public isNear()Z
    .locals 1

    .prologue
    .line 330
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 4225
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected iterator(Ljava/util/Iterator;Z)Ljava/util/Iterator;
    .locals 1
    .param p2, "deserializePortable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            ">;Z)",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 5210
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$77;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$77;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Iterator;Z)V

    return-object v0
.end method

.method public keepPortable()Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .line 428
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keepPortable0()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 430
    .local v0, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK1;TV1;>;"
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v1, v2, v0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1
.end method

.method public keepPortable0()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v3, 0x0

    .line 439
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Ljava/util/Set;Ljava/util/UUID;ZLjavax/cache/expiry/ExpiryPolicy;)V

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1260
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v0, 0x0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keySet([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public varargs keySet([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;
    .locals 1
    .param p1, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 4980
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->keySet([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public loadAll(Ljava/util/Set;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 11
    .param p2, "replaceExisting"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+TK;>;Z)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    const/4 v10, 0x1

    .line 3939
    const-string v5, "keys"

    invoke-static {p1, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3941
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3942
    .local v1, "key":Ljava/lang/Object;
    const-string v5, "key"

    invoke-static {v1, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3944
    .end local v1    # "key":Ljava/lang/Object;
    :cond_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->configured()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3945
    new-instance v5, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v5}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V

    .line 3979
    :goto_1
    return-object v5

    .line 3947
    :cond_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v4

    .line 3949
    .local v4, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v3

    .line 3951
    .local v3, "plc":Ljavax/cache/expiry/ExpiryPolicy;
    :goto_2
    if-eqz p2, :cond_5

    .line 3952
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->isLocalStore()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3953
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->forDataNodes(Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterGroup;->nodes()Ljava/util/Collection;

    move-result-object v2

    .line 3955
    .local v2, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3956
    new-instance v5, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v5}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V

    goto :goto_1

    .line 3949
    .end local v2    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v3    # "plc":Ljavax/cache/expiry/ExpiryPolicy;
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 3958
    .restart local v2    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .restart local v3    # "plc":Ljavax/cache/expiry/ExpiryPolicy;
    :cond_3
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->closures()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/internal/GridClosureCallMode;->BROADCAST:Lorg/apache/ignite/internal/GridClosureCallMode;

    new-instance v7, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, p1, v10, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;-><init>(Ljava/lang/String;Ljava/util/Collection;ZLjavax/cache/expiry/ExpiryPolicy;)V

    invoke-virtual {v5, v6, v7, v2, v10}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callAsyncNoFailover(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/concurrent/Callable;Ljava/util/Collection;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v5

    goto :goto_1

    .line 3964
    .end local v2    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_4
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->closures()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v5

    new-instance v6, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$65;

    invoke-direct {v6, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$65;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Set;)V

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocalSafe(Ljava/util/concurrent/Callable;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v5

    goto :goto_1

    .line 3974
    :cond_5
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->forDataNodes(Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterGroup;->nodes()Ljava/util/Collection;

    move-result-object v2

    .line 3976
    .restart local v2    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3977
    new-instance v5, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v5}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V

    goto/16 :goto_1

    .line 3979
    :cond_6
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->closures()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/internal/GridClosureCallMode;->BROADCAST:Lorg/apache/ignite/internal/GridClosureCallMode;

    new-instance v7, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, p1, v9, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;-><init>(Ljava/lang/String;Ljava/util/Collection;ZLjavax/cache/expiry/ExpiryPolicy;)V

    invoke-virtual {v5, v6, v7, v2, v10}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callAsyncNoFailover(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/concurrent/Callable;Ljava/util/Collection;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v5

    goto/16 :goto_1
.end method

.method public localEntries([Lorg/apache/ignite/cache/CachePeekMode;)Ljava/lang/Iterable;
    .locals 9
    .param p1, "peekModes"    # [Lorg/apache/ignite/cache/CachePeekMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/cache/CachePeekMode;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v6, 0x1

    .line 694
    sget-boolean v7, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 696
    :cond_0
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v8, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_READ:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->checkSecurity(Lorg/apache/ignite/plugin/security/GridSecurityPermission;)V

    .line 698
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->parsePeekModes([Lorg/apache/ignite/cache/CachePeekMode;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;

    move-result-object v3

    .line 700
    .local v3, "modes":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 702
    .local v2, "its":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Iterator<Ljavax/cache/Cache$Entry<TK;TV;>;>;>;"
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 703
    invoke-static {v3, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$002(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    .line 704
    invoke-static {v3, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$102(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    .line 706
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 707
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->entries0()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->keepPortable()Z

    move-result v8

    if-nez v8, :cond_5

    :goto_0
    invoke-virtual {p0, v7, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->iterator(Ljava/util/Iterator;Z)Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 721
    :cond_1
    :goto_1
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 722
    :cond_2
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v5

    .line 724
    .local v5, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v4

    .line 726
    .local v4, "swapMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;
    :goto_2
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$400(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 727
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v6

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v7

    invoke-virtual {v4, v6, v7, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapIterator(ZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 729
    :cond_3
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$500(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 730
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v6

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v7

    invoke-virtual {v4, v6, v7, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapIterator(ZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 733
    .end local v4    # "swapMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;
    .end local v5    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_4
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->flatIterators(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object v1

    .line 735
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/cache/Cache$Entry<TK;TV;>;>;"
    new-instance v6, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$8;

    invoke-direct {v6, p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$8;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Iterator;)V

    return-object v6

    .line 707
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/cache/Cache$Entry<TK;TV;>;>;"
    :cond_5
    const/4 v6, 0x0

    goto :goto_0

    .line 709
    :cond_6
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 710
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 711
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->nearEntriesIterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 713
    :cond_7
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 714
    :cond_8
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    .line 716
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    :goto_3
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v6

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v7

    invoke-virtual {v0, v6, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->localEntriesIterator(ZZ)Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 714
    .end local v0    # "cache":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    :cond_9
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    goto :goto_3

    .line 724
    .restart local v5    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_a
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v4

    goto/16 :goto_2
.end method

.method public localLoad(Ljava/util/Collection;Ljavax/cache/expiry/ExpiryPolicy;)V
    .locals 12
    .param p2, "plc"    # Ljavax/cache/expiry/ExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;",
            "Ljavax/cache/expiry/ExpiryPolicy;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 4026
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDrEnabled()Z

    move-result v10

    .line 4027
    .local v10, "replicate":Z
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v9

    .line 4029
    .local v9, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    if-eqz p2, :cond_0

    move-object v4, p2

    .line 4031
    .local v4, "plc0":Ljavax/cache/expiry/ExpiryPolicy;
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheKeysView(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v11

    .line 4033
    .local v11, "keys0":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->isLocalStore()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4034
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->dataStream()Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->dataStreamer(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    move-result-object v3

    .line 4037
    .local v3, "ldr":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;
    :try_start_0
    new-instance v1, Lorg/apache/ignite/internal/processors/dr/IgniteDrDataStreamerCacheUpdater;

    invoke-direct {v1}, Lorg/apache/ignite/internal/processors/dr/IgniteDrDataStreamerCacheUpdater;-><init>()V

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->receiver(Lorg/apache/ignite/stream/StreamReceiver;)V

    .line 4039
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;Ljavax/cache/expiry/ExpiryPolicy;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$1;)V

    .line 4041
    .local v0, "c":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>.LocalStoreLoadClosure;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v11, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->localStoreLoadAll(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;Lorg/apache/ignite/internal/util/lang/GridInClosure3;)V

    .line 4043
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;->onDone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4046
    invoke-virtual {v3, v6}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->closeEx(Z)V

    .line 4064
    .end local v0    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>.LocalStoreLoadClosure;"
    .end local v3    # "ldr":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;
    :goto_1
    return-void

    .line 4029
    .end local v4    # "plc0":Ljavax/cache/expiry/ExpiryPolicy;
    .end local v11    # "keys0":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v4

    goto :goto_0

    .line 4046
    .restart local v3    # "ldr":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;
    .restart local v4    # "plc0":Ljavax/cache/expiry/ExpiryPolicy;
    .restart local v11    # "keys0":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :catchall_0
    move-exception v1

    invoke-virtual {v3, v6}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->closeEx(Z)V

    throw v1

    .line 4051
    .end local v3    # "ldr":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->nextForLoad()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    .line 4053
    .local v8, "ver0":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v1

    new-instance v5, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$67;

    move-object v6, p0

    move-object v7, v4

    invoke-direct/range {v5 .. v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$67;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljavax/cache/expiry/ExpiryPolicy;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)V

    invoke-virtual {v1, v2, v11, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->loadAllFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteBiInClosure;)Z

    goto :goto_1
.end method

.method public localLoadCache(Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;)V
    .locals 15
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 3830
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "p":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDrEnabled()Z

    move-result v12

    .line 3831
    .local v12, "replicate":Z
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v11

    .line 3833
    .local v11, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v14

    .line 3835
    .local v14, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v13

    .line 3837
    .local v13, "plc0":Ljavax/cache/expiry/ExpiryPolicy;
    :goto_0
    if-eqz v13, :cond_1

    move-object v5, v13

    .line 3839
    .local v5, "plc":Ljavax/cache/expiry/ExpiryPolicy;
    :goto_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->isLocalStore()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3840
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->dataStream()Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->dataStreamer(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    move-result-object v4

    .line 3843
    .local v4, "ldr":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;
    :try_start_0
    new-instance v2, Lorg/apache/ignite/internal/processors/dr/IgniteDrDataStreamerCacheUpdater;

    invoke-direct {v2}, Lorg/apache/ignite/internal/processors/dr/IgniteDrDataStreamerCacheUpdater;-><init>()V

    invoke-virtual {v4, v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->receiver(Lorg/apache/ignite/stream/StreamReceiver;)V

    .line 3845
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;

    const/4 v6, 0x0

    move-object v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;Ljavax/cache/expiry/ExpiryPolicy;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$1;)V

    .line 3847
    .local v1, "c":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>.LocalStoreLoadClosure;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->loadCache(Lorg/apache/ignite/internal/util/lang/GridInClosure3;[Ljava/lang/Object;)Z

    .line 3849
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;->onDone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3852
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->closeEx(Z)V

    .line 3873
    .end local v1    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>.LocalStoreLoadClosure;"
    .end local v4    # "ldr":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;
    :goto_2
    return-void

    .line 3835
    .end local v5    # "plc":Ljavax/cache/expiry/ExpiryPolicy;
    .end local v13    # "plc0":Ljavax/cache/expiry/ExpiryPolicy;
    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    .line 3837
    .restart local v13    # "plc0":Ljavax/cache/expiry/ExpiryPolicy;
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v5

    goto :goto_1

    .line 3852
    .restart local v4    # "ldr":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;
    .restart local v5    # "plc":Ljavax/cache/expiry/ExpiryPolicy;
    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->closeEx(Z)V

    throw v2

    .line 3857
    .end local v4    # "ldr":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->nextForLoad()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v9

    .line 3859
    .local v9, "ver0":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v2

    new-instance v6, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$63;

    move-object v7, p0

    move-object v8, v5

    move-object/from16 v10, p1

    invoke-direct/range {v6 .. v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$63;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljavax/cache/expiry/ExpiryPolicy;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)V

    move-object/from16 v0, p2

    invoke-virtual {v2, v6, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->loadCache(Lorg/apache/ignite/internal/util/lang/GridInClosure3;[Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public localLoadCacheAsync(Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 3920
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "p":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->closures()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$64;

    invoke-direct {v2, p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$64;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectSafe(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocalSafe(Ljava/util/concurrent/Callable;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public localPeek(Ljava/lang/Object;[Lorg/apache/ignite/cache/CachePeekMode;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Ljava/lang/Object;
    .locals 22
    .param p2, "peekModes"    # [Lorg/apache/ignite/cache/CachePeekMode;
    .param p3, "plc"    # Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[",
            "Lorg/apache/ignite/cache/CachePeekMode;",
            "Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 752
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-string v2, "key"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 754
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v2, :cond_0

    .line 755
    invoke-virtual/range {p0 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 757
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v3, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_READ:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->checkSecurity(Lorg/apache/ignite/plugin/security/GridSecurityPermission;)V

    .line 759
    invoke-static/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->parsePeekModes([Lorg/apache/ignite/cache/CachePeekMode;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;

    move-result-object v16

    .line 762
    .local v16, "modes":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v7

    .line 764
    .local v7, "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    const/4 v12, 0x0

    .line 766
    .local v12, "cacheVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v2

    if-nez v2, :cond_13

    .line 767
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v5

    .line 769
    .local v5, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v18

    .line 773
    .local v18, "part":I
    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 774
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Lorg/apache/ignite/cluster/ClusterNode;ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v15

    .line 776
    .local v15, "keyPrimary":Z
    if-eqz v15, :cond_4

    .line 777
    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 778
    const/16 v21, 0x0

    .line 849
    .end local v5    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .end local v7    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v12    # "cacheVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v15    # "keyPrimary":Z
    .end local v18    # "part":I
    :goto_0
    return-object v21

    .line 780
    .restart local v5    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .restart local v7    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v12    # "cacheVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v15    # "keyPrimary":Z
    .restart local v18    # "part":I
    :cond_2
    const/16 v17, 0x0

    .line 813
    .end local v15    # "keyPrimary":Z
    .local v17, "nearKey":Z
    :cond_3
    :goto_1
    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v2

    if-nez v2, :cond_b

    .line 814
    const/16 v21, 0x0

    goto :goto_0

    .line 783
    .end local v17    # "nearKey":Z
    .restart local v15    # "keyPrimary":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->belongs(Lorg/apache/ignite/cluster/ClusterNode;ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v14

    .line 785
    .local v14, "keyBackup":Z
    if-eqz v14, :cond_6

    .line 786
    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 787
    const/16 v21, 0x0

    goto :goto_0

    .line 789
    :cond_5
    const/16 v17, 0x0

    .restart local v17    # "nearKey":Z
    goto :goto_1

    .line 792
    .end local v17    # "nearKey":Z
    :cond_6
    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 793
    const/16 v21, 0x0

    goto :goto_0

    .line 795
    :cond_7
    const/16 v17, 0x1

    .line 798
    .restart local v17    # "nearKey":Z
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$502(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    .line 799
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$402(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 845
    .end local v5    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .end local v7    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v12    # "cacheVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v14    # "keyBackup":Z
    .end local v15    # "keyPrimary":Z
    .end local v17    # "nearKey":Z
    .end local v18    # "part":I
    :catch_0
    move-exception v13

    .line 846
    .local v13, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 847
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got removed entry during \'peek\': "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 849
    :cond_8
    const/16 v21, 0x0

    goto :goto_0

    .line 804
    .end local v13    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .restart local v5    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .restart local v7    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v12    # "cacheVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v18    # "part":I
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->belongs(Lorg/apache/ignite/cluster/ClusterNode;ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v2

    if-nez v2, :cond_a

    const/16 v17, 0x1

    .line 806
    .restart local v17    # "nearKey":Z
    :goto_2
    if-eqz v17, :cond_3

    .line 808
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$502(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    .line 809
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$402(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    goto/16 :goto_1

    .line 804
    .end local v17    # "nearKey":Z
    :cond_a
    const/16 v17, 0x0

    goto :goto_2

    .line 816
    .restart local v17    # "nearKey":Z
    :cond_b
    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 817
    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    .line 820
    .local v1, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :goto_3
    if-eqz v1, :cond_c

    .line 821
    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v2

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$500(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v3

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$400(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v4

    move-object/from16 v6, p3

    invoke-interface/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->peek(ZZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v12

    .line 823
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$502(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    .line 824
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$402(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    .line 828
    .end local v1    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_c
    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$500(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$400(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 829
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v20

    .line 831
    .local v20, "swapMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;
    :goto_4
    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$500(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v2

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$400(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->read(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v19

    .line 833
    .local v19, "swapEntry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    if-eqz v19, :cond_12

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v12

    .line 839
    .end local v5    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .end local v17    # "nearKey":Z
    .end local v18    # "part":I
    .end local v19    # "swapEntry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    .end local v20    # "swapMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;
    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v3, 0x1

    invoke-static {v12, v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v21

    .line 841
    .local v21, "val":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->keepPortable()Z

    move-result v3

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapPortableIfNeeded(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v21

    .line 843
    goto/16 :goto_0

    .line 817
    .end local v21    # "val":Ljava/lang/Object;
    .restart local v5    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .restart local v17    # "nearKey":Z
    .restart local v18    # "part":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    goto/16 :goto_3

    .line 829
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v20

    goto :goto_4

    .line 833
    .restart local v19    # "swapEntry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    .restart local v20    # "swapMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;
    :cond_12
    const/4 v12, 0x0

    goto :goto_5

    .line 837
    .end local v5    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .end local v17    # "nearKey":Z
    .end local v18    # "part":I
    .end local v19    # "swapEntry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    .end local v20    # "swapMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;
    :cond_13
    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v8

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$500(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v9

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$400(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v10

    move-object/from16 v6, p0

    move-object/from16 v11, p3

    invoke-direct/range {v6 .. v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->localCachePeek0(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ZZZLorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    goto :goto_5
.end method

.method public localRemoveAll(Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p1, "filter"    # Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 3601
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 3603
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keySet([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;

    move-result-object v0

    .line 3605
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    :goto_0
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$62;

    invoke-direct {v1, p0, v0, v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$62;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Collection;Ljava/util/Set;Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    return-object v1

    .line 3603
    .end local v0    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public localRemoveAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 3618
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->localRemoveAll(Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 3619
    return-void
.end method

.method public localSize([Lorg/apache/ignite/cache/CachePeekMode;)I
    .locals 7
    .param p1, "peekModes"    # [Lorg/apache/ignite/cache/CachePeekMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v6, 0x1

    .line 4147
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->parsePeekModes([Lorg/apache/ignite/cache/CachePeekMode;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;

    move-result-object v1

    .line 4149
    .local v1, "modes":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;
    const/4 v2, 0x0

    .line 4151
    .local v2, "size":I
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4152
    invoke-static {v1, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$002(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    .line 4153
    invoke-static {v1, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$102(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z

    .line 4155
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4156
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->size()I

    move-result v5

    add-int/2addr v2, v5

    .line 4178
    :cond_0
    :goto_0
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4179
    :cond_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v4

    .line 4181
    .local v4, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v3

    .line 4183
    .local v3, "swapMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;
    :goto_1
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$400(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4184
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v5

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v6

    invoke-virtual {v3, v5, v6, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEntriesCount(ZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I

    move-result v5

    add-int/2addr v2, v5

    .line 4186
    :cond_2
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$500(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4187
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v5

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v6

    invoke-virtual {v3, v5, v6, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEntriesCount(ZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I

    move-result v5

    add-int/2addr v2, v5

    .line 4190
    .end local v3    # "swapMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;
    .end local v4    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_3
    return v2

    .line 4159
    :cond_4
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4160
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4161
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->nearSize()I

    move-result v5

    add-int/2addr v2, v5

    .line 4163
    :cond_5
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    .line 4165
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    :goto_2
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 4166
    :cond_6
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4167
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->primarySize()I

    move-result v5

    add-int/2addr v2, v5

    .line 4169
    :cond_7
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4170
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->size()I

    move-result v5

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->primarySize()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v2, v5

    goto/16 :goto_0

    .line 4163
    .end local v0    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    :cond_8
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    goto :goto_2

    .line 4173
    .restart local v0    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    :cond_9
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->size()I

    move-result v5

    add-int/2addr v2, v5

    goto/16 :goto_0

    .line 4181
    .end local v0    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .restart local v4    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_a
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v3

    goto/16 :goto_1
.end method

.method public varargs lock(Ljava/lang/Object;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 2
    .param p2, "timeout"    # J
    .param p4, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 3648
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3650
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->lockAll(Ljava/util/Collection;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v0

    return v0
.end method

.method public varargs lockAll(Ljava/util/Collection;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 6
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "timeout"    # J
    .param p4, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 3656
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3657
    const/4 v3, 0x1

    .line 3679
    :cond_0
    :goto_0
    return v3

    .line 3659
    :cond_1
    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v3, :cond_2

    .line 3660
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKeys(Ljava/lang/Iterable;)V

    .line 3662
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->lockAllAsync(Ljava/util/Collection;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 3664
    .local v0, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    .line 3669
    .local v2, "isInterrupted":Z
    :goto_1
    :try_start_0
    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 3678
    if-eqz v2, :cond_0

    .line 3679
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 3671
    :catch_0
    move-exception v1

    .line 3673
    .local v1, "ignored":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    const/4 v2, 0x1

    .line 3674
    goto :goto_1

    .line 3678
    .end local v1    # "ignored":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    .line 3679
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    throw v3
.end method

.method public varargs lockAsync(Ljava/lang/Object;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .param p2, "timeout"    # J
    .param p4, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3686
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3688
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 3689
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 3691
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->lockAllAsync(Ljava/util/Collection;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method protected log()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 323
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method public map()Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
    .locals 1

    .prologue
    .line 309
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    return-object v0
.end method

.method public metrics()Lorg/apache/ignite/cache/CacheMetrics;
    .locals 2

    .prologue
    .line 3623
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsSnapshot;-><init>(Lorg/apache/ignite/cache/CacheMetrics;)V

    return-object v0
.end method

.method public metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;
    .locals 1

    .prologue
    .line 3635
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    return-object v0
.end method

.method public mxBean()Lorg/apache/ignite/mxbean/CacheMetricsMXBean;
    .locals 1

    .prologue
    .line 3628
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->mxBean:Lorg/apache/ignite/mxbean/CacheMetricsMXBean;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nearSize()I
    .locals 1

    .prologue
    .line 4205
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public offHeapAllocatedSize()J
    .locals 2

    .prologue
    .line 4396
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offHeapAllocatedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public offHeapEntriesCount()J
    .locals 2

    .prologue
    .line 4391
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offHeapEntriesCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public offHeapIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 4386
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->lazyOffHeapIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract onDeferredDelete(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
.end method

.method public onIgfsDataSizeChanged(J)V
    .locals 1
    .param p1, "delta"    # J

    .prologue
    .line 4844
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->igfsDataCache:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4846
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->igfsDataCacheSize:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0, p1, p2}, Lorg/jsr166/LongAdder8;->add(J)V

    .line 4847
    return-void
.end method

.method protected onKernalStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 599
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    return-void
.end method

.method public onKernalStop()V
    .locals 0

    .prologue
    .line 606
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    return-void
.end method

.method public onUndeploy(Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "ldr"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1109
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->onUndeploy(Ljava/lang/ClassLoader;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 1110
    return-void
.end method

.method public overflowSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 3795
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public peek(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 892
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peek(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peek(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;",
            ">;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 897
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "modes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->localTxx()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peek0(Ljava/lang/Object;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peek(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    .locals 7
    .param p2, "filter"    # Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x0

    .line 4942
    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->SMART:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    const/4 v5, 0x1

    new-array v5, v5, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {p0, v3, p1, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peek0(ZLjava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v1

    .line 4944
    .local v1, "peek":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<TV;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4951
    .end local v1    # "peek":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<TV;>;"
    :cond_0
    return-object v2

    .line 4946
    :catch_0
    move-exception v0

    .line 4947
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;->printStackTrace()V

    .line 4949
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method protected peek0(Ljava/lang/Object;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Ljava/lang/Object;
    .locals 4
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "modes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;>;"
    const/4 v2, 0x0

    .line 977
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peek0(ZLjava/lang/Object;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v1

    .line 979
    .local v1, "peek":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<TV;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 986
    .end local v1    # "peek":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<TV;>;"
    :cond_0
    return-object v2

    .line 981
    :catch_0
    move-exception v0

    .line 982
    .local v0, "ex":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;->printStackTrace()V

    .line 984
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method protected peek0(ZLjava/lang/Object;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/util/lang/GridTuple;
    .locals 11
    .param p1, "failFast"    # Z
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ")",
            "Lorg/apache/ignite/internal/util/lang/GridTuple",
            "<TV;>;"
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
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "modes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;>;"
    const/4 v7, 0x0

    .line 1001
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1002
    check-cast v7, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {p0, p2, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peek(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v7

    .line 1043
    :cond_0
    :goto_0
    return-object v7

    .line 1004
    :cond_1
    sget-boolean v8, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->$assertionsDisabled:Z

    if-nez v8, :cond_2

    if-nez p3, :cond_2

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1006
    :cond_2
    const-string v8, "key"

    invoke-static {p2, v8}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1008
    iget-boolean v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v8, :cond_3

    .line 1009
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 1011
    :cond_3
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v9, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_READ:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->checkSecurity(Lorg/apache/ignite/plugin/security/GridSecurityPermission;)V

    .line 1013
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    .line 1015
    .local v0, "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    .line 1018
    .local v1, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :try_start_0
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    .line 1019
    .local v4, "m":Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;
    const/4 v6, 0x0

    .line 1021
    .local v6, "val":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    if-eqz v1, :cond_6

    .line 1022
    const/4 v8, 0x0

    invoke-interface {v1, p1, v4, v8, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->peek0(ZLorg/apache/ignite/internal/processors/cache/GridCachePeekMode;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v6

    .line 1034
    :cond_5
    :goto_1
    if-eqz v6, :cond_4

    .line 1035
    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v7

    goto :goto_0

    .line 1023
    :cond_6
    sget-object v8, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->TX:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    if-eq v4, v8, :cond_7

    sget-object v8, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->SMART:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    if-ne v4, v8, :cond_9

    .line 1024
    :cond_7
    if-eqz p4, :cond_8

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v9, 0x0

    invoke-interface {p4, v8, p1, v0, v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->peek(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;ZLorg/apache/ignite/internal/processors/cache/KeyCacheObject;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v6

    :goto_2
    goto :goto_1

    :cond_8
    move-object v6, v7

    goto :goto_2

    .line 1025
    :cond_9
    sget-object v8, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->SWAP:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    if-ne v4, v8, :cond_a

    .line 1026
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekSwap(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v6

    goto :goto_1

    .line 1027
    :cond_a
    sget-object v8, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->DB:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    if-ne v4, v8, :cond_5

    .line 1028
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekDb(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Ljava/lang/Object;

    move-result-object v5

    .line 1030
    .local v5, "v":Ljava/lang/Object;
    if-eqz v5, :cond_5

    .line 1031
    new-instance v8, Lorg/apache/ignite/internal/util/lang/GridTuple;

    invoke-direct {v8, v5}, Lorg/apache/ignite/internal/util/lang/GridTuple;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v8

    goto/16 :goto_0

    .line 1038
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "m":Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;
    .end local v5    # "v":Ljava/lang/Object;
    .end local v6    # "val":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    :catch_0
    move-exception v3

    .line 1039
    .local v3, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1040
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got removed entry during \'peek\': "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected varargs peek0(ZLjava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/util/lang/GridTuple;
    .locals 11
    .param p1, "failFast"    # Z
    .param p3, "mode"    # Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;
    .param p4, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/util/lang/GridTuple",
            "<TV;>;"
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
    .line 910
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    const-string v8, "key"

    invoke-static {p2, v8}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 912
    iget-boolean v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v8, :cond_0

    .line 913
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 915
    :cond_0
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v9, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_READ:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->checkSecurity(Lorg/apache/ignite/plugin/security/GridSecurityPermission;)V

    .line 917
    const/4 v1, 0x0

    .line 920
    .local v1, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :try_start_0
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    .line 922
    .local v0, "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    .line 924
    if-eqz v1, :cond_1

    .line 925
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->localTxx()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v8

    invoke-interface {v1, p1, p3, p4, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->peek0(ZLorg/apache/ignite/internal/processors/cache/GridCachePeekMode;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v4

    .line 927
    .local v4, "peek":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    if-eqz v4, :cond_1

    .line 928
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 930
    .local v6, "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v9, 0x1

    invoke-static {v6, v8, v9}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v7

    .line 932
    .local v7, "val0":Ljava/lang/Object;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->keepPortable()Z

    move-result v9

    invoke-virtual {v8, v7, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapPortableIfNeeded(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v7

    .line 934
    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v8

    .line 960
    .end local v0    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v4    # "peek":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .end local v6    # "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v7    # "val0":Ljava/lang/Object;
    :goto_0
    return-object v8

    .line 938
    .restart local v0    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_1
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->localTx()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .line 940
    .local v5, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    if-eqz v5, :cond_2

    .line 941
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {v5, v8, p1, v0, p4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->peek(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;ZLorg/apache/ignite/internal/processors/cache/KeyCacheObject;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v4

    .line 943
    .restart local v4    # "peek":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    if-eqz v4, :cond_2

    .line 944
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 946
    .restart local v6    # "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v9, 0x1

    invoke-static {v6, v8, v9}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v7

    .line 948
    .restart local v7    # "val0":Ljava/lang/Object;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->keepPortable()Z

    move-result v9

    invoke-virtual {v8, v7, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapPortableIfNeeded(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v7

    .line 950
    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridTuple;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    goto :goto_0

    .line 954
    .end local v4    # "peek":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .end local v6    # "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v7    # "val0":Ljava/lang/Object;
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 956
    .end local v0    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v5    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :catch_0
    move-exception v3

    .line 957
    .local v3, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 958
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got removed entry during \'peek\': "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 960
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 962
    .end local v3    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :catch_1
    move-exception v2

    .line 963
    .local v2, "ex":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v8, Lorg/apache/ignite/IgniteException;

    invoke-direct {v8, v2}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method protected peekAll0(Ljava/util/Collection;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;)Ljava/util/Map;
    .locals 8
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .param p4    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            "Ljava/util/Collection",
            "<TK;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1076
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    .local p2, "modes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;>;"
    .local p4, "skipped":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1077
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 1100
    :cond_0
    return-object v3

    .line 1079
    :cond_1
    iget-boolean v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v5, :cond_2

    .line 1080
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKeys(Ljava/lang/Iterable;)V

    .line 1082
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v6}, Ljava/util/HashMap;-><init>(IF)V

    .line 1084
    .local v3, "ret":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1086
    .local v2, "k":Ljava/lang/Object;, "TK;"
    if-eqz p4, :cond_5

    const/4 v5, 0x1

    :goto_1
    :try_start_0
    invoke-virtual {p0, v5, v2, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peek0(ZLjava/lang/Object;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v4

    .line 1088
    .local v4, "val":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<TV;>;"
    if-eqz v4, :cond_3

    .line 1089
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1091
    .end local v4    # "val":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<TV;>;"
    :catch_0
    move-exception v1

    .line 1092
    .local v1, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1093
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Filter validation failed for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1095
    :cond_4
    if-eqz p4, :cond_3

    .line 1096
    invoke-interface {p4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1086
    .end local v1    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public peekEx(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v2, 0x0

    .line 1137
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entry0(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    return-object v0
.end method

.method public peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .locals 2
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v1, 0x0

    .line 1128
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entry0(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    return-object v0
.end method

.method public predicate()Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .locals 1

    .prologue
    .line 389
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/GridCachePreloader",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public primaryEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1255
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v0, 0x0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->primaryEntrySet([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public varargs primaryEntrySet([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;
    .locals 6
    .param p1, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 4969
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    new-array v1, v2, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    new-array v2, v2, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/IgniteEx;->affinity(Ljava/lang/String;)Lorg/apache/ignite/cache/affinity/Affinity;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->cachePrimary(Lorg/apache/ignite/cache/affinity/Affinity;Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/F0;->and0([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->entries([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public varargs primaryEntrySetx([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;
    .locals 6
    .param p1, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 1242
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    new-array v1, v2, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    new-array v2, v2, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/IgniteEx;->affinity(Ljava/lang/String;)Lorg/apache/ignite/cache/affinity/Affinity;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->cachePrimary(Lorg/apache/ignite/cache/affinity/Affinity;Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/F0;->and0([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->entriesx([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public primaryKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1265
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v0, 0x0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->primaryKeySet([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public varargs primaryKeySet([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;
    .locals 6
    .param p1, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 4988
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    new-array v1, v2, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    new-array v2, v2, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/IgniteEx;->affinity(Ljava/lang/String;)Lorg/apache/ignite/cache/affinity/Affinity;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->cachePrimary(Lorg/apache/ignite/cache/affinity/Affinity;Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/F0;->and0([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->keySet([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public primarySize()I
    .locals 1

    .prologue
    .line 4210
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->publicSize()I

    move-result v0

    return v0
.end method

.method public primaryValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1294
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v0, 0x0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->primaryValues([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public varargs primaryValues([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Collection;
    .locals 6
    .param p1, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 4999
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    new-array v1, v2, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    new-array v2, v2, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/IgniteEx;->affinity(Ljava/lang/String;)Lorg/apache/ignite/cache/affinity/Affinity;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->cachePrimary(Lorg/apache/ignite/cache/affinity/Affinity;Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/F0;->and0([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->values([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public printMemoryStats()V
    .locals 3

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v2, 0x0

    .line 294
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>  Near cache size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->printMemoryStats()V

    .line 303
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDht()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>  DHT cache size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 302
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>  Cache size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public projection(Ljava/lang/Class;Ljava/lang/Class;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<-TK1;>;",
            "Ljava/lang/Class",
            "<-TV1;>;)",
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<-TK1;>;"
    .local p2, "valType":Ljava/lang/Class;, "Ljava/lang/Class<-TV1;>;"
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 473
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploymentEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->registerClasses([Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {p1, p2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->typeFilter0(Ljava/lang/Class;Ljava/lang/Class;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v3

    move-object v1, p0

    move-object v5, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Ljava/util/Set;Ljava/util/UUID;ZLjavax/cache/expiry/ExpiryPolicy;)V

    .line 490
    .local v0, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK1;TV1;>;"
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v1, v2, v0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    .line 477
    .end local v0    # "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK1;TV1;>;"
    :catch_0
    move-exception v8

    .line 478
    .local v8, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v8}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public projection(Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .locals 9
    .param p1, "filter"    # Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 495
    if-nez p1, :cond_0

    .line 516
    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    :goto_0
    return-object p0

    .line 498
    .restart local p0    # "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploymentEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 500
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->registerClasses([Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object v1, p0

    move-object v3, p1

    move-object v5, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Ljava/util/Set;Ljava/util/UUID;ZLjavax/cache/expiry/ExpiryPolicy;)V

    .line 516
    .local v0, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v1, v2, v0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    move-object p0, v1

    goto :goto_0

    .line 502
    .end local v0    # "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catch_0
    move-exception v8

    .line 503
    .local v8, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v8}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public promote(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4284
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->promote(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public promote(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 11
    .param p2, "deserializePortable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4295
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v9, 0x2

    new-array v9, v9, [Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    sget-object v10, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->READ:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    aput-object v10, v9, v7

    sget-object v10, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->SKIP_SWAP:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    aput-object v10, v9, v6

    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/F;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnFlags(Ljava/util/Collection;)V

    .line 4297
    const-string v8, "key"

    invoke-static {p1, v8}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4299
    iget-boolean v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v8, :cond_0

    .line 4300
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 4302
    :cond_0
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    .line 4304
    .local v0, "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->readAndRemove(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v3

    .line 4306
    .local v3, "unswapped":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    if-nez v3, :cond_2

    .line 4326
    :cond_1
    :goto_0
    return-object v5

    .line 4309
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    .line 4312
    .local v1, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :try_start_0
    invoke-interface {v1, v0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->initialValue(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_1

    .line 4322
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v4

    .line 4324
    .local v4, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v4, :cond_3

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v8

    invoke-interface {v4, v8, v6}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v5

    .line 4326
    .local v5, "val0":Ljava/lang/Object;
    :cond_3
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    if-nez p2, :cond_4

    :goto_1
    invoke-virtual {v8, v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapPortableIfNeeded(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 4315
    .end local v4    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v5    # "val0":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 4316
    .local v2, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4317
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v7, "Entry has been concurrently removed."

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .restart local v4    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v5    # "val0":Ljava/lang/Object;
    :cond_4
    move v6, v7

    .line 4326
    goto :goto_1
.end method

.method public promoteAll(Ljava/util/Collection;)V
    .locals 13
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 4331
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v10, 0x2

    new-array v10, v10, [Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    const/4 v11, 0x0

    sget-object v12, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->READ:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->SKIP_SWAP:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    aput-object v12, v10, v11

    invoke-static {v10}, Lorg/apache/ignite/internal/util/typedef/F;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnFlags(Ljava/util/Collection;)V

    .line 4333
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4375
    :cond_0
    return-void

    .line 4336
    :cond_1
    iget-boolean v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v9, :cond_2

    .line 4337
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKeys(Ljava/lang/Iterable;)V

    .line 4339
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 4341
    .local v8, "unswap":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 4342
    .local v5, "key":Ljava/lang/Object;, "TK;"
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v9, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    .line 4345
    .local v0, "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    .line 4348
    .local v1, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-eqz v1, :cond_4

    :try_start_0
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->obsolete()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->isNewLocked()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 4349
    :cond_4
    if-eqz v1, :cond_5

    .line 4350
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    .line 4352
    :cond_5
    invoke-interface {v8, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4355
    :catch_0
    move-exception v9

    goto :goto_0

    .line 4360
    .end local v0    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v1    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    :cond_6
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->readAndRemove(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v7

    .line 4362
    .local v7, "swapped":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;>;"
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;

    .line 4363
    .local v6, "swapEntry":Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v4

    .line 4365
    .local v4, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    invoke-virtual {p0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    .line 4368
    .restart local v1    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :try_start_1
    invoke-interface {v1, v4, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->initialValue(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)Z
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 4370
    :catch_1
    move-exception v3

    .line 4371
    .local v3, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 4372
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v10, "Entry has been concurrently removed."

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    .locals 16
    .param p3, "cached"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ttl"    # J
    .param p6, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 2331
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v14

    .line 2333
    .local v14, "statsEnabled":Z
    if-eqz v14, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 2335
    .local v12, "start":J
    :goto_0
    const-string v2, "key"

    const-string/jumbo v3, "val"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v2, v1, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2337
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v2, :cond_0

    .line 2338
    invoke-virtual/range {p0 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 2340
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheValue(Ljava/lang/Object;)V

    .line 2342
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 2344
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$20;

    const/4 v4, 0x1

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$20;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;ZLjava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->syncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v15, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cloneOnFlag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 2354
    .local v11, "prevVal":Ljava/lang/Object;, "TV;"
    if-eqz v14, :cond_1

    .line 2355
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v12

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->addPutAndGetTimeNanos(J)V

    .line 2357
    :cond_1
    return-object v11

    .line 2333
    .end local v11    # "prevVal":Ljava/lang/Object;, "TV;"
    .end local v12    # "start":J
    :cond_2
    const-wide/16 v12, 0x0

    goto :goto_0
.end method

.method public varargs put(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    .locals 7
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2320
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->put(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 6
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;[",
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
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    const/4 v3, 0x1

    .line 3058
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v2

    .line 3060
    .local v2, "statsEnabled":Z
    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 3062
    .local v0, "start":J
    :goto_0
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3084
    :cond_0
    :goto_1
    return-void

    .line 3060
    .end local v0    # "start":J
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 3065
    .restart local v0    # "start":J
    :cond_2
    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v4, :cond_3

    .line 3066
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKeys(Ljava/lang/Iterable;)V

    .line 3068
    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheValues(Ljava/lang/Iterable;)V

    .line 3070
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 3072
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$46;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    if-ne v5, v3, :cond_4

    :goto_2
    invoke-direct {v4, p0, v3, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$46;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;ZLjava/util/Map;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->syncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;)Ljava/lang/Object;

    .line 3082
    if-eqz v2, :cond_0

    .line 3083
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->addPutTimeNanos(J)V

    goto :goto_1

    .line 3072
    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public varargs putAllAsync(Ljava/util/Map;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 3089
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3090
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V

    .line 3099
    :goto_0
    return-object v0

    .line 3092
    :cond_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v0, :cond_1

    .line 3093
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKeys(Ljava/lang/Iterable;)V

    .line 3095
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheValues(Ljava/lang/Iterable;)V

    .line 3097
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 3099
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$47;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$47;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Collection;Ljava/util/Map;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public putAllConflict(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "drMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;>;"
    const/4 v0, 0x1

    .line 2457
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2473
    :goto_0
    return-void

    .line 2460
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dr()Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;->onReceiveCacheEntriesReceived(I)V

    .line 2462
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 2464
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$24;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    invoke-direct {v1, p0, v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$24;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;ZLjava/util/Map;)V

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->syncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public putAllConflictAsync(Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;",
            ">;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2478
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "drMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2479
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V

    .line 2485
    :goto_0
    return-object v0

    .line 2481
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dr()Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;->onReceiveCacheEntriesReceived(I)V

    .line 2483
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 2485
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$25;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$25;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Collection;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs putAsync(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 10
    .param p3, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ttl"    # J
    .param p6, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2401
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const-string v0, "key"

    const-string/jumbo v1, "val"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2403
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 2404
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 2406
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheValue(Ljava/lang/Object;)V

    .line 2408
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 2410
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$22;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$22;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->wrapClone(Lorg/apache/ignite/internal/IgniteInternalFuture;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public putAsync(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 11
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2386
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v10

    .line 2388
    .local v10, "statsEnabled":Z
    if-eqz v10, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 2390
    .local v8, "start":J
    :goto_0
    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->putAsync(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v7

    .line 2392
    .local v7, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TV;>;"
    if-eqz v10, :cond_0

    .line 2393
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdatePutAndGetTimeStatClosure;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v1

    invoke-direct {v0, v1, v8, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdatePutAndGetTimeStatClosure;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;J)V

    invoke-interface {v7, v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 2395
    :cond_0
    return-object v7

    .line 2388
    .end local v7    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TV;>;"
    .end local v8    # "start":J
    :cond_1
    const-wide/16 v8, 0x0

    goto :goto_0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 2768
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const-string v0, "key"

    const-string/jumbo v1, "val"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2770
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 2771
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 2773
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheValue(Ljava/lang/Object;)V

    .line 2775
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 2777
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$36;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$36;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;ZLjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->syncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cloneOnFlag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putIfAbsentAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2790
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v1

    .line 2792
    .local v1, "statsEnabled":Z
    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 2794
    .local v2, "start":J
    :goto_0
    const-string v4, "key"

    const-string/jumbo v5, "val"

    invoke-static {p1, v4, p2, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2796
    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v4, :cond_0

    .line 2797
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 2799
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheValue(Ljava/lang/Object;)V

    .line 2801
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 2803
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    new-instance v5, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$37;

    invoke-direct {v5, p0, p1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$37;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->wrapClone(Lorg/apache/ignite/internal/IgniteInternalFuture;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 2814
    .local v0, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TV;>;"
    if-eqz v1, :cond_1

    .line 2815
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdatePutTimeStatClosure;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v5

    invoke-direct {v4, v5, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdatePutTimeStatClosure;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;J)V

    invoke-interface {v0, v4}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 2817
    :cond_1
    return-object v0

    .line 2792
    .end local v0    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TV;>;"
    .end local v2    # "start":J
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public varargs putx(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 10
    .param p3, "cached"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ttl"    # J
    .param p6, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2363
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const-string v0, "key"

    const-string/jumbo v1, "val"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2365
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 2366
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 2368
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheValue(Ljava/lang/Object;)V

    .line 2370
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 2372
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$21;

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$21;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;ZLjava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->syncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public putx(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 10
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2425
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v8

    .line 2427
    .local v8, "statsEnabled":Z
    if-eqz v8, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 2429
    .local v6, "start":J
    :goto_0
    const-string v0, "key"

    const-string/jumbo v1, "val"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2431
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 2432
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 2434
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheValue(Ljava/lang/Object;)V

    .line 2436
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 2438
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$23;

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$23;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;ZLjava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->syncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    .line 2448
    .local v9, "stored":Ljava/lang/Boolean;
    if-eqz v8, :cond_1

    .line 2449
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->addPutTimeNanos(J)V

    .line 2451
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 2427
    .end local v6    # "start":J
    .end local v9    # "stored":Ljava/lang/Boolean;
    :cond_2
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method public varargs putxAsync(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 10
    .param p3, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ttl"    # J
    .param p6, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
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
    .line 2730
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const-string v0, "key"

    const-string/jumbo v1, "val"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2732
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 2733
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 2735
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheValue(Ljava/lang/Object;)V

    .line 2737
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 2739
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$35;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$35;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs putxAsync(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 11
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2714
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v10

    .line 2716
    .local v10, "statsEnabled":Z
    if-eqz v10, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 2718
    .local v8, "start":J
    :goto_0
    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->putxAsync(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v7

    .line 2720
    .local v7, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    if-eqz v10, :cond_0

    .line 2721
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdatePutTimeStatClosure;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v1

    invoke-direct {v0, v1, v8, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdatePutTimeStatClosure;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;J)V

    invoke-interface {v7, v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 2723
    :cond_0
    return-object v7

    .line 2716
    .end local v7    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    .end local v8    # "start":J
    :cond_1
    const-wide/16 v8, 0x0

    goto :goto_0
.end method

.method public putxIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2822
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v2

    .line 2824
    .local v2, "statsEnabled":Z
    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2826
    .local v0, "start":J
    :goto_0
    const-string v4, "key"

    const-string/jumbo v5, "val"

    invoke-static {p1, v4, p2, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2828
    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v4, :cond_0

    .line 2829
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 2831
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheValue(Ljava/lang/Object;)V

    .line 2833
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 2835
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$38;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$38;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;ZLjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->syncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 2845
    .local v3, "stored":Ljava/lang/Boolean;
    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2846
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->addPutTimeNanos(J)V

    .line 2848
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .line 2824
    .end local v0    # "start":J
    .end local v3    # "stored":Ljava/lang/Boolean;
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public putxIfAbsentAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2853
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v1

    .line 2855
    .local v1, "statsEnabled":Z
    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 2857
    .local v2, "start":J
    :goto_0
    const-string v4, "key"

    const-string/jumbo v5, "val"

    invoke-static {p1, v4, p2, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2859
    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v4, :cond_0

    .line 2860
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 2862
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheValue(Ljava/lang/Object;)V

    .line 2864
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 2866
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$39;

    invoke-direct {v4, p0, p1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$39;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 2877
    .local v0, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    if-eqz v1, :cond_1

    .line 2878
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdatePutTimeStatClosure;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v5

    invoke-direct {v4, v5, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdatePutTimeStatClosure;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;J)V

    invoke-interface {v0, v4}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 2880
    :cond_1
    return-object v0

    .line 2855
    .end local v0    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    .end local v2    # "start":J
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public queries()Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueries",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->qry:Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;

    return-object v0
.end method

.method public randomEntry()Ljavax/cache/Cache$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4098
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->randomEntry()Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v0

    .line 4100
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->obsolete()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->wrapLazyValue()Ljavax/cache/Cache$Entry;

    move-result-object v1

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 4773
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 4775
    .local v0, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->set1(Ljava/lang/Object;)V

    .line 4776
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->set2(Ljava/lang/Object;)V

    .line 4777
    return-void
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 4787
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    :try_start_0
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 4789
    .local v1, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/ignite/internal/IgnitionEx;->gridx(Ljava/lang/String;)Lorg/apache/ignite/internal/IgniteKernal;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/apache/ignite/internal/IgniteKernal;->cachex(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4795
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    return-object v2

    .line 4791
    .end local v1    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 4792
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    new-instance v2, Ljava/io/InvalidObjectException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->withCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/io/InvalidObjectException;

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4795
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v2

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    throw v2
.end method

.method public readThroughAllAsync(Ljava/util/Collection;ZZLorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/UUID;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiInClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p2, "reload"    # Z
    .param p3, "skipVals"    # Z
    .param p4, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "taskName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;ZZ",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1654
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .local p7, "vis":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->closures()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$11;

    invoke-direct {v1, p0, p4, p1, p7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$11;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocalSafe(Ljava/util/concurrent/Callable;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public reload(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 5067
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v6, 0x2

    new-array v6, v6, [Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    const/4 v7, 0x0

    sget-object v8, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->LOCAL:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    aput-object v8, v6, v7

    sget-object v7, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->READ:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    aput-object v7, v6, v9

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/F;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnFlags(Ljava/util/Collection;)V

    .line 5069
    const-string v5, "key"

    invoke-static {p1, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5071
    iget-boolean v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v5, :cond_0

    .line 5072
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 5074
    :cond_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v2

    .line 5078
    .local v2, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_1
    :goto_0
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    .line 5081
    .local v0, "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v5

    invoke-virtual {v5, v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->localNode(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5086
    :cond_2
    :goto_1
    return-object v4

    .line 5084
    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerReload()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v3

    .line 5086
    .local v3, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v3, :cond_2

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v3, v5, v6}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 5088
    .end local v0    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v3    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catch_0
    move-exception v1

    .line 5089
    .local v1, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5090
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted to reload a removed entry for key (will retry): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reloadAllAsync0(Ljava/util/Collection;ZZLjava/util/UUID;Ljava/lang/String;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 22
    .param p2, "ret"    # Z
    .param p3, "skipVals"    # Z
    .param p4, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "taskName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;ZZ",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1683
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v6

    .line 1685
    .local v6, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1686
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->uuid()Ljava/util/UUID;

    move-result-object v5

    .line 1688
    .local v5, "uid":Ljava/util/UUID;
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1690
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 1691
    .local v19, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    if-eqz v19, :cond_1

    .line 1695
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->localNode(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1700
    :cond_2
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryExSafe(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v16

    .line 1702
    .local v16, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-eqz v16, :cond_1

    .line 1706
    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v21

    .line 1709
    .local v21, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v5, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->addMeta(Ljava/util/UUID;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1713
    .end local v16    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v21    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :catch_0
    move-exception v18

    .line 1714
    .local v18, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1715
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got removed entry for reload (will retry): "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 1717
    .end local v18    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :catch_1
    move-exception v18

    .line 1718
    .local v18, "ignore":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1719
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got invalid partition for key (will skip): "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1726
    .end local v18    # "ignore":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    .end local v19    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_3
    if-eqz p2, :cond_4

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v7

    .line 1729
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    :goto_2
    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v8, v5}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->keyHasMeta(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v8

    aput-object v8, v2, v3

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v9

    .line 1731
    .local v9, "absentKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    new-instance v4, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-direct {v4}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>()V

    .line 1733
    .local v4, "loadedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    const/4 v10, 0x1

    const/4 v12, 0x0

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Collection;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/Map;)V

    move-object/from16 v8, p0

    move/from16 v11, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object v15, v2

    invoke-virtual/range {v8 .. v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->readThroughAllAsync(Ljava/util/Collection;ZZLorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/UUID;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiInClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v20

    .line 1804
    .local v20, "readFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    new-instance v10, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$13;

    move-object/from16 v11, p0

    move-object v12, v9

    move-object v13, v4

    move-object v14, v6

    move-object v15, v7

    invoke-direct/range {v10 .. v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$13;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Collection;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/Map;)V

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    .line 1825
    .end local v4    # "loadedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v5    # "uid":Ljava/util/UUID;
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .end local v9    # "absentKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v20    # "readFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    :goto_3
    return-object v2

    .line 1726
    .restart local v5    # "uid":Ljava/util/UUID;
    .restart local v17    # "i$":Ljava/util/Iterator;
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 1825
    .end local v5    # "uid":Ljava/util/UUID;
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_5
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public reloadAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v4, 0x1

    .line 5100
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->LOCAL:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    aput-object v3, v1, v2

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->READ:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    aput-object v2, v1, v4

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnFlags(Ljava/util/Collection;)V

    .line 5102
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->closures()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$76;

    invoke-direct {v2, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$76;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectSafe(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocalSafe(Ljava/util/concurrent/Callable;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs remove(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    .locals 11
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 3119
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v7

    .line 3121
    .local v7, "statsEnabled":Z
    if-eqz v7, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 3123
    .local v8, "start":J
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 3125
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3127
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 3128
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 3130
    :cond_0
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$48;

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$48;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;ZLjava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->syncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cloneOnFlag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 3145
    .local v6, "prevVal":Ljava/lang/Object;, "TV;"
    if-eqz v7, :cond_1

    .line 3146
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->addRemoveAndGetTimeNanos(J)V

    .line 3148
    :cond_1
    return-object v6

    .line 3121
    .end local v6    # "prevVal":Ljava/lang/Object;, "TV;"
    .end local v8    # "start":J
    :cond_2
    const-wide/16 v8, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    .locals 1
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 3113
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->remove(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 3519
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v1

    .line 3521
    .local v1, "statsEnabled":Z
    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 3523
    .local v2, "start":J
    :goto_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 3525
    const-string v4, "key"

    const-string/jumbo v5, "val"

    invoke-static {p1, v4, p2, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3527
    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v4, :cond_0

    .line 3528
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 3530
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheValue(Ljava/lang/Object;)V

    .line 3532
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$60;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5, p2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$60;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;ZLjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->syncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3547
    .local v0, "rmv":Z
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 3548
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->addRemoveTimeNanos(J)V

    .line 3550
    :cond_1
    return v0

    .line 3521
    .end local v0    # "rmv":Z
    .end local v2    # "start":J
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public varargs removeAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 6
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
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    const/4 v3, 0x1

    .line 3200
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v2

    .line 3202
    .local v2, "statsEnabled":Z
    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 3204
    .local v0, "start":J
    :goto_0
    const-string v4, "keys"

    invoke-static {p1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3206
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 3208
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3226
    :cond_0
    :goto_1
    return-void

    .line 3202
    .end local v0    # "start":J
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 3211
    .restart local v0    # "start":J
    :cond_2
    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v4, :cond_3

    .line 3212
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKeys(Ljava/lang/Iterable;)V

    .line 3214
    :cond_3
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$50;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    if-ne v5, v3, :cond_4

    :goto_2
    invoke-direct {v4, p0, v3, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$50;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;ZLjava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->syncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;)Ljava/lang/Object;

    .line 3224
    if-eqz v2, :cond_0

    .line 3225
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->addRemoveTimeNanos(J)V

    goto :goto_1

    .line 3214
    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public varargs removeAllAsync(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 3231
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v1

    .line 3233
    .local v1, "statsEnabled":Z
    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 3235
    .local v2, "start":J
    :goto_0
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3236
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V

    .line 3256
    :cond_0
    :goto_1
    return-object v0

    .line 3233
    .end local v2    # "start":J
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 3238
    .restart local v2    # "start":J
    :cond_2
    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v4, :cond_3

    .line 3239
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKeys(Ljava/lang/Iterable;)V

    .line 3241
    :cond_3
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 3243
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$51;

    invoke-direct {v4, p0, p1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$51;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Collection;Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 3253
    .local v0, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    .line 3254
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateRemoveTimeStatClosure;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v5

    invoke-direct {v4, v5, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateRemoveTimeStatClosure;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;J)V

    invoke-interface {v0, v4}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto :goto_1
.end method

.method public removeAllConflict(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 3373
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "drMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 3375
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3389
    :goto_0
    return-void

    .line 3378
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dr()Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;->onReceiveCacheEntriesReceived(I)V

    .line 3380
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$55;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$55;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;ZLjava/util/Map;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->syncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeAllConflictAsync(Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 3394
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "drMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 3396
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3397
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V

    .line 3401
    :goto_0
    return-object v0

    .line 3399
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dr()Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;->onReceiveCacheEntriesReceived(I)V

    .line 3401
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$56;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$56;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Collection;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public removeAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3555
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v1

    .line 3557
    .local v1, "statsEnabled":Z
    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 3559
    .local v2, "start":J
    :goto_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 3561
    const-string v4, "key"

    const-string/jumbo v5, "val"

    invoke-static {p1, v4, p2, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3563
    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v4, :cond_0

    .line 3564
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 3566
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheValue(Ljava/lang/Object;)V

    .line 3568
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$61;

    invoke-direct {v4, p0, p1, p2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$61;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 3590
    .local v0, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    if-eqz v1, :cond_1

    .line 3591
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateRemoveTimeStatClosure;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v5

    invoke-direct {v4, v5, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateRemoveTimeStatClosure;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;J)V

    invoke-interface {v0, v4}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 3593
    :cond_1
    return-object v0

    .line 3557
    .end local v0    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    .end local v2    # "start":J
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public varargs removeAsync(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3168
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v1

    .line 3170
    .local v1, "statsEnabled":Z
    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 3172
    .local v2, "start":J
    :goto_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 3174
    const-string v4, "key"

    invoke-static {p1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3176
    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v4, :cond_0

    .line 3177
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 3179
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    new-instance v5, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$49;

    invoke-direct {v5, p0, p1, p1, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$49;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    invoke-direct {p0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->wrapClone(Lorg/apache/ignite/internal/IgniteInternalFuture;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 3191
    .local v0, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TV;>;"
    if-eqz v1, :cond_1

    .line 3192
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateRemoveTimeStatClosure;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v5

    invoke-direct {v4, v5, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateRemoveTimeStatClosure;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;J)V

    invoke-interface {v0, v4}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 3194
    :cond_1
    return-object v0

    .line 3170
    .end local v0    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TV;>;"
    .end local v2    # "start":J
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public varargs removeAsync(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3153
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v1

    .line 3155
    .local v1, "statsEnabled":Z
    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 3157
    .local v2, "start":J
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removeAsync(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 3159
    .local v0, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TV;>;"
    if-eqz v1, :cond_0

    .line 3160
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateRemoveTimeStatClosure;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v5

    invoke-direct {v4, v5, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateRemoveTimeStatClosure;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;J)V

    invoke-interface {v0, v4}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 3162
    :cond_0
    return-object v0

    .line 3155
    .end local v0    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TV;>;"
    .end local v2    # "start":J
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V
    .locals 1
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .prologue
    .line 1559
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    .line 1560
    return-void
.end method

.method public removeIfObsolete(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V
    .locals 16
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .prologue
    .line 1302
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1304
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->removeEntryIfObsolete(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v15

    .line 1306
    .local v15, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-eqz v15, :cond_4

    .line 1307
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-interface {v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->obsolete()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed non-obsolete entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1309
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1310
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed entry from cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1312
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1314
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v1

    invoke-interface {v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->partition()I

    move-result v2

    invoke-interface {v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->locNodeId:Ljava/util/UUID;

    const/4 v5, 0x0

    check-cast v5, Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v6, 0x0

    const/16 v7, 0x3d

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v1 .. v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    :cond_3
    :goto_0
    return-void

    .line 1317
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1318
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove will not be done for key (obsolete entry got replaced or removed): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removex(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 3344
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 3346
    const-string v0, "key"

    const-string/jumbo v1, "val"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3348
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 3349
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 3351
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$54;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$54;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;ZLjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->syncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    return-object v0
.end method

.method public varargs removex(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 10
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 3277
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v7

    .line 3279
    .local v7, "statsEnabled":Z
    if-eqz v7, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 3281
    .local v8, "start":J
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 3283
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3285
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 3286
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 3288
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$52;

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$52;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;ZLjava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->syncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 3298
    .local v6, "rmv":Z
    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    .line 3299
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->addRemoveTimeNanos(J)V

    .line 3301
    :cond_1
    return v6

    .line 3279
    .end local v6    # "rmv":Z
    .end local v8    # "start":J
    :cond_2
    const-wide/16 v8, 0x0

    goto :goto_0
.end method

.method public varargs removex(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 8
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 3262
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v1

    .line 3264
    .local v1, "statsEnabled":Z
    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 3266
    .local v2, "start":J
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removex(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v0

    .line 3268
    .local v0, "rmv":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3269
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->addRemoveTimeNanos(J)V

    .line 3271
    :cond_0
    return v0

    .line 3264
    .end local v0    # "rmv":Z
    .end local v2    # "start":J
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public removexAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3445
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 3447
    const-string v0, "key"

    const-string/jumbo v1, "val"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3449
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 3450
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 3452
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$58;

    invoke-direct {v0, p0, p1, p2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$58;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs removexAsync(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 10
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
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
    .line 3314
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v7

    .line 3316
    .local v7, "statsEnabled":Z
    if-eqz v7, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 3318
    .local v8, "start":J
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 3320
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3322
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 3323
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 3325
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$53;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$53;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v6

    .line 3336
    .local v6, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    if-eqz v7, :cond_1

    .line 3337
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateRemoveTimeStatClosure;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v1

    invoke-direct {v0, v1, v8, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateRemoveTimeStatClosure;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;J)V

    invoke-interface {v6, v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 3339
    :cond_1
    return-object v6

    .line 3316
    .end local v6    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    .end local v8    # "start":J
    :cond_2
    const-wide/16 v8, 0x0

    goto :goto_0
.end method

.method public varargs removexAsync(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3306
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3308
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removexAsync(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 2885
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const-string v0, "key"

    const-string/jumbo v1, "val"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2887
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 2888
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 2890
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheValue(Ljava/lang/Object;)V

    .line 2892
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 2894
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$40;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$40;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;ZLjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->syncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cloneOnFlag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2984
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    const-string v1, "key"

    const-string v3, "oldVal"

    const-string v5, "newVal"

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2986
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 2987
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 2989
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheValue(Ljava/lang/Object;)V

    .line 2991
    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheValue(Ljava/lang/Object;)V

    .line 2993
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 2995
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$44;

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$44;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->syncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public replaceAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2907
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v1

    .line 2909
    .local v1, "statsEnabled":Z
    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 2911
    .local v2, "start":J
    :goto_0
    const-string v4, "key"

    const-string/jumbo v5, "val"

    invoke-static {p1, v4, p2, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2913
    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v4, :cond_0

    .line 2914
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 2916
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheValue(Ljava/lang/Object;)V

    .line 2918
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 2920
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    new-instance v5, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$41;

    invoke-direct {v5, p0, p1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$41;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->wrapClone(Lorg/apache/ignite/internal/IgniteInternalFuture;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 2931
    .local v0, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TV;>;"
    if-eqz v1, :cond_1

    .line 2932
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdatePutAndGetTimeStatClosure;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v5

    invoke-direct {v4, v5, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdatePutAndGetTimeStatClosure;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;J)V

    invoke-interface {v0, v4}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 2934
    :cond_1
    return-object v0

    .line 2909
    .end local v0    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TV;>;"
    .end local v2    # "start":J
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public replaceAsync(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3013
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v7

    .line 3015
    .local v7, "statsEnabled":Z
    if-eqz v7, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 3017
    .local v8, "start":J
    :goto_0
    const-string v1, "key"

    const-string v3, "oldVal"

    const-string v5, "newVal"

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3019
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 3020
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 3022
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheValue(Ljava/lang/Object;)V

    .line 3024
    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheValue(Ljava/lang/Object;)V

    .line 3026
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 3028
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$45;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$45;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v6

    .line 3049
    .local v6, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    if-eqz v7, :cond_1

    .line 3050
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdatePutAndGetTimeStatClosure;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v1

    invoke-direct {v0, v1, v8, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdatePutAndGetTimeStatClosure;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;J)V

    invoke-interface {v6, v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 3052
    :cond_1
    return-object v6

    .line 3015
    .end local v6    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    .end local v8    # "start":J
    :cond_2
    const-wide/16 v8, 0x0

    goto :goto_0
.end method

.method public replacex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 3416
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    const-string v1, "key"

    const-string v3, "oldVal"

    const-string v5, "newVal"

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3418
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 3419
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 3421
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 3423
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$57;

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$57;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->syncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    return-object v0
.end method

.method public replacex(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2939
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const-string v0, "key"

    const-string/jumbo v1, "val"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2941
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 2942
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 2944
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheValue(Ljava/lang/Object;)V

    .line 2946
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 2948
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$42;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$42;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;ZLjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->syncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public replacexAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2961
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const-string v0, "key"

    const-string/jumbo v1, "val"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2963
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 2964
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 2966
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheValue(Ljava/lang/Object;)V

    .line 2968
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 2970
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$43;

    invoke-direct {v0, p0, p1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$43;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public replacexAsync(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3483
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    const-string v1, "key"

    const-string v3, "oldVal"

    const-string v5, "newVal"

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3485
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 3486
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 3488
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 3490
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$59;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$59;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOp(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method protected saveFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 1
    .param p1, "holder"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 4705
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p2, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4706
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4707
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->holdsLock()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4709
    :cond_2
    invoke-virtual {p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->future(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 4711
    invoke-interface {p2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4712
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->future(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 4714
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOpRelease()V

    .line 4734
    :goto_0
    return-void

    .line 4717
    :cond_3
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$74;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$74;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;)V

    invoke-interface {p2, v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 4195
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->publicSize()I

    move-result v0

    return v0
.end method

.method public size([Lorg/apache/ignite/cache/CachePeekMode;)I
    .locals 1
    .param p1, "peekModes"    # [Lorg/apache/ignite/cache/CachePeekMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 4105
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4106
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->localSize([Lorg/apache/ignite/cache/CachePeekMode;)I

    move-result v0

    .line 4108
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->sizeAsync([Lorg/apache/ignite/cache/CachePeekMode;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public sizeAsync([Lorg/apache/ignite/cache/CachePeekMode;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 9
    .param p1, "peekModes"    # [Lorg/apache/ignite/cache/CachePeekMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/cache/CachePeekMode;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4113
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 4115
    :cond_0
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->parsePeekModes([Lorg/apache/ignite/cache/CachePeekMode;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;

    move-result-object v3

    .line 4117
    .local v3, "modes":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v0

    .line 4119
    .local v0, "cluster":Lorg/apache/ignite/internal/cluster/IgniteClusterEx;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v7, v7, v6}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->forCacheNodes(Ljava/lang/String;ZZZ)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v2

    .line 4121
    .local v2, "grp":Lorg/apache/ignite/cluster/ClusterGroup;
    :goto_0
    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterGroup;->nodes()Ljava/util/Collection;

    move-result-object v4

    .line 4123
    .local v4, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4124
    new-instance v5, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    .line 4129
    :goto_1
    return-object v5

    .line 4119
    .end local v2    # "grp":Lorg/apache/ignite/cluster/ClusterGroup;
    .end local v4    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->forDataNodes(Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v2

    goto :goto_0

    .line 4126
    .restart local v2    # "grp":Lorg/apache/ignite/cluster/ClusterGroup;
    .restart local v4    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->closures()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v5

    new-instance v6, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SizeCallable;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, p1, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SizeCallable;-><init>(Ljava/lang/String;[Lorg/apache/ignite/cache/CachePeekMode;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$1;)V

    invoke-virtual {v5, v6, v8, v4}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->broadcastNoFailover(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;Ljava/util/Collection;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    .line 4129
    .local v1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Collection<Ljava/lang/Integer;>;>;"
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$68;

    invoke-direct {v5, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$68;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)V

    invoke-interface {v1, v5}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v5

    goto :goto_1
.end method

.method public splitClearLocally()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1329
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->size()I

    move-result v2

    .line 1331
    .local v2, "keySize":I
    div-int/lit16 v6, v2, 0x2710

    rem-int/lit16 v5, v2, 0x2710

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    add-int/2addr v5, v6

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1334
    .local v0, "cnt":I
    if-nez v0, :cond_0

    .line 1335
    const/4 v0, 0x1

    .line 1337
    :cond_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    .line 1339
    .local v3, "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1341
    .local v4, "res":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable<TK;TV;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1342
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;

    invoke-direct {v5, p0, v3, v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;II)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1341
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1331
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    .end local v3    # "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v4    # "res":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable<TK;TV;>;>;"
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1344
    .restart local v0    # "cnt":I
    .restart local v1    # "i":I
    .restart local v3    # "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v4    # "res":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable<TK;TV;>;>;"
    :cond_2
    return-object v4
.end method

.method public start()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 562
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    return-void
.end method

.method protected final startInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 570
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache started: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 580
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->lastFut:Ljava/lang/ThreadLocal;

    .line 581
    return-void
.end method

.method protected final stopInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 589
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache stopped: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public swapIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 4379
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->SKIP_SWAP:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnFlags(Ljava/util/Collection;)V

    .line 4381
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->lazySwapIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public swapKeys()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 4406
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapKeys()J

    move-result-wide v0

    return-wide v0
.end method

.method public swapSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 4401
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public toMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3800
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheProjection;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 4220
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const-string v2, "name"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "size"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryPutIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 2763
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public tx()Lorg/apache/ignite/transactions/Transaction;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 3640
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->threadLocalTx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;

    .line 3642
    .local v0, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->shared()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Z)V

    goto :goto_0
.end method

.method public abstract txLockAsync(Ljava/util/Collection;JLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;ZZLorg/apache/ignite/transactions/TransactionIsolation;ZJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
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
.end method

.method public txStart()Lorg/apache/ignite/transactions/Transaction;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 3758
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getTransactionConfiguration()Lorg/apache/ignite/configuration/TransactionConfiguration;

    move-result-object v0

    .line 3760
    .local v0, "cfg":Lorg/apache/ignite/configuration/TransactionConfiguration;
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/TransactionConfiguration;->getDefaultTxConcurrency()Lorg/apache/ignite/transactions/TransactionConcurrency;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/TransactionConfiguration;->getDefaultTxIsolation()Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->txStart(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/transactions/Transaction;

    move-result-object v1

    return-object v1
.end method

.method public txStart(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/transactions/Transaction;
    .locals 7
    .param p1, "concurrency"    # Lorg/apache/ignite/transactions/TransactionConcurrency;
    .param p2, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;

    .prologue
    .line 3765
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const-string v1, "concurrency"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3766
    const-string v1, "isolation"

    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3768
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getTransactionConfiguration()Lorg/apache/ignite/configuration/TransactionConfiguration;

    move-result-object v0

    .line 3770
    .local v0, "cfg":Lorg/apache/ignite/configuration/TransactionConfiguration;
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/TransactionConfiguration;->getDefaultTxTimeout()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->txStart(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JI)Lorg/apache/ignite/transactions/Transaction;

    move-result-object v1

    return-object v1
.end method

.method public txStart(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JI)Lorg/apache/ignite/transactions/Transaction;
    .locals 7
    .param p1, "concurrency"    # Lorg/apache/ignite/transactions/TransactionConcurrency;
    .param p2, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
    .param p3, "timeout"    # J
    .param p5, "txSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 3788
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->transactions()Lorg/apache/ignite/internal/IgniteTransactionsEx;

    move-result-object v0

    .line 3790
    .local v0, "txs":Lorg/apache/ignite/internal/IgniteTransactionsEx;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/ignite/internal/IgniteTransactionsEx;->txStartEx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JI)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->proxy()Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxy;

    move-result-object v1

    return-object v1
.end method

.method public txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .locals 2
    .param p1, "concurrency"    # Lorg/apache/ignite/transactions/TransactionConcurrency;
    .param p2, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;

    .prologue
    .line 3780
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->transactions()Lorg/apache/ignite/internal/IgniteTransactionsEx;

    move-result-object v0

    .line 3782
    .local v0, "txs":Lorg/apache/ignite/internal/IgniteTransactionsEx;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {v0, v1, p1, p2}, Lorg/apache/ignite/internal/IgniteTransactionsEx;->txStartEx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v1

    return-object v1
.end method

.method public txSynchronizations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/transactions/TransactionSynchronization;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3824
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->synchronizations()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public txSynchronize(Lorg/apache/ignite/transactions/TransactionSynchronization;)V
    .locals 3
    .param p1, "syncs"    # Lorg/apache/ignite/transactions/TransactionSynchronization;

    .prologue
    .line 3814
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/transactions/TransactionSynchronization;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->addSynchronizations([Lorg/apache/ignite/transactions/TransactionSynchronization;)V

    .line 3815
    return-void
.end method

.method public txUnsynchronize(Lorg/apache/ignite/transactions/TransactionSynchronization;)V
    .locals 3
    .param p1, "syncs"    # Lorg/apache/ignite/transactions/TransactionSynchronization;

    .prologue
    .line 3819
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/transactions/TransactionSynchronization;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->removeSynchronizations([Lorg/apache/ignite/transactions/TransactionSynchronization;)V

    .line 3820
    return-void
.end method

.method public varargs unlock(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 1
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[",
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
    .line 3697
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3699
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 3700
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->validateCacheKey(Ljava/lang/Object;)V

    .line 3702
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->unlockAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 3703
    return-void
.end method

.method protected validateCacheKey(Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 5173
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 5174
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->validateCacheKey(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 5176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    .line 5178
    :cond_0
    return-void
.end method

.method protected validateCacheKeys(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 5188
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-nez p1, :cond_1

    .line 5201
    :cond_0
    return-void

    .line 5191
    :cond_1
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    if-eqz v2, :cond_0

    .line 5192
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5193
    .local v1, "key":Ljava/lang/Object;
    if-eqz v1, :cond_2

    instance-of v2, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;

    if-nez v2, :cond_2

    .line 5196
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->validateCacheKey(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 5198
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keyCheck:Z

    goto :goto_0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1270
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v0, 0x0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->values([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public varargs values([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Collection;
    .locals 1
    .param p1, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1289
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->values([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public withExpiryPolicy(Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    .locals 8
    .param p1, "plc"    # Ljavax/cache/expiry/ExpiryPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/expiry/ExpiryPolicy;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    const/4 v3, 0x0

    .line 457
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Ljava/util/Set;Ljava/util/UUID;ZLjavax/cache/expiry/ExpiryPolicy;)V

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4766
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 4767
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namex()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 4768
    return-void
.end method
