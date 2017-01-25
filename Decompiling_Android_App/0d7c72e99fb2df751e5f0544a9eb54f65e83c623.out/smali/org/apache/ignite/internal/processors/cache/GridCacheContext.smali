.class public Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
.super Ljava/lang/Object;
.source "GridCacheContext.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Externalizable;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_VERSION:[Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field private static final FLAG_LOCAL:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

.field private static final FLAG_LOCAL_READ:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

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
.field private affMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

.field private affNode:Z

.field private cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

.field private cacheId:I

.field private cacheName:Ljava/lang/String;

.field private cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

.field private conflictRslvr:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionAbstractConflictResolver;

.field private contQryMgr:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

.field private ctx:Lorg/apache/ignite/internal/GridKernalContext;

.field private dataStructuresMgr:Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

.field private drMgr:Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;

.field private dynamicDeploymentId:Lorg/apache/ignite/lang/IgniteUuid;

.field private evictMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

.field private evtMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

.field private expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

.field private forcedFlags:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Lorg/apache/ignite/internal/processors/cache/CacheFlag;",
            ">;"
        }
    .end annotation
.end field

.field private gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheGateway",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private itHolder:Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private jtaMgr:Lorg/apache/ignite/internal/processors/cache/jta/CacheJtaManagerAdapter;

.field private locNode:Lorg/apache/ignite/cluster/ClusterNode;

.field private log:Lorg/apache/ignite/IgniteLogger;

.field private mgrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheManager",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private plc:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

.field private prjPerCall:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private qryMgr:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private sharedCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private startLatch:Ljava/util/concurrent/CountDownLatch;

.field private startTopVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

.field private storeMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

.field private swapMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

.field private sys:Z

.field private ttlMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;

.field private unsafeMemory:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    .line 81
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->stash:Ljava/lang/ThreadLocal;

    .line 88
    new-array v0, v2, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->EMPTY_VERSION:[Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 160
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->LOCAL:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    aput-object v3, v0, v2

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->READ:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    aput-object v3, v0, v1

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->FLAG_LOCAL_READ:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    .line 163
    new-array v0, v1, [Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->LOCAL:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->FLAG_LOCAL:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    return-void

    :cond_0
    move v0, v2

    .line 75
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 204
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mgrs:Ljava/util/List;

    .line 154
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->prjPerCall:Ljava/lang/ThreadLocal;

    .line 157
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forcedFlags:Ljava/lang/ThreadLocal;

    .line 193
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->startLatch:Ljava/util/concurrent/CountDownLatch;

    .line 206
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/configuration/CacheConfiguration;ZLorg/apache/ignite/internal/processors/cache/GridCacheEventManager;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;Lorg/apache/ignite/internal/processors/cache/jta/CacheJtaManagerAdapter;)V
    .locals 6
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p2, "sharedCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .param p3, "cacheCfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;
    .param p4, "affNode"    # Z
    .param p5, "evtMgr"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;
    .param p6, "swapMgr"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;
    .param p7, "storeMgr"    # Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;
    .param p8, "evictMgr"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;
    .param p10, "contQryMgr"    # Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;
    .param p11, "affMgr"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;
    .param p12, "dataStructuresMgr"    # Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;
    .param p13, "ttlMgr"    # Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;
    .param p14, "drMgr"    # Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;
    .param p15, "jtaMgr"    # Lorg/apache/ignite/internal/processors/cache/jta/CacheJtaManagerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;",
            "Lorg/apache/ignite/configuration/CacheConfiguration;",
            "Z",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;",
            "Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;",
            "Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;",
            "Lorg/apache/ignite/internal/processors/cache/jta/CacheJtaManagerAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p9, "qryMgr":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mgrs:Ljava/util/List;

    .line 154
    new-instance v3, Ljava/lang/ThreadLocal;

    invoke-direct {v3}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->prjPerCall:Ljava/lang/ThreadLocal;

    .line 157
    new-instance v3, Ljava/lang/ThreadLocal;

    invoke-direct {v3}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forcedFlags:Ljava/lang/ThreadLocal;

    .line 193
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->startLatch:Ljava/util/concurrent/CountDownLatch;

    .line 247
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 248
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p2, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 249
    :cond_1
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    if-nez p3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 251
    :cond_2
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    if-nez p5, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 252
    :cond_3
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v3, :cond_4

    if-nez p6, :cond_4

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 253
    :cond_4
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v3, :cond_5

    if-nez p7, :cond_5

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 254
    :cond_5
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v3, :cond_6

    if-nez p8, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 255
    :cond_6
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v3, :cond_7

    if-nez p9, :cond_7

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 256
    :cond_7
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v3, :cond_8

    if-nez p10, :cond_8

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 257
    :cond_8
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v3, :cond_9

    if-nez p11, :cond_9

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 258
    :cond_9
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v3, :cond_a

    if-nez p12, :cond_a

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 259
    :cond_a
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v3, :cond_b

    if-nez p13, :cond_b

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 261
    :cond_b
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 262
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->sharedCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    .line 263
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    .line 264
    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affNode:Z

    .line 270
    invoke-direct {p0, p5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->add(Lorg/apache/ignite/internal/processors/cache/GridCacheManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheManager;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evtMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    .line 271
    invoke-direct {p0, p6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->add(Lorg/apache/ignite/internal/processors/cache/GridCacheManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheManager;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swapMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    .line 272
    invoke-direct {p0, p7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->add(Lorg/apache/ignite/internal/processors/cache/GridCacheManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheManager;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->storeMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    .line 273
    invoke-direct {p0, p8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->add(Lorg/apache/ignite/internal/processors/cache/GridCacheManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheManager;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evictMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    .line 274
    invoke-direct {p0, p9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->add(Lorg/apache/ignite/internal/processors/cache/GridCacheManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheManager;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->qryMgr:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    .line 275
    move-object/from16 v0, p10

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->add(Lorg/apache/ignite/internal/processors/cache/GridCacheManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheManager;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->contQryMgr:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    .line 276
    move-object/from16 v0, p11

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->add(Lorg/apache/ignite/internal/processors/cache/GridCacheManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheManager;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    .line 277
    move-object/from16 v0, p12

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->add(Lorg/apache/ignite/internal/processors/cache/GridCacheManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheManager;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dataStructuresMgr:Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    .line 278
    move-object/from16 v0, p13

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->add(Lorg/apache/ignite/internal/processors/cache/GridCacheManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheManager;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ttlMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;

    .line 279
    move-object/from16 v0, p14

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->add(Lorg/apache/ignite/internal/processors/cache/GridCacheManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheManager;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->drMgr:Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;

    .line 280
    move-object/from16 v0, p15

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->add(Lorg/apache/ignite/internal/processors/cache/GridCacheManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheManager;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/jta/CacheJtaManagerAdapter;

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->jtaMgr:Lorg/apache/ignite/internal/processors/cache/jta/CacheJtaManagerAdapter;

    .line 282
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/apache/ignite/internal/GridKernalContext;->log(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->log:Lorg/apache/ignite/IgniteLogger;

    .line 285
    invoke-virtual {p3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getMemoryMode()Lorg/apache/ignite/cache/CacheMemoryMode;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/cache/CacheMemoryMode;->OFFHEAP_VALUES:Lorg/apache/ignite/cache/CacheMemoryMode;

    if-eq v3, v4, :cond_c

    invoke-virtual {p3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getMemoryMode()Lorg/apache/ignite/cache/CacheMemoryMode;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/cache/CacheMemoryMode;->OFFHEAP_TIERED:Lorg/apache/ignite/cache/CacheMemoryMode;

    if-ne v3, v4, :cond_e

    :cond_c
    new-instance v3, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    invoke-virtual {p3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getOffHeapMaxMemory()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;-><init>(J)V

    :goto_0
    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unsafeMemory:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .line 288
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    .line 290
    invoke-virtual {p3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheName:Ljava/lang/String;

    .line 292
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheName:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->cacheId(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId:I

    .line 294
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->systemCache(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->sys:Z

    .line 296
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheName:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->isMarshallerCache(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    sget-object v3, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->MARSH_CACHE_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    :goto_1
    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->plc:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    .line 298
    invoke-virtual {p3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getExpiryPolicyFactory()Ljavax/cache/configuration/Factory;

    move-result-object v2

    .line 300
    .local v2, "factory":Ljavax/cache/configuration/Factory;, "Ljavax/cache/configuration/Factory<Ljavax/cache/expiry/ExpiryPolicy;>;"
    if-eqz v2, :cond_11

    invoke-interface {v2}, Ljavax/cache/configuration/Factory;->create()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/cache/expiry/ExpiryPolicy;

    :goto_2
    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    .line 302
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    instance-of v3, v3, Ljavax/cache/expiry/EternalExpiryPolicy;

    if-eqz v3, :cond_d

    .line 303
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    .line 305
    :cond_d
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {v3, v4}, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;-><init>(Lorg/apache/ignite/IgniteLogger;)V

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->itHolder:Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;

    .line 306
    return-void

    .line 285
    .end local v2    # "factory":Ljavax/cache/configuration/Factory;, "Ljavax/cache/configuration/Factory<Ljavax/cache/expiry/ExpiryPolicy;>;"
    :cond_e
    const/4 v3, 0x0

    goto :goto_0

    .line 296
    :cond_f
    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->sys:Z

    if-eqz v3, :cond_10

    sget-object v3, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->UTILITY_CACHE_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    goto :goto_1

    :cond_10
    sget-object v3, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    goto :goto_1

    .line 300
    .restart local v2    # "factory":Ljavax/cache/configuration/Factory;, "Ljavax/cache/configuration/Factory<Ljavax/cache/expiry/ExpiryPolicy;>;"
    :cond_11
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private add(Lorg/apache/ignite/internal/processors/cache/GridCacheManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheManager;
    .locals 1
    .param p1    # Lorg/apache/ignite/internal/processors/cache/GridCacheManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheManager",
            "<TK;TV;>;>(TT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 409
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p1, "mgr":Lorg/apache/ignite/internal/processors/cache/GridCacheManager;, "TT;"
    if-eqz p1, :cond_0

    .line 410
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mgrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_0
    return-object p1
.end method

.method private map(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Ljava/lang/Iterable;Ljava/util/Map;)Z
    .locals 5
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 1646
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p2, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    const/4 v3, 0x0

    .line 1648
    .local v3, "ret":Z
    if-eqz p2, :cond_1

    .line 1649
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cluster/ClusterNode;

    .line 1650
    .local v2, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1652
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    if-nez v0, :cond_0

    .line 1653
    new-instance v0, Ljava/util/LinkedList;

    .end local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .restart local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    invoke-interface {p3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1657
    const/4 v3, 0x1

    .line 1658
    goto :goto_0

    .line 1661
    .end local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_1
    return v3
.end method

.method private nearContext()Z
    .locals 1

    .prologue
    .line 1367
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDht()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDhtAtomic()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addResult(Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZZZ)V
    .locals 5
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p3, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .param p4, "skipVals"    # Z
    .param p5, "keepCacheObjects"    # Z
    .param p6, "deserializePortable"    # Z
    .param p7, "cpy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK1;TV1;>;",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            "ZZZZ)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK1;TV1;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1900
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1901
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1903
    :cond_1
    if-nez p5, :cond_6

    .line 1904
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    invoke-interface {p2, v2, v3}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v0

    .line 1905
    .local v0, "key0":Ljava/lang/Object;
    if-eqz p4, :cond_3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1907
    .local v1, "val0":Ljava/lang/Object;
    :goto_0
    if-eqz p6, :cond_2

    .line 1908
    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapPortableIfNeeded(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    .line 1910
    if-nez p4, :cond_2

    .line 1911
    invoke-virtual {p0, v1, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapPortableIfNeeded(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    .line 1914
    :cond_2
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    if-nez v0, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1905
    .end local v1    # "val0":Ljava/lang/Object;
    :cond_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    invoke-interface {p3, v2, p7}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 1915
    .restart local v1    # "val0":Ljava/lang/Object;
    :cond_4
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v2, :cond_5

    if-nez v1, :cond_5

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, p3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1917
    :cond_5
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1921
    .end local v0    # "key0":Ljava/lang/Object;
    .end local v1    # "val0":Ljava/lang/Object;
    .end local p3    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :goto_1
    return-void

    .line 1920
    .restart local p3    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_6
    if-eqz p4, :cond_7

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .end local p3    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_7
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;
    .locals 1

    .prologue
    .line 921
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    return-object v0
.end method

.method public affinityNode()Z
    .locals 1

    .prologue
    .line 339
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affNode:Z

    return v0
.end method

.method public atomic()Z
    .locals 2

    .prologue
    .line 697
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicityMode()Lorg/apache/ignite/cache/CacheAtomicityMode;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/cache/CacheAtomicityMode;->ATOMIC:Lorg/apache/ignite/cache/CacheAtomicityMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public awaitStarted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 346
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->startLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->await(Ljava/util/concurrent/CountDownLatch;)V

    .line 348
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    move-result-object v0

    .line 350
    .local v0, "prldr":Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;, "Lorg/apache/ignite/internal/processors/cache/GridCachePreloader<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 351
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;->startFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 352
    :cond_0
    return-void
.end method

.method public cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 870
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    return-object v0
.end method

.method public cache(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 454
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p1, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    .line 455
    return-void
.end method

.method public cacheId()I
    .locals 1

    .prologue
    .line 433
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId:I

    return v0
.end method

.method public cacheKeysView(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1967
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$5;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$5;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {p1, v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .locals 1

    .prologue
    .line 1816
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    return-object v0
.end method

.method public cacheObjectContext(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V
    .locals 0
    .param p1, "cacheObjCtx"    # Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    .prologue
    .line 1075
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    .line 1076
    return-void
.end method

.method public cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;
    .locals 1

    .prologue
    .line 1757
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v0

    return-object v0
.end method

.method public cancelRemove(Lorg/apache/ignite/lang/IgniteBiTuple;)Z
    .locals 3
    .param p1    # Lorg/apache/ignite/lang/IgniteBiTuple;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Boolean;",
            "*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p1, "interceptorRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;*>;"
    const/4 v0, 0x0

    .line 1736
    if-eqz p1, :cond_1

    .line 1737
    invoke-virtual {p1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1738
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "CacheInterceptor must not return null as cancellation flag value from \'onBeforeRemove\' method."

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1749
    :goto_0
    return v0

    .line 1744
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 1747
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "CacheInterceptor must not return null from \'onBeforeRemove\' method."

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public checkSecurity(Lorg/apache/ignite/plugin/security/GridSecurityPermission;)V
    .locals 3
    .param p1, "op"    # Lorg/apache/ignite/plugin/security/GridSecurityPermission;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/plugin/security/GridSecurityException;
        }
    .end annotation

    .prologue
    .line 666
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->isSystemCache(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    :goto_0
    return-void

    .line 669
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->security()Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;->authorize(Ljava/lang/String;Lorg/apache/ignite/plugin/security/GridSecurityPermission;Lorg/apache/ignite/internal/processors/security/SecurityContext;)V

    goto :goto_0
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    const/4 v0, 0x0

    .line 1927
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    .line 1928
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    .line 1929
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evictMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    .line 1930
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->qryMgr:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    .line 1931
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dataStructuresMgr:Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    .line 1932
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    .line 1934
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mgrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1935
    return-void
.end method

.method public cloneOnFlag(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
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
    .line 1416
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->CLONE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cloneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object p1
.end method

.method public cloneValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
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
    .line 1243
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->cloneObject(Ljava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public closures()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;
    .locals 1

    .prologue
    .line 856
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v0

    return-object v0
.end method

.method public colocated()Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 574
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;

    return-object v0
.end method

.method public config()Lorg/apache/ignite/configuration/CacheConfiguration;
    .locals 1

    .prologue
    .line 877
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    return-object v0
.end method

.method public conflictNeedResolve()Z
    .locals 1

    .prologue
    .line 1687
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->conflictRslvr:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionAbstractConflictResolver;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public conflictResolve(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;Z)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;
    .locals 5
    .param p3, "atomicVerComp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx",
            "<TK;TV;>;Z)",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1701
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p1, "oldEntry":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx<TK;TV;>;"
    .local p2, "newEntry":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx<TK;TV;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->conflictRslvr:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionAbstractConflictResolver;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Should not reach this place."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1703
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->conflictRslvr:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionAbstractConflictResolver;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionAbstractConflictResolver;->resolve(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;Z)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;

    move-result-object v0

    .line 1705
    .local v0, "ctx":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<TK;TV;>;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->isManualResolve()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1706
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->drMgr:Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->isUseNew()Z

    move-result v2

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->isUseOld()Z

    move-result v3

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->isMerge()Z

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;->onReceiveCacheConflictResolved(ZZZ)V

    .line 1708
    :cond_1
    return-object v0
.end method

.method public continuousQueries()Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;
    .locals 1

    .prologue
    .line 935
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->contQryMgr:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    return-object v0
.end method

.method public dataCenterId()B
    .locals 1

    .prologue
    .line 1715
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dr()Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;->dataCenterId()B

    move-result v0

    return v0
.end method

.method public dataStructures()Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;
    .locals 1

    .prologue
    .line 984
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dataStructuresMgr:Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    return-object v0
.end method

.method public decrementPublicSize(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;)V
    .locals 5
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    .prologue
    .line 542
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deferredDelete()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 543
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 544
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isInternal()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 546
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map()Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->decrementSize(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;)V

    .line 548
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDht()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isColocated()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDhtAtomic()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 549
    :cond_3
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->partition()I

    move-result v2

    sget-object v3, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->localPartition(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    move-result-object v0

    .line 551
    .local v0, "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    if-eqz v0, :cond_4

    .line 552
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->decrementPublicSize()V

    .line 554
    .end local v0    # "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    :cond_4
    return-void
.end method

.method public defaultAffMapper()Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;
    .locals 1

    .prologue
    .line 1066
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->defaultAffMapper()Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    move-result-object v0

    return-object v0
.end method

.method public deferredDelete()Z
    .locals 1

    .prologue
    .line 517
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDht()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDhtAtomic()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isColocated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->atomic()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public denyOnFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)V
    .locals 3
    .param p1, "flag"    # Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    .prologue
    .line 1374
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1376
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1377
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheFlagException;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/CacheFlagException;-><init>([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)V

    throw v0

    .line 1378
    :cond_1
    return-void
.end method

.method public denyOnFlags(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheFlag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1401
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p1, "flags":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/CacheFlag;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1403
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasAnyFlags(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1404
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheFlagException;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/processors/cache/CacheFlagException;-><init>(Ljava/util/Collection;)V

    throw v0

    .line 1405
    :cond_1
    return-void
.end method

.method public denyOnFlags([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)V
    .locals 1
    .param p1, "flags"    # [Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    .prologue
    .line 1391
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1393
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasAnyFlags([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1394
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheFlagException;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/processors/cache/CacheFlagException;-><init>([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)V

    throw v0

    .line 1395
    :cond_1
    return-void
.end method

.method public denyOnLocalRead()V
    .locals 1

    .prologue
    .line 1384
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->FLAG_LOCAL_READ:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnFlags([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)V

    .line 1385
    return-void
.end method

.method public deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 963
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->sharedCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v0

    return-object v0
.end method

.method public deploymentEnabled()Z
    .locals 1

    .prologue
    .line 1522
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->enabled()Z

    move-result v0

    return v0
.end method

.method public dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 560
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    return-object v0
.end method

.method public dhtMap(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/IgniteLogger;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 9
    .param p1, "nearNodeId"    # Ljava/util/UUID;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p3, "entry"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .param p4, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p6    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            "Lorg/apache/ignite/IgniteLogger;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            ">;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 1606
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p5, "dhtMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .local p6, "nearMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    sget-object v5, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v5, p2}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1608
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v5

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->partition()I

    move-result v6

    invoke-interface {v5, v6, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->nodes(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v0

    .line 1610
    .local v0, "dhtNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {p4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1611
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mapping entry to DHT nodes [nodes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nodeIds(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", entry="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1613
    :cond_1
    const/4 v5, 0x1

    new-array v5, v5, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/F;->remoteNodes(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v5}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v1

    .line 1615
    .local v1, "dhtRemoteNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-direct {p0, p3, v1, p5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->map(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Ljava/lang/Iterable;Ljava/util/Map;)Z

    move-result v4

    .line 1617
    .local v4, "ret":Z
    if-eqz p6, :cond_3

    .line 1618
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->readers()Ljava/util/Collection;

    move-result-object v3

    .line 1620
    .local v3, "readers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    const/4 v2, 0x0

    .line 1622
    .local v2, "nearNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1623
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v7, 0x0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/F0;->notEqualTo(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v3, v6}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->nodes(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v2

    .line 1625
    invoke-interface {p4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1626
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mapping entry to near nodes [nodes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nodeIds(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", entry="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1631
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1632
    const/4 v5, 0x1

    new-array v5, v5, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v6, 0x0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->notIn(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v5

    invoke-direct {p0, p3, v5, p6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->map(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Ljava/lang/Iterable;Ljava/util/Map;)Z

    move-result v5

    or-int/2addr v4, v5

    .line 1635
    .end local v2    # "nearNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v3    # "readers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :cond_3
    return v4

    .line 1628
    .restart local v2    # "nearNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .restart local v3    # "readers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :cond_4
    invoke-interface {p4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1629
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Entry has no near readers: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dhtTx()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 567
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    return-object v0
.end method

.method public discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
    .locals 1

    .prologue
    .line 863
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    return-object v0
.end method

.method public dr()Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;
    .locals 1

    .prologue
    .line 991
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->drMgr:Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;

    return-object v0
.end method

.method public dynamicDeploymentId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 319
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dynamicDeploymentId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method dynamicDeploymentId(Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 0
    .param p1, "dynamicDeploymentId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 312
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dynamicDeploymentId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 313
    return-void
.end method

.method public emptyVersion()[Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 1059
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->EMPTY_VERSION:[Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public equalsValArray(Ljava/lang/Object;)[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;"
        }
    .end annotation

    .prologue
    .line 1044
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p1, "val":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateContainsValue;

    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateContainsValue;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public equalsValue(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;"
        }
    .end annotation

    .prologue
    .line 1052
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p1, "val":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateContainsValue;

    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateContainsValue;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    return-object v0
.end method

.method public events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;
    .locals 1

    .prologue
    .line 914
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evtMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    return-object v0
.end method

.method public evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;
    .locals 1

    .prologue
    .line 977
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evictMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    return-object v0
.end method

.method public expiry()Ljavax/cache/expiry/ExpiryPolicy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 391
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    return-object v0
.end method

.method public expiryForTxEntry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)Ljavax/cache/expiry/ExpiryPolicy;
    .locals 1
    .param p1, "txEntry"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 399
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v0

    .line 401
    .local v0, "plc":Ljavax/cache/expiry/ExpiryPolicy;
    if-eqz v0, :cond_0

    .end local v0    # "plc":Ljavax/cache/expiry/ExpiryPolicy;
    :goto_0
    return-object v0

    .restart local v0    # "plc":Ljavax/cache/expiry/ExpiryPolicy;
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    goto :goto_0
.end method

.method public forceFlags([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)[Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    .locals 3
    .param p1, "flags"    # [Lorg/apache/ignite/internal/processors/cache/CacheFlag;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1218
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forcedFlags:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    .line 1220
    .local v0, "oldFlags":[Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forcedFlags:Ljava/lang/ThreadLocal;

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    .end local p1    # "flags":[Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1222
    return-object v0
.end method

.method public forceLocal()[Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1198
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->FLAG_LOCAL:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forceFlags([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    move-result-object v0

    return-object v0
.end method

.method public forceLocalRead()[Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1207
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->FLAG_LOCAL_READ:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forceFlags([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    move-result-object v0

    return-object v0
.end method

.method public forcedFlags()[Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    .locals 1

    .prologue
    .line 1231
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forcedFlags:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    return-object v0
.end method

.method public fromOffheap(JZ)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 3
    .param p1, "valPtr"    # J
    .param p3, "tmp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1877
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getMemoryMode()Lorg/apache/ignite/cache/CacheMemoryMode;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/cache/CacheMemoryMode;->OFFHEAP_TIERED:Lorg/apache/ignite/cache/CacheMemoryMode;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getMemoryMode()Lorg/apache/ignite/cache/CacheMemoryMode;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/cache/CacheMemoryMode;->OFFHEAP_VALUES:Lorg/apache/ignite/cache/CacheMemoryMode;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1878
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1880
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->toCacheObject(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;JZ)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v0

    return-object v0
.end method

.method public gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheGateway",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 595
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    return-object v0
.end method

.method public grid()Lorg/apache/ignite/internal/IgniteEx;
    .locals 1

    .prologue
    .line 616
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v0

    return-object v0
.end method

.method public gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;
    .locals 1

    .prologue
    .line 807
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public gridDeploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;
    .locals 1

    .prologue
    .line 835
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v0

    return-object v0
.end method

.method public gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    .locals 1

    .prologue
    .line 849
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    return-object v0
.end method

.method public gridIO()Lorg/apache/ignite/internal/managers/communication/GridIoManager;
    .locals 1

    .prologue
    .line 814
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    return-object v0
.end method

.method public gridName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 623
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gridSwap()Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;
    .locals 1

    .prologue
    .line 842
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->swap()Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    move-result-object v0

    return-object v0
.end method

.method public hasAnyFlags(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheFlag;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p1, "flags":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/CacheFlag;>;"
    const/4 v4, 0x0

    .line 1346
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1348
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nearContext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1349
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasAnyFlags(Ljava/util/Collection;)Z

    move-result v3

    .line 1360
    :goto_0
    return v3

    .line 1351
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->prjPerCall:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    .line 1353
    .local v2, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    if-nez v2, :cond_2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forcedFlags:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    .line 1354
    goto :goto_0

    .line 1356
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    .line 1357
    .local v0, "f":Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1358
    const/4 v3, 0x1

    goto :goto_0

    .end local v0    # "f":Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    :cond_4
    move v3, v4

    .line 1360
    goto :goto_0
.end method

.method public hasAnyFlags([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Z
    .locals 7
    .param p1, "flags"    # [Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    const/4 v6, 0x0

    .line 1322
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1324
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nearContext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1325
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasAnyFlags([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Z

    move-result v5

    .line 1336
    :goto_0
    return v5

    .line 1327
    :cond_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->prjPerCall:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    .line 1329
    .local v4, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    if-nez v4, :cond_2

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forcedFlags:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    .line 1330
    goto :goto_0

    .line 1332
    :cond_2
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 1333
    .local v1, "f":Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1334
    const/4 v5, 0x1

    goto :goto_0

    .line 1332
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "f":Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    :cond_4
    move v5, v6

    .line 1336
    goto :goto_0
.end method

.method public hasFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Z
    .locals 4
    .param p1, "flag"    # Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    const/4 v2, 0x0

    .line 1303
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1305
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nearContext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1306
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Z

    move-result v2

    .line 1312
    :cond_1
    :goto_0
    return v2

    .line 1308
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->prjPerCall:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    .line 1310
    .local v1, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forcedFlags:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    .line 1312
    .local v0, "forced":[Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->flags()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    if-eqz v0, :cond_1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->containsObjectArray([Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public hasKey(Ljava/lang/Iterable;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TK;>;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1673
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    .local p2, "movingParts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1674
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1675
    const/4 v2, 0x1

    .line 1678
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasValArray()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .locals 4

    .prologue
    .line 1036
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateHasValue;

    invoke-direct {v3}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateHasValue;-><init>()V

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public incrementPublicSize(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;)V
    .locals 5
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    .prologue
    .line 524
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deferredDelete()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 525
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 526
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isInternal()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 528
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map()Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->incrementSize(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;)V

    .line 530
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDht()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isColocated()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDhtAtomic()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 531
    :cond_3
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->partition()I

    move-result v2

    sget-object v3, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->localPartition(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    move-result-object v0

    .line 533
    .local v0, "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    if-eqz v0, :cond_4

    .line 534
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->incrementPublicSize()V

    .line 536
    .end local v0    # "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    :cond_4
    return-void
.end method

.method initConflictResolver()V
    .locals 1

    .prologue
    .line 329
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->drMgr:Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;->conflictResolver()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionAbstractConflictResolver;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->conflictRslvr:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionAbstractConflictResolver;

    .line 331
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->conflictRslvr:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionAbstractConflictResolver;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->storeMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->isLocalStore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictResolver;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictResolver;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->conflictRslvr:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionAbstractConflictResolver;

    .line 333
    :cond_0
    return-void
.end method

.method public io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;
    .locals 1

    .prologue
    .line 970
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->sharedCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    return-object v0
.end method

.method public ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .locals 1

    .prologue
    .line 447
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->plc:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    return-object v0
.end method

.method public isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z
    .locals 6
    .param p2    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TE;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1113
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    .local p2, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TE;>;"
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1114
    const/4 v2, 0x1

    .line 1132
    :goto_0
    return v2

    .line 1117
    :cond_0
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->FLAG_LOCAL_READ:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forceFlags([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    move-result-object v1

    .line 1120
    .local v1, "oldFlags":[Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    :try_start_0
    invoke-static {p1, p2}, Lorg/apache/ignite/internal/util/typedef/F;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v2

    .line 1122
    .local v2, "pass":Z
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1123
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Evaluated filters for entry [pass="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", entry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", filters="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1132
    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forceFlags([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    goto :goto_0

    .line 1128
    .end local v2    # "pass":Z
    :catch_0
    move-exception v0

    .line 1129
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cast(Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1132
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forceFlags([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    throw v3
.end method

.method public isAll(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 7
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "p"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    const/4 v5, 0x1

    .line 1143
    if-eqz p2, :cond_0

    array-length v6, p2

    if-nez v6, :cond_1

    .line 1156
    :cond_0
    :goto_0
    return v5

    .line 1147
    :cond_1
    move-object v0, p2

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :try_start_0
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 1148
    .local v4, "p0":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    if-eqz v4, :cond_2

    invoke-interface {v4, p1}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;->apply(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_2

    .line 1149
    const/4 v5, 0x0

    goto :goto_0

    .line 1147
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1152
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "p0":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :catch_0
    move-exception v1

    .line 1153
    .local v1, "ex":Ljava/lang/RuntimeException;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cast(Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v5

    throw v5
.end method

.method public isAll(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/lang/IgnitePredicate;)Z
    .locals 1
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK1;TV1;>;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1099
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p2, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<Ljavax/cache/Cache$Entry<TK1;TV1;>;>;"
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->wrapLazyValue()Ljavax/cache/Cache$Entry;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllLocked(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 8
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "p"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1166
    if-eqz p2, :cond_0

    array-length v7, p2

    if-nez v7, :cond_2

    :cond_0
    move v5, v6

    .line 1189
    :cond_1
    :goto_0
    return v5

    .line 1170
    :cond_2
    move-object v0, p2

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :try_start_0
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v4, v0, v2

    .line 1171
    .local v4, "p0":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    if-eqz v4, :cond_4

    .line 1172
    const/4 v7, 0x1

    invoke-interface {v4, v7}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;->entryLocked(Z)V

    .line 1174
    invoke-interface {v4, p1}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;->apply(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_4

    .line 1183
    move-object v0, p2

    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 1184
    if-eqz v4, :cond_3

    .line 1185
    invoke-interface {v4, v5}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;->entryLocked(Z)V

    .line 1183
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1170
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1183
    .end local v4    # "p0":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :cond_5
    move-object v0, p2

    array-length v3, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_9

    aget-object v4, v0, v2

    .line 1184
    .restart local v4    # "p0":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    if-eqz v4, :cond_6

    .line 1185
    invoke-interface {v4, v5}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;->entryLocked(Z)V

    .line 1183
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1179
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "p0":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :catch_0
    move-exception v1

    .line 1180
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cast(Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1183
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v6

    move-object v0, p2

    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_4
    if-ge v2, v3, :cond_8

    aget-object v4, v0, v2

    .line 1184
    .restart local v4    # "p0":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    if-eqz v4, :cond_7

    .line 1185
    invoke-interface {v4, v5}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;->entryLocked(Z)V

    .line 1183
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v4    # "p0":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :cond_8
    throw v6

    :cond_9
    move v5, v6

    .line 1189
    goto :goto_0
.end method

.method public isColocated()Z
    .locals 1

    .prologue
    .line 482
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->isColocated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDht()Z
    .locals 1

    .prologue
    .line 468
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->isDht()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDhtAtomic()Z
    .locals 1

    .prologue
    .line 475
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->isDhtAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrEnabled()Z
    .locals 1

    .prologue
    .line 510
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dr()Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;->enabled()Z

    move-result v0

    return v0
.end method

.method public isInvalidate()Z
    .locals 1

    .prologue
    .line 1564
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isInvalidate()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->INVALIDATE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocal()Z
    .locals 1

    .prologue
    .line 496
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocalNode(Ljava/util/UUID;)Z
    .locals 1
    .param p1, "id"    # Ljava/util/UUID;

    .prologue
    .line 739
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 741
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLocalNode(Lorg/apache/ignite/cluster/ClusterNode;)Z
    .locals 2
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 729
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 731
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNear()Z
    .locals 1

    .prologue
    .line 489
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->isNear()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOffHeapEnabled()Z
    .locals 1

    .prologue
    .line 1536
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swapMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offHeapEnabled()Z

    move-result v0

    return v0
.end method

.method public isReplicated()Z
    .locals 2

    .prologue
    .line 503
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/cache/CacheMode;->REPLICATED:Lorg/apache/ignite/cache/CacheMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwapOrOffheapEnabled()Z
    .locals 1

    .prologue
    .line 1529
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swapMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->SKIP_SWAP:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isOffHeapEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public itHolder()Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 942
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->itHolder:Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;

    return-object v0
.end method

.method public jta()Lorg/apache/ignite/internal/processors/cache/jta/CacheJtaManagerAdapter;
    .locals 1

    .prologue
    .line 1005
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->jtaMgr:Lorg/apache/ignite/internal/processors/cache/jta/CacheJtaManagerAdapter;

    return-object v0
.end method

.method public keepPortable()Z
    .locals 2

    .prologue
    .line 1764
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1766
    .local v0, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->isKeepPortable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public kernalContext()Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1

    .prologue
    .line 609
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method public loadPreviousValue()Z
    .locals 1

    .prologue
    .line 1550
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isLoadPreviousValue()Z

    move-result v0

    return v0
.end method

.method public local()Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 461
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;

    return-object v0
.end method

.method public localNode()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 711
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->locNode:Lorg/apache/ignite/cluster/ClusterNode;

    if-nez v0, :cond_0

    .line 712
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->locNode:Lorg/apache/ignite/cluster/ClusterNode;

    .line 714
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->locNode:Lorg/apache/ignite/cluster/ClusterNode;

    return-object v0
.end method

.method public localNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 721
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public logger(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/ignite/IgniteLogger;"
        }
    .end annotation

    .prologue
    .line 800
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->logger(Ljava/lang/String;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    return-object v0
.end method

.method public logger(Ljava/lang/String;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p1, "ctgr"    # Ljava/lang/String;

    .prologue
    .line 792
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/String;)V

    return-object v0
.end method

.method public managers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheManager",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 419
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mgrs:Ljava/util/List;

    return-object v0
.end method

.method public marshaller()Lorg/apache/ignite/marshaller/Marshaller;
    .locals 1

    .prologue
    .line 784
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    return-object v0
.end method

.method public mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;
    .locals 1

    .prologue
    .line 907
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->sharedCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v0

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 630
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method public namex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 639
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDht()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public namexx()Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namex()Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "default"

    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 581
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    return-object v0
.end method

.method public nearTx()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 588
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;

    return-object v0
.end method

.method public noValArray()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .locals 4

    .prologue
    .line 1029
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateNoValue;

    invoke-direct {v3}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateNoValue;-><init>()V

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 749
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 751
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    return-object v0
.end method

.method public nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 683
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public offheap()Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;
    .locals 1

    .prologue
    .line 828
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->offheap()Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    move-result-object v0

    return-object v0
.end method

.method public offheapTiered()Z
    .locals 2

    .prologue
    .line 1773
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getMemoryMode()Lorg/apache/ignite/cache/CacheMemoryMode;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/cache/CacheMemoryMode;->OFFHEAP_TIERED:Lorg/apache/ignite/cache/CacheMemoryMode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isOffHeapEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDeferredDelete(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 1
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 1723
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1724
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1725
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1726
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deferredDelete()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1728
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->onDeferredDelete(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 1729
    return-void
.end method

.method public onStarted()V
    .locals 1

    .prologue
    .line 370
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->startLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 371
    return-void
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
    .line 676
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    move-result-object v0

    return-object v0
.end method

.method public printMemoryStats()V
    .locals 6

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    const/4 v5, 0x0

    .line 1943
    const-string v3, ">>> "

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1944
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> Cache memory stats [grid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cache="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1946
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->printMemoryStats()V

    .line 1948
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 1950
    .local v2, "printed":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheManager;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->managers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheManager;

    .line 1951
    .local v1, "mgr":Lorg/apache/ignite/internal/processors/cache/GridCacheManager;
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheManager;->printMemoryStats()V

    .line 1953
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1956
    .end local v1    # "mgr":Lorg/apache/ignite/internal/processors/cache/GridCacheManager;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1957
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->managers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheManager;

    .line 1958
    .restart local v1    # "mgr":Lorg/apache/ignite/internal/processors/cache/GridCacheManager;
    invoke-interface {v2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1959
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheManager;->printMemoryStats()V

    goto :goto_1

    .line 1960
    .end local v1    # "mgr":Lorg/apache/ignite/internal/processors/cache/GridCacheManager;
    :cond_2
    return-void
.end method

.method public projectSafe(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1445
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1448
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v1

    .line 1451
    .local v1, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forcedFlags()[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    move-result-object v0

    .line 1453
    .local v0, "flags":[Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    if-nez v1, :cond_1

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1456
    .end local p1    # "r":Ljava/lang/Runnable;
    :goto_0
    return-object p1

    .restart local p1    # "r":Ljava/lang/Runnable;
    :cond_1
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$3;

    invoke-direct {v2, p0, v1, v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$3;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;[Lorg/apache/ignite/internal/processors/cache/CacheFlag;Ljava/lang/Runnable;)V

    move-object p1, v2

    goto :goto_0
.end method

.method public projectSafe(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1487
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p1, "r":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1490
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v1

    .line 1493
    .local v1, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forcedFlags()[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    move-result-object v0

    .line 1495
    .local v0, "flags":[Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    if-nez v1, :cond_1

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1498
    .end local p1    # "r":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    :goto_0
    return-object p1

    .restart local p1    # "r":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    :cond_1
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$4;

    invoke-direct {v2, p0, v1, v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$4;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;[Lorg/apache/ignite/internal/processors/cache/CacheFlag;Ljava/util/concurrent/Callable;)V

    move-object p1, v2

    goto :goto_0
.end method

.method public projectionPerCall()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1264
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nearContext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->prjPerCall:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->prjPerCall:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    goto :goto_0
.end method

.method public projectionPerCall(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    .locals 1
    .param p1    # Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1252
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p1, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nearContext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1253
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->prjPerCall:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1256
    :goto_0
    return-void

    .line 1255
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->prjPerCall:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public putIfAbsentFilter([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 6
    .param p1, "p"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    const/4 v4, 0x0

    .line 1013
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_1

    .line 1022
    :cond_0
    :goto_0
    return v4

    .line 1016
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1017
    .local v3, "p0":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    instance-of v5, v3, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;

    if-eqz v5, :cond_2

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;

    .end local v3    # "p0":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;->predicate()Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v5

    instance-of v5, v5, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateNoValue;

    if-eqz v5, :cond_2

    .line 1019
    const/4 v4, 0x1

    goto :goto_0

    .line 1016
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public queries()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 928
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->qryMgr:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    return-object v0
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
    .line 1986
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 1988
    .local v0, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->set1(Ljava/lang/Object;)V

    .line 1989
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->set2(Ljava/lang/Object;)V

    .line 1990
    return-void
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 2000
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    :try_start_0
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 2002
    .local v3, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/apache/ignite/internal/IgnitionEx;->gridx(Ljava/lang/String;)Lorg/apache/ignite/internal/IgniteKernal;

    move-result-object v2

    .line 2004
    .local v2, "grid":Lorg/apache/ignite/internal/IgniteKernal;
    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/IgniteKernal;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    .line 2006
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    if-nez v0, :cond_0

    .line 2007
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find cache for name: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2011
    .end local v0    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .end local v2    # "grid":Lorg/apache/ignite/internal/IgniteKernal;
    .end local v3    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 2012
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    new-instance v4, Ljava/io/InvalidObjectException;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->withCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/io/InvalidObjectException;

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2015
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v4

    sget-object v5, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->remove()V

    throw v4

    .line 2009
    .restart local v0    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .restart local v2    # "grid":Lorg/apache/ignite/internal/IgniteKernal;
    .restart local v3    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 2015
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->remove()V

    return-object v4
.end method

.method public readThrough()Z
    .locals 1

    .prologue
    .line 1543
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isReadThrough()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->SKIP_STORE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public rebalanceEnabled()Z
    .locals 2

    .prologue
    .line 690
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceMode()Lorg/apache/ignite/cache/CacheRebalanceMode;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/cache/CacheRebalanceMode;->NONE:Lorg/apache/ignite/cache/CacheRebalanceMode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shared()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->sharedCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    return-object v0
.end method

.method public startTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1

    .prologue
    .line 377
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->startTopVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    return-object v0
.end method

.method public startTopologyVersion(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 0
    .param p1, "startTopVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 384
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->startTopVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 385
    return-void
.end method

.method public started()Z
    .locals 6

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    const/4 v1, 0x0

    .line 358
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->startLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 363
    :cond_0
    :goto_0
    return v1

    .line 361
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    move-result-object v0

    .line 363
    .local v0, "prldr":Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;, "Lorg/apache/ignite/internal/processors/cache/GridCachePreloader<TK;TV;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;->startFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;
    .locals 1

    .prologue
    .line 956
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->storeMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    return-object v0
.end method

.method public subjectIdPerCall(Ljava/util/UUID;)Ljava/util/UUID;
    .locals 1
    .param p1, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1274
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    if-eqz p1, :cond_0

    .line 1277
    .end local p1    # "subjId":Ljava/util/UUID;
    :goto_0
    return-object p1

    .restart local p1    # "subjId":Ljava/util/UUID;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->subjectIdPerCall(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Ljava/util/UUID;

    move-result-object p1

    goto :goto_0
.end method

.method public subjectIdPerCall(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Ljava/util/UUID;
    .locals 1
    .param p1, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl",
            "<TK;TV;>;)",
            "Ljava/util/UUID;"
        }
    .end annotation

    .prologue
    .line 1288
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p2, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    if-eqz p2, :cond_0

    .line 1289
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->subjectId()Ljava/util/UUID;

    move-result-object p1

    .line 1291
    :cond_0
    if-nez p1, :cond_1

    .line 1292
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object p1

    .line 1294
    :cond_1
    return-object p1
.end method

.method public swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;
    .locals 1

    .prologue
    .line 949
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swapMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    return-object v0
.end method

.method public syncCommit()Z
    .locals 2

    .prologue
    .line 1571
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteSynchronizationMode()Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->FULL_SYNC:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    if-eq v0, v1, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->SYNC_COMMIT:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncPrimary()Z
    .locals 2

    .prologue
    .line 1585
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteSynchronizationMode()Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->PRIMARY_SYNC:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncRollback()Z
    .locals 2

    .prologue
    .line 1578
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteSynchronizationMode()Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->FULL_SYNC:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public system()Z
    .locals 1

    .prologue
    .line 440
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->sys:Z

    return v0
.end method

.method public time()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;
    .locals 1

    .prologue
    .line 821
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->timeout()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v0

    return-object v0
.end method

.method public tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;
    .locals 1

    .prologue
    .line 893
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->sharedCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    return-object v0
.end method

.method public toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1832
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->toCacheKeyObject(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    return-object v0
.end method

.method public toCacheKeyObject([B)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .locals 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1841
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->localLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->unmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;[BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 1843
    .local v0, "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->toCacheKeyObject(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v1

    return-object v1
.end method

.method public toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1824
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->toCacheObject(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2021
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridCacheContext: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;
    .locals 1

    .prologue
    .line 758
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDht()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isColocated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDhtAtomic()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 760
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v0

    goto :goto_0
.end method

.method public topologyVersionFuture()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;
    .locals 3

    .prologue
    .line 767
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDht()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isColocated()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDhtAtomic()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 769
    :cond_0
    const/4 v1, 0x0

    .line 771
    .local v1, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDhtAtomic()Z

    move-result v2

    if-nez v2, :cond_1

    .line 772
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    .line 774
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    :goto_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->multiUpdateTopologyFuture()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;

    move-result-object v1

    .line 777
    .end local v0    # "cache":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->topologyVersionFuture()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;

    move-result-object v1

    .end local v1    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;
    :cond_2
    return-object v1

    .line 772
    .restart local v1    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;
    :cond_3
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->colocated()Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;

    move-result-object v0

    goto :goto_0
.end method

.method public transactional()Z
    .locals 2

    .prologue
    .line 704
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicityMode()Lorg/apache/ignite/cache/CacheAtomicityMode;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/cache/CacheAtomicityMode;->TRANSACTIONAL:Lorg/apache/ignite/cache/CacheAtomicityMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ttl()Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;
    .locals 1

    .prologue
    .line 998
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ttlMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;

    return-object v0
.end method

.method public txKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .locals 2
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .prologue
    .line 658
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId:I

    invoke-direct {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;-><init>(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;I)V

    return-object v0
.end method

.method public unsafeMemory()Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 602
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unsafeMemory:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    return-object v0
.end method

.method public unswapCacheObject(B[BLorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 5
    .param p1, "type"    # B
    .param p2, "bytes"    # [B
    .param p3, "clsLdrId"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1856
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    .line 1857
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->getClassLoader(Lorg/apache/ignite/lang/IgniteUuid;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1859
    .local v0, "ldr":Ljava/lang/ClassLoader;
    :goto_0
    if-nez v0, :cond_1

    .line 1860
    const/4 v1, 0x0

    .line 1867
    .end local v0    # "ldr":Ljava/lang/ClassLoader;
    :goto_1
    return-object v1

    .line 1857
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->localLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    .line 1862
    .restart local v0    # "ldr":Ljava/lang/ClassLoader;
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    invoke-interface {v3, v4, p2, v0}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->unmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;[BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->toCacheObject(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    goto :goto_1

    .line 1867
    .end local v0    # "ldr":Ljava/lang/ClassLoader;
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    invoke-interface {v1, v2, p1, p2}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->toCacheObject(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;B[B)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    goto :goto_1
.end method

.method public unwrapPortableIfNeeded(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "keepPortable"    # Z

    .prologue
    .line 1809
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->unwrapPortableIfNeeded(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public unwrapPortablesIfNeeded(Ljava/util/Collection;Z)Ljava/util/Collection;
    .locals 1
    .param p2, "keepPortable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1797
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->unwrapPortablesIfNeeded(Ljava/util/Collection;Z)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1783
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->offheapTiered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1786
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p1

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->unwrapTemporary(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0
.end method

.method public vararg(Lorg/apache/ignite/lang/IgnitePredicate;)[Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;)[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1084
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p1, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Ljavax/cache/Cache$Entry<TK;TV;>;>;"
    if-nez p1, :cond_0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty()[Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    goto :goto_0
.end method

.method public versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;
    .locals 1

    .prologue
    .line 900
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->sharedCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v0

    return-object v0
.end method

.method public wrapClone(Lorg/apache/ignite/internal/IgniteInternalFuture;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1424
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TV;>;"
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->CLONE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1427
    .end local p1    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TV;>;"
    :goto_0
    return-object p1

    .restart local p1    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TV;>;"
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$2;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$2;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    invoke-interface {p1, v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object p1

    goto :goto_0
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
    .line 1979
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 1980
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namex()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 1981
    return-void
.end method

.method public writeThrough()Z
    .locals 1

    .prologue
    .line 1557
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isWriteThrough()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->SKIP_STORE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToStoreFromDht()Z
    .locals 1

    .prologue
    .line 886
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->isLocalStore()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isWriteBehindEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
