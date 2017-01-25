.class public Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;
.super Lorg/apache/ignite/internal/processors/GridProcessorAdapter;
.source "GridCacheProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$5;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$LocalAffinityFunction;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NULL_NAME:Ljava/lang/String;


# instance fields
.field private final caches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
            "<**>;>;"
        }
    .end annotation
.end field

.field private final jCacheProxies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy",
            "<**>;>;"
        }
    .end annotation
.end field

.field private marshaller:Lorg/apache/ignite/marshaller/Marshaller;

.field private maxRebalanceOrder:I

.field private pendingFuts:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/IgniteInternalFuture;",
            ">;"
        }
    .end annotation
.end field

.field private final preloadFuts:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;>;"
        }
    .end annotation
.end field

.field private registeredCaches:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private sesHolders:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Lorg/apache/ignite/cache/store/CacheStore;",
            "Ljava/lang/ThreadLocal;",
            ">;"
        }
    .end annotation
.end field

.field private sharedCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext",
            "<**>;"
        }
    .end annotation
.end field

.field private final stopSeq:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sysCaches:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transactions:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    .line 84
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->NULL_NAME:Ljava/lang/String;

    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 111
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->pendingFuts:Ljava/util/concurrent/ConcurrentMap;

    .line 114
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->registeredCaches:Ljava/util/concurrent/ConcurrentMap;

    .line 117
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sesHolders:Ljava/util/IdentityHashMap;

    .line 120
    new-instance v0, Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;

    invoke-direct {v0}, Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->marshaller:Lorg/apache/ignite/marshaller/Marshaller;

    .line 128
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->caches:Ljava/util/Map;

    .line 129
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->jCacheProxies:Ljava/util/Map;

    .line 130
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->preloadFuts:Ljava/util/NavigableMap;

    .line 132
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sysCaches:Ljava/util/Set;

    .line 133
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->stopSeq:Ljava/util/Deque;

    .line 134
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->onCacheChangeRequested(Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->unmaskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->pendingFuts:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private checkCache(Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/cluster/ClusterNode;)V
    .locals 11
    .param p1, "locCfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;
    .param p2, "rmtCfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;
    .param p3, "rmtNode"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1906
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v9

    .line 1908
    .local v9, "locNode":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {p3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    .line 1910
    .local v2, "rmt":Ljava/util/UUID;
    new-instance v10, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;

    invoke-direct {v10, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;-><init>(Lorg/apache/ignite/configuration/CacheConfiguration;)V

    .line 1911
    .local v10, "rmtAttr":Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;
    new-instance v8, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;

    invoke-direct {v8, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;-><init>(Lorg/apache/ignite/configuration/CacheConfiguration;)V

    .line 1913
    .local v8, "locAttr":Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "cacheMode"

    const-string v4, "Cache mode"

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v5

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1916
    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    if-eq v0, v1, :cond_2

    .line 1917
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "interceptor"

    const-string v4, "Cache Interceptor"

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->interceptorClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->interceptorClassName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1920
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "atomicityMode"

    const-string v4, "Cache atomicity mode"

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->atomicityMode()Lorg/apache/ignite/cache/CacheAtomicityMode;

    move-result-object v5

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->atomicityMode()Lorg/apache/ignite/cache/CacheAtomicityMode;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1923
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "cachePreloadMode"

    const-string v4, "Cache preload mode"

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheRebalanceMode()Lorg/apache/ignite/cache/CacheRebalanceMode;

    move-result-object v5

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheRebalanceMode()Lorg/apache/ignite/cache/CacheRebalanceMode;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1926
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicityMode()Lorg/apache/ignite/cache/CacheAtomicityMode;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/cache/CacheAtomicityMode;->TRANSACTIONAL:Lorg/apache/ignite/cache/CacheAtomicityMode;

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getNodeFilter()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    invoke-interface {v0, p3}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getNodeFilter()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    invoke-interface {v0, v9}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1928
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "storeFactory"

    const-string v4, "Store factory"

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->storeFactoryClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->storeFactoryClassName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1931
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "cacheAffinity"

    const-string v4, "Cache affinity"

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheAffinityClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheAffinityClassName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1934
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "cacheAffinityMapper"

    const-string v4, "Cache affinity mapper"

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheAffinityMapperClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheAffinityMapperClassName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1938
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "affinityPartitionsCount"

    const-string v4, "Affinity partitions count"

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->affinityPartitionsCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->affinityPartitionsCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1942
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "evictionFilter"

    const-string v4, "Eviction filter"

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->evictionFilterClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->evictionFilterClassName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1945
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "evictionPolicy"

    const-string v4, "Eviction policy"

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->evictionPolicyClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->evictionPolicyClassName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1948
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "transactionManagerLookup"

    const-string v4, "Transaction manager lookup"

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->transactionManagerLookupClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->transactionManagerLookupClassName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1952
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "defaultLockTimeout"

    const-string v4, "Default lock timeout"

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->defaultLockTimeout()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->defaultLockTimeout()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1955
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "defaultTimeToLive"

    const-string v4, "Default time to live"

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->defaultTimeToLive()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->defaultTimeToLive()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1958
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "preloadBatchSize"

    const-string v4, "Preload batch size"

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->rebalanceBatchSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->rebalanceBatchSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1961
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "swapEnabled"

    const-string v4, "Swap enabled"

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->swapEnabled()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->swapEnabled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1964
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "writeSynchronizationMode"

    const-string v4, "Write synchronization mode"

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->writeSynchronization()Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    move-result-object v5

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->writeSynchronization()Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1968
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "writeBehindBatchSize"

    const-string v4, "Write behind batch size"

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->writeBehindBatchSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->writeBehindBatchSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1972
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "writeBehindEnabled"

    const-string v4, "Write behind enabled"

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->writeBehindEnabled()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->writeBehindEnabled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1975
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "writeBehindFlushFrequency"

    const-string v4, "Write behind flush frequency"

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->writeBehindFlushFrequency()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->writeBehindFlushFrequency()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1979
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "writeBehindFlushSize"

    const-string v4, "Write behind flush size"

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->writeBehindFlushSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->writeBehindFlushSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1983
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "writeBehindFlushThreadCount"

    const-string v4, "Write behind flush thread count"

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->writeBehindFlushThreadCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->writeBehindFlushThreadCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1987
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "evictMaxOverflowRatio"

    const-string v4, "Eviction max overflow ratio"

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->evictMaxOverflowRatio()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->evictMaxOverflowRatio()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1991
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/cache/CacheMode;->PARTITIONED:Lorg/apache/ignite/cache/CacheMode;

    if-ne v0, v1, :cond_2

    .line 1992
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "evictSynchronized"

    const-string v4, "Eviction synchronized"

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->evictSynchronized()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->evictSynchronized()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1996
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "nearEvictionPolicy"

    const-string v4, "Near eviction policy"

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->nearEvictionPolicyClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->nearEvictionPolicyClassName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2000
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "affinityIncludeNeighbors"

    const-string v4, "Affinity include neighbors"

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->affinityIncludeNeighbors()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->affinityIncludeNeighbors()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2004
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "affinityKeyBackups"

    const-string v4, "Affinity key backups"

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->affinityKeyBackups()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->affinityKeyBackups()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2008
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "cacheAffinity.hashIdResolver"

    const-string v4, "Partitioned cache affinity hash ID resolver class"

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->affinityHashIdResolverClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->affinityHashIdResolverClassName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2014
    :cond_2
    return-void
.end method

.method private checkSerializable(Lorg/apache/ignite/configuration/CacheConfiguration;)V
    .locals 4
    .param p1, "val"    # Lorg/apache/ignite/configuration/CacheConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2513
    if-nez p1, :cond_0

    .line 2523
    :goto_0
    return-void

    .line 2517
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->marshaller:Lorg/apache/ignite/marshaller/Marshaller;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->marshaller:Lorg/apache/ignite/marshaller/Marshaller;

    invoke-interface {v2, p1}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2519
    :catch_0
    move-exception v0

    .line 2520
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to validate cache configuration (make sure all objects in cache configuration are serializable): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private checkStoreConsistency(Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/cluster/ClusterNode;)Z
    .locals 2
    .param p1, "cfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;
    .param p2, "rmtNode"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p3, "locNode"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 2044
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicityMode()Lorg/apache/ignite/cache/CacheAtomicityMode;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/cache/CacheAtomicityMode;->ATOMIC:Lorg/apache/ignite/cache/CacheAtomicityMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cacheAffinityNode(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cacheAffinityNode(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkTransactionConfiguration(Lorg/apache/ignite/cluster/ClusterNode;)V
    .locals 5
    .param p1, "rmt"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2021
    const-string v2, "org.apache.ignite.tx"

    invoke-interface {p1, v2}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/configuration/TransactionConfiguration;

    .line 2023
    .local v1, "txCfg":Lorg/apache/ignite/configuration/TransactionConfiguration;
    if-eqz v1, :cond_0

    .line 2024
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getTransactionConfiguration()Lorg/apache/ignite/configuration/TransactionConfiguration;

    move-result-object v0

    .line 2026
    .local v0, "locTxCfg":Lorg/apache/ignite/configuration/TransactionConfiguration;
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/TransactionConfiguration;->isTxSerializableEnabled()Z

    move-result v2

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/TransactionConfiguration;->isTxSerializableEnabled()Z

    move-result v3

    if-eq v2, v3, :cond_0

    .line 2027
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Serializable transactions enabled mismatch (fix txSerializableEnabled property or set -DIGNITE_SKIP_CONFIGURATION_CONSISTENCY_CHECK=true system property) [rmtNodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", locTxSerializableEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/TransactionConfiguration;->isTxSerializableEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", rmtTxSerializableEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/TransactionConfiguration;->isTxSerializableEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2033
    .end local v0    # "locTxCfg":Lorg/apache/ignite/configuration/TransactionConfiguration;
    :cond_0
    return-void
.end method

.method private cleanup(Lorg/apache/ignite/configuration/CacheConfiguration;Ljava/lang/Object;Z)V
    .locals 4
    .param p1, "cfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;
    .param p2, "rsrc"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "near"    # Z

    .prologue
    .line 506
    if-eqz p2, :cond_0

    .line 507
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->unregisterMbean(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 510
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->cleanupGeneric(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to cleanup resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private cleanup(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 4
    .param p1, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .prologue
    const/4 v3, 0x0

    .line 484
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    .line 486
    .local v0, "cfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictionPolicy()Lorg/apache/ignite/cache/eviction/EvictionPolicy;

    move-result-object v2

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->cleanup(Lorg/apache/ignite/configuration/CacheConfiguration;Ljava/lang/Object;Z)V

    .line 487
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinity()Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v2

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->cleanup(Lorg/apache/ignite/configuration/CacheConfiguration;Ljava/lang/Object;Z)V

    .line 488
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinityMapper()Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    move-result-object v2

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->cleanup(Lorg/apache/ignite/configuration/CacheConfiguration;Ljava/lang/Object;Z)V

    .line 489
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->jta()Lorg/apache/ignite/internal/processors/cache/jta/CacheJtaManagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/jta/CacheJtaManagerAdapter;->tmLookup()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->cleanup(Lorg/apache/ignite/configuration/CacheConfiguration;Ljava/lang/Object;Z)V

    .line 490
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->configuredStore()Lorg/apache/ignite/cache/store/CacheStore;

    move-result-object v2

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->cleanup(Lorg/apache/ignite/configuration/CacheConfiguration;Ljava/lang/Object;Z)V

    .line 492
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getNearConfiguration()Lorg/apache/ignite/configuration/NearCacheConfiguration;

    move-result-object v1

    .line 494
    .local v1, "nearCfg":Lorg/apache/ignite/configuration/NearCacheConfiguration;
    if-eqz v1, :cond_0

    .line 495
    invoke-virtual {v1}, Lorg/apache/ignite/configuration/NearCacheConfiguration;->getNearEvictionPolicy()Lorg/apache/ignite/cache/eviction/EvictionPolicy;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->cleanup(Lorg/apache/ignite/configuration/CacheConfiguration;Ljava/lang/Object;Z)V

    .line 497
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cleanup()V

    .line 498
    return-void
.end method

.method private createCache(Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 27
    .param p2, "cacheObjCtx"    # Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/configuration/CacheConfiguration",
            "<**>;",
            "Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 979
    .local p1, "cfg":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<**>;"
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 981
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheStoreFactory()Ljavax/cache/configuration/Factory;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheStoreFactory()Ljavax/cache/configuration/Factory;

    move-result-object v4

    invoke-interface {v4}, Ljavax/cache/configuration/Factory;->create()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/cache/store/CacheStore;

    move-object/from16 v20, v4

    .line 983
    .local v20, "cfgStore":Lorg/apache/ignite/cache/store/CacheStore;
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v4, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->validate(Lorg/apache/ignite/configuration/IgniteConfiguration;Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/cache/store/CacheStore;)V

    .line 985
    sget-object v5, Lorg/apache/ignite/internal/IgniteComponentType;->JTA:Lorg/apache/ignite/internal/IgniteComponentType;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getTransactionManagerLookupClassName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v4}, Lorg/apache/ignite/internal/IgniteComponentType;->create(Z)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/ignite/internal/processors/cache/jta/CacheJtaManagerAdapter;

    .line 987
    .local v18, "jta":Lorg/apache/ignite/internal/processors/cache/jta/CacheJtaManagerAdapter;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/jta/CacheJtaManagerAdapter;->createTmLookup(Lorg/apache/ignite/configuration/CacheConfiguration;)V

    .line 990
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sysCaches:Ljava/util/Set;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 991
    if-eqz v20, :cond_5

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->suggestOptimizations(Lorg/apache/ignite/configuration/CacheConfiguration;Z)V

    .line 993
    :cond_1
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 995
    .local v25, "toPrepare":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/jta/CacheJtaManagerAdapter;->tmLookup()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 997
    move-object/from16 v0, v20

    instance-of v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;

    if-eqz v4, :cond_6

    move-object/from16 v4, v20

    .line 998
    check-cast v4, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;->loader()Ljavax/cache/integration/CacheLoader;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v20

    .line 999
    check-cast v4, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;->writer()Ljavax/cache/integration/CacheWriter;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1004
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->prepare(Lorg/apache/ignite/configuration/CacheConfiguration;Ljava/util/Collection;)V

    .line 1006
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/jta/CacheJtaManagerAdapter;->tmLookup()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v20, v4, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->lifecycleAwares(Lorg/apache/ignite/configuration/CacheConfiguration;[Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->startLifecycleAware(Ljava/lang/Iterable;)V

    .line 1008
    new-instance v14, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    invoke-direct {v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;-><init>()V

    .line 1009
    .local v14, "affMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;
    new-instance v8, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    invoke-direct {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;-><init>()V

    .line 1010
    .local v8, "evtMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;
    new-instance v9, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    if-eq v4, v5, :cond_2

    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->isNearEnabled(Lorg/apache/ignite/configuration/CacheConfiguration;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_2
    const/4 v4, 0x1

    :goto_4
    invoke-direct {v9, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;-><init>(Z)V

    .line 1011
    .local v9, "swapMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;
    new-instance v11, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-direct {v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;-><init>()V

    .line 1012
    .local v11, "evictMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;
    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->queryManager(Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    move-result-object v12

    .line 1013
    .local v12, "qryMgr":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
    new-instance v13, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    invoke-direct {v13}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;-><init>()V

    .line 1014
    .local v13, "contQryMgr":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;
    new-instance v15, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    invoke-direct {v15}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;-><init>()V

    .line 1015
    .local v15, "dataStructuresMgr":Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;
    new-instance v16, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;

    invoke-direct/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;-><init>()V

    .line 1016
    .local v16, "ttlMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    const-class v5, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;

    invoke-interface {v4, v5}, Lorg/apache/ignite/internal/GridKernalContext;->createComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;

    .line 1018
    .local v17, "drMgr":Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;
    new-instance v10, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sesHolders:Ljava/util/IdentityHashMap;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v10, v4, v5, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/Map;Lorg/apache/ignite/cache/store/CacheStore;Lorg/apache/ignite/configuration/CacheConfiguration;)V

    .line 1020
    .local v10, "storeMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sharedCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v6, v7, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cacheAffinityNode(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)Z

    move-result v7

    move-object/from16 v6, p1

    invoke-direct/range {v3 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/configuration/CacheConfiguration;ZLorg/apache/ignite/internal/processors/cache/GridCacheEventManager;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;Lorg/apache/ignite/internal/processors/cache/jta/CacheJtaManagerAdapter;)V

    .line 1042
    .local v3, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V

    .line 1044
    const/16 v19, 0x0

    .line 1046
    .local v19, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$5;->$SwitchMap$org$apache$ignite$cache$CacheMode:[I

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/cache/CacheMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1114
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    if-nez v4, :cond_8

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid cache mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 981
    .end local v3    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    .end local v8    # "evtMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;
    .end local v9    # "swapMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;
    .end local v10    # "storeMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;
    .end local v11    # "evictMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;
    .end local v12    # "qryMgr":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
    .end local v13    # "contQryMgr":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;
    .end local v14    # "affMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;
    .end local v15    # "dataStructuresMgr":Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;
    .end local v16    # "ttlMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;
    .end local v17    # "drMgr":Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;
    .end local v18    # "jta":Lorg/apache/ignite/internal/processors/cache/jta/CacheJtaManagerAdapter;
    .end local v19    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .end local v20    # "cfgStore":Lorg/apache/ignite/cache/store/CacheStore;
    .end local v25    # "toPrepare":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_3
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 985
    .restart local v20    # "cfgStore":Lorg/apache/ignite/cache/store/CacheStore;
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 991
    .restart local v18    # "jta":Lorg/apache/ignite/internal/processors/cache/jta/CacheJtaManagerAdapter;
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1002
    .restart local v25    # "toPrepare":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_6
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1010
    .restart local v8    # "evtMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;
    .restart local v14    # "affMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 1048
    .restart local v3    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    .restart local v9    # "swapMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;
    .restart local v10    # "storeMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;
    .restart local v11    # "evictMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;
    .restart local v12    # "qryMgr":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
    .restart local v13    # "contQryMgr":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;
    .restart local v15    # "dataStructuresMgr":Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;
    .restart local v16    # "ttlMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;
    .restart local v17    # "drMgr":Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;
    .restart local v19    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    :pswitch_0
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$5;->$SwitchMap$org$apache$ignite$cache$CacheAtomicityMode:[I

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicityMode()Lorg/apache/ignite/cache/CacheAtomicityMode;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/cache/CacheAtomicityMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 1061
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    if-nez v4, :cond_8

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid cache atomicity mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicityMode()Lorg/apache/ignite/cache/CacheAtomicityMode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 1050
    :pswitch_1
    new-instance v19, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;

    .end local v19    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 1118
    .restart local v19    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    :cond_8
    :goto_5
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)V

    .line 1120
    move-object/from16 v24, v3

    .line 1126
    .local v24, "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    if-eq v4, v5, :cond_e

    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->isNearEnabled(Lorg/apache/ignite/configuration/CacheConfiguration;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1139
    new-instance v9, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    .end local v9    # "swapMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;
    const/4 v4, 0x1

    invoke-direct {v9, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;-><init>(Z)V

    .line 1140
    .restart local v9    # "swapMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;
    new-instance v11, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    .end local v11    # "evictMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;
    invoke-direct {v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;-><init>()V

    .line 1141
    .restart local v11    # "evictMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;
    new-instance v8, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    .end local v8    # "evtMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;
    invoke-direct {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;-><init>()V

    .line 1142
    .restart local v8    # "evtMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    const-class v5, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;

    invoke-interface {v4, v5}, Lorg/apache/ignite/internal/GridKernalContext;->createComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "drMgr":Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;
    check-cast v17, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;

    .line 1144
    .restart local v17    # "drMgr":Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .end local v3    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sharedCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v6, v7, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cacheAffinityNode(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)Z

    move-result v7

    move-object/from16 v6, p1

    invoke-direct/range {v3 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/configuration/CacheConfiguration;ZLorg/apache/ignite/internal/processors/cache/GridCacheEventManager;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;Lorg/apache/ignite/internal/processors/cache/GridCacheTtlManager;Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;Lorg/apache/ignite/internal/processors/cache/jta/CacheJtaManagerAdapter;)V

    .line 1166
    .restart local v3    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V

    .line 1168
    const/16 v21, 0x0

    .line 1170
    .local v21, "dht":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$5;->$SwitchMap$org$apache$ignite$cache$CacheAtomicityMode:[I

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicityMode()Lorg/apache/ignite/cache/CacheAtomicityMode;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/cache/CacheAtomicityMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2

    .line 1207
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    if-nez v4, :cond_d

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid cache atomicity mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicityMode()Lorg/apache/ignite/cache/CacheAtomicityMode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 1055
    .end local v21    # "dht":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    .end local v24    # "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    :pswitch_2
    new-instance v19, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;

    .end local v19    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 1057
    .restart local v19    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    goto/16 :goto_5

    .line 1069
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->isNearEnabled(Lorg/apache/ignite/configuration/CacheConfiguration;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1070
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$5;->$SwitchMap$org$apache$ignite$cache$CacheAtomicityMode:[I

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicityMode()Lorg/apache/ignite/cache/CacheAtomicityMode;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/cache/CacheAtomicityMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_3

    .line 1083
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    if-nez v4, :cond_8

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid cache atomicity mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicityMode()Lorg/apache/ignite/cache/CacheAtomicityMode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 1072
    :pswitch_4
    new-instance v19, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;

    .end local v19    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 1074
    .restart local v19    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    goto/16 :goto_5

    .line 1077
    :pswitch_5
    new-instance v19, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;

    .end local v19    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 1079
    .restart local v19    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    goto/16 :goto_5

    .line 1088
    :cond_9
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$5;->$SwitchMap$org$apache$ignite$cache$CacheAtomicityMode:[I

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicityMode()Lorg/apache/ignite/cache/CacheAtomicityMode;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/cache/CacheAtomicityMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_4

    .line 1105
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    if-nez v4, :cond_8

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid cache atomicity mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicityMode()Lorg/apache/ignite/cache/CacheAtomicityMode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 1090
    :pswitch_6
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinityNode()Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v19, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;

    .end local v19    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 1094
    .restart local v19    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    :goto_6
    goto/16 :goto_5

    .line 1090
    :cond_a
    new-instance v19, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;

    .end local v19    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridNoStorageCacheMap;

    invoke-direct {v4, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridNoStorageCacheMap;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)V

    goto :goto_6

    .line 1097
    .restart local v19    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    :pswitch_7
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinityNode()Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v19, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    .end local v19    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 1101
    .restart local v19    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    :goto_7
    goto/16 :goto_5

    .line 1097
    :cond_b
    new-instance v19, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    .end local v19    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridNoStorageCacheMap;

    invoke-direct {v4, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridNoStorageCacheMap;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)V

    goto :goto_7

    .line 1172
    .restart local v19    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .restart local v21    # "dht":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    .restart local v24    # "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    :pswitch_8
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    if-nez v4, :cond_c

    move-object/from16 v0, v19

    instance-of v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;

    if-nez v4, :cond_c

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_c
    move-object/from16 v23, v19

    .line 1174
    check-cast v23, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;

    .line 1176
    .local v23, "near":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinityNode()Z

    move-result v4

    if-eqz v4, :cond_f

    new-instance v22, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 1180
    .local v22, "dhtCache":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;
    :goto_8
    invoke-virtual/range {v22 .. v23}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;->near(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;)V

    .line 1182
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->dht(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;)V

    .line 1184
    move-object/from16 v21, v22

    .line 1211
    .end local v22    # "dhtCache":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;
    .end local v23    # "near":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;
    :cond_d
    :goto_9
    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)V

    .line 1214
    .end local v21    # "dht":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    :cond_e
    return-object v24

    .line 1176
    .restart local v21    # "dht":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    .restart local v23    # "near":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;
    :cond_f
    new-instance v22, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridNoStorageCacheMap;

    invoke-direct {v4, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridNoStorageCacheMap;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)V

    goto :goto_8

    .line 1189
    .end local v23    # "near":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;
    :pswitch_9
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    if-nez v4, :cond_10

    move-object/from16 v0, v19

    instance-of v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;

    if-nez v4, :cond_10

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_10
    move-object/from16 v23, v19

    .line 1191
    check-cast v23, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;

    .line 1193
    .local v23, "near":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinityNode()Z

    move-result v4

    if-eqz v4, :cond_11

    new-instance v22, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 1197
    .local v22, "dhtCache":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;
    :goto_a
    invoke-virtual/range {v22 .. v23}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->near(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;)V

    .line 1199
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)V

    .line 1201
    move-object/from16 v21, v22

    .line 1203
    goto :goto_9

    .line 1193
    .end local v22    # "dhtCache":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;
    :cond_11
    new-instance v22, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridNoStorageCacheMap;

    invoke-direct {v4, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridNoStorageCacheMap;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)V

    goto :goto_a

    .line 1046
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 1048
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1170
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 1070
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1088
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private createSharedContext(Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .locals 8
    .param p1, "kernalCtx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 1469
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    invoke-direct {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;-><init>()V

    .line 1470
    .local v2, "tm":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    invoke-direct {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;-><init>()V

    .line 1471
    .local v4, "mvccMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    invoke-direct {v3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;-><init>()V

    .line 1472
    .local v3, "verMgr":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;-><init>()V

    .line 1473
    .local v5, "depMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;
    new-instance v6, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-direct {v6}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;-><init>()V

    .line 1474
    .local v6, "exchMgr":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;
    new-instance v7, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    invoke-direct {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;-><init>()V

    .line 1476
    .local v7, "ioMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;)V

    return-object v0
.end method

.method private dhtExcludes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/util/Collection;
    .locals 3
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 437
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->isNearEnabled(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 438
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 440
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/GridCacheManager;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->queries()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->continuousQueries()Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private dhtManagers(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/util/List;
    .locals 3
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/GridCacheManager;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->queries()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->continuousQueries()Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dr()Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private initialize(Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V
    .locals 6
    .param p1, "cfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;
    .param p2, "cacheObjCtx"    # Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const v5, 0x7fffffff

    .line 142
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v3

    if-nez v3, :cond_0

    .line 143
    sget-object v3, Lorg/apache/ignite/configuration/CacheConfiguration;->DFLT_CACHE_MODE:Lorg/apache/ignite/cache/CacheMode;

    invoke-virtual {p1, v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->setCacheMode(Lorg/apache/ignite/cache/CacheMode;)V

    .line 145
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getMemoryMode()Lorg/apache/ignite/cache/CacheMemoryMode;

    move-result-object v3

    if-nez v3, :cond_1

    .line 146
    sget-object v3, Lorg/apache/ignite/configuration/CacheConfiguration;->DFLT_MEMORY_MODE:Lorg/apache/ignite/cache/CacheMemoryMode;

    invoke-virtual {p1, v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->setMemoryMode(Lorg/apache/ignite/cache/CacheMemoryMode;)V

    .line 148
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getNodeFilter()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v3

    if-nez v3, :cond_2

    .line 149
    sget-object v3, Lorg/apache/ignite/configuration/CacheConfiguration;->SERVER_NODES:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-virtual {p1, v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->setNodeFilter(Lorg/apache/ignite/lang/IgnitePredicate;)V

    .line 151
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinity()Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v3

    if-nez v3, :cond_b

    .line 152
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/cache/CacheMode;->PARTITIONED:Lorg/apache/ignite/cache/CacheMode;

    if-ne v3, v4, :cond_9

    .line 153
    new-instance v0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;

    invoke-direct {v0}, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;-><init>()V

    .line 155
    .local v0, "aff":Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;
    new-instance v3, Lorg/apache/ignite/cache/affinity/AffinityNodeAddressHashResolver;

    invoke-direct {v3}, Lorg/apache/ignite/cache/affinity/AffinityNodeAddressHashResolver;-><init>()V

    invoke-virtual {v0, v3}, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->setHashIdResolver(Lorg/apache/ignite/cache/affinity/AffinityNodeHashResolver;)V

    .line 157
    invoke-virtual {p1, v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->setAffinity(Lorg/apache/ignite/cache/affinity/AffinityFunction;)V

    .line 182
    .end local v0    # "aff":Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/cache/CacheMode;->REPLICATED:Lorg/apache/ignite/cache/CacheMode;

    if-ne v3, v4, :cond_4

    .line 183
    invoke-virtual {p1, v5}, Lorg/apache/ignite/configuration/CacheConfiguration;->setBackups(I)V

    .line 185
    :cond_4
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinityMapper()Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    move-result-object v3

    if-nez v3, :cond_5

    .line 186
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->defaultAffMapper()Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->setAffinityMapper(Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;)V

    .line 188
    :cond_5
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->igfsHelper()Lorg/apache/ignite/internal/processors/igfs/IgfsHelper;

    move-result-object v3

    invoke-interface {v3, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsHelper;->preProcessCacheConfiguration(Lorg/apache/ignite/configuration/CacheConfiguration;)V

    .line 190
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceMode()Lorg/apache/ignite/cache/CacheRebalanceMode;

    move-result-object v3

    if-nez v3, :cond_6

    .line 191
    sget-object v3, Lorg/apache/ignite/cache/CacheRebalanceMode;->ASYNC:Lorg/apache/ignite/cache/CacheRebalanceMode;

    invoke-virtual {p1, v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->setRebalanceMode(Lorg/apache/ignite/cache/CacheRebalanceMode;)V

    .line 193
    :cond_6
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicityMode()Lorg/apache/ignite/cache/CacheAtomicityMode;

    move-result-object v3

    if-nez v3, :cond_7

    .line 194
    sget-object v3, Lorg/apache/ignite/cache/CacheAtomicityMode;->ATOMIC:Lorg/apache/ignite/cache/CacheAtomicityMode;

    invoke-virtual {p1, v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->setAtomicityMode(Lorg/apache/ignite/cache/CacheAtomicityMode;)V

    .line 196
    :cond_7
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteSynchronizationMode()Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    move-result-object v3

    if-nez v3, :cond_8

    .line 197
    sget-object v3, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->PRIMARY_SYNC:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    invoke-virtual {p1, v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->setWriteSynchronizationMode(Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;)V

    .line 199
    :cond_8
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    if-nez v3, :cond_c

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteSynchronizationMode()Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    move-result-object v3

    if-nez v3, :cond_c

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 159
    :cond_9
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/cache/CacheMode;->REPLICATED:Lorg/apache/ignite/cache/CacheMode;

    if-ne v3, v4, :cond_a

    .line 160
    new-instance v0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;

    const/4 v3, 0x0

    const/16 v4, 0x200

    invoke-direct {v0, v3, v4}, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;-><init>(ZI)V

    .line 162
    .restart local v0    # "aff":Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;
    new-instance v3, Lorg/apache/ignite/cache/affinity/AffinityNodeAddressHashResolver;

    invoke-direct {v3}, Lorg/apache/ignite/cache/affinity/AffinityNodeAddressHashResolver;-><init>()V

    invoke-virtual {v0, v3}, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->setHashIdResolver(Lorg/apache/ignite/cache/affinity/AffinityNodeHashResolver;)V

    .line 164
    invoke-virtual {p1, v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->setAffinity(Lorg/apache/ignite/cache/affinity/AffinityFunction;)V

    .line 166
    invoke-virtual {p1, v5}, Lorg/apache/ignite/configuration/CacheConfiguration;->setBackups(I)V

    goto :goto_0

    .line 169
    .end local v0    # "aff":Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;
    :cond_a
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$LocalAffinityFunction;

    invoke-direct {v3, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$LocalAffinityFunction;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$1;)V

    invoke-virtual {p1, v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->setAffinity(Lorg/apache/ignite/cache/affinity/AffinityFunction;)V

    goto :goto_0

    .line 172
    :cond_b
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/cache/CacheMode;->PARTITIONED:Lorg/apache/ignite/cache/CacheMode;

    if-ne v3, v4, :cond_3

    .line 173
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinity()Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v3

    instance-of v3, v3, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;

    if-eqz v3, :cond_3

    .line 174
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinity()Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;

    .line 176
    .restart local v0    # "aff":Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;
    invoke-virtual {v0}, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->getHashIdResolver()Lorg/apache/ignite/cache/affinity/AffinityNodeHashResolver;

    move-result-object v3

    if-nez v3, :cond_3

    .line 177
    new-instance v3, Lorg/apache/ignite/cache/affinity/AffinityNodeAddressHashResolver;

    invoke-direct {v3}, Lorg/apache/ignite/cache/affinity/AffinityNodeAddressHashResolver;-><init>()V

    invoke-virtual {v0, v3}, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->setHashIdResolver(Lorg/apache/ignite/cache/affinity/AffinityNodeHashResolver;)V

    goto/16 :goto_0

    .line 201
    .end local v0    # "aff":Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;
    :cond_c
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicityMode()Lorg/apache/ignite/cache/CacheAtomicityMode;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/cache/CacheAtomicityMode;->ATOMIC:Lorg/apache/ignite/cache/CacheAtomicityMode;

    if-ne v3, v4, :cond_d

    .line 202
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicWriteOrderMode()Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    move-result-object v3

    if-nez v3, :cond_12

    .line 203
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteSynchronizationMode()Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->FULL_SYNC:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    if-ne v3, v4, :cond_11

    sget-object v3, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->CLOCK:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    :goto_1
    invoke-virtual {p1, v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->setAtomicWriteOrderMode(Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;)V

    .line 217
    :cond_d
    :goto_2
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheStoreFactory()Ljavax/cache/configuration/Factory;

    move-result-object v3

    if-nez v3, :cond_13

    .line 218
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheLoaderFactory()Ljavax/cache/configuration/Factory;

    move-result-object v1

    .line 219
    .local v1, "ldrFactory":Ljavax/cache/configuration/Factory;, "Ljavax/cache/configuration/Factory<Ljavax/cache/integration/CacheLoader;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->isWriteThrough()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheWriterFactory()Ljavax/cache/configuration/Factory;

    move-result-object v2

    .line 221
    .local v2, "writerFactory":Ljavax/cache/configuration/Factory;, "Ljavax/cache/configuration/Factory<Ljavax/cache/integration/CacheWriter;>;"
    :cond_e
    if-nez v1, :cond_f

    if-eqz v2, :cond_10

    .line 222
    :cond_f
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStoreFactory;

    invoke-direct {v3, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStoreFactory;-><init>(Ljavax/cache/configuration/Factory;Ljavax/cache/configuration/Factory;)V

    invoke-virtual {p1, v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->setCacheStoreFactory(Ljavax/cache/configuration/Factory;)V

    .line 233
    .end local v1    # "ldrFactory":Ljavax/cache/configuration/Factory;, "Ljavax/cache/configuration/Factory<Ljavax/cache/integration/CacheLoader;>;"
    .end local v2    # "writerFactory":Ljavax/cache/configuration/Factory;, "Ljavax/cache/configuration/Factory<Ljavax/cache/integration/CacheWriter;>;"
    :cond_10
    return-void

    .line 203
    :cond_11
    sget-object v3, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->PRIMARY:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    goto :goto_1

    .line 207
    :cond_12
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteSynchronizationMode()Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->FULL_SYNC:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    if-eq v3, v4, :cond_d

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicWriteOrderMode()Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->CLOCK:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    if-ne v3, v4, :cond_d

    .line 209
    sget-object v3, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->PRIMARY:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    invoke-virtual {p1, v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->setAtomicWriteOrderMode(Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;)V

    .line 211
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Automatically set write order mode to PRIMARY for better performance [writeSynchronizationMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteSynchronizationMode()Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "cacheName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_2

    .line 225
    :cond_13
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheLoaderFactory()Ljavax/cache/configuration/Factory;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 226
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot set both cache loaded factory and cache store factory for cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 229
    :cond_14
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheWriterFactory()Ljavax/cache/configuration/Factory;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 230
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot set both cache writer factory and cache store factory for cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private varargs lifecycleAwares(Lorg/apache/ignite/configuration/CacheConfiguration;[Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 3
    .param p1, "ccfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;
    .param p2, "objs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/configuration/CacheConfiguration;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2491
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p2

    add-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2493
    .local v1, "ret":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinity()Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2494
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinityMapper()Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2495
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictionFilter()Lorg/apache/ignite/cache/eviction/EvictionFilter;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2496
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictionPolicy()Lorg/apache/ignite/cache/eviction/EvictionPolicy;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2497
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2499
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getNearConfiguration()Lorg/apache/ignite/configuration/NearCacheConfiguration;

    move-result-object v0

    .line 2501
    .local v0, "nearCfg":Lorg/apache/ignite/configuration/NearCacheConfiguration;
    if-eqz v0, :cond_0

    .line 2502
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/NearCacheConfiguration;->getNearEvictionPolicy()Lorg/apache/ignite/cache/eviction/EvictionPolicy;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2504
    :cond_0
    invoke-static {v1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2506
    return-object v1
.end method

.method private static maskNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2530
    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->NULL_NAME:Ljava/lang/String;

    .end local p0    # "name":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private onCacheChangeRequested(Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;)V
    .locals 14
    .param p1, "batch"    # Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;

    .prologue
    .line 1749
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;->requests()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;

    .line 1750
    .local v5, "req":Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->registeredCaches:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->cacheName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;

    .line 1752
    .local v2, "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->start()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1753
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->startCacheConfiguration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    .line 1755
    .local v0, "ccfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->pendingFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;

    .line 1759
    .local v7, "startFut":Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;
    if-eqz v2, :cond_3

    .line 1760
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->clientStartOnly()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->failIfExists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1762
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;->deploymentId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v8

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->deploymentId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1763
    new-instance v8, Lorg/apache/ignite/cache/CacheExistsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to start cache (a cache with the same name is already started): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/ignite/cache/CacheExistsException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 1818
    .end local v0    # "ccfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    .end local v2    # "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    .end local v5    # "req":Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;
    .end local v7    # "startFut":Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;
    :cond_0
    :goto_1
    return-void

    .line 1770
    .restart local v0    # "ccfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    .restart local v2    # "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    .restart local v5    # "req":Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;
    .restart local v7    # "startFut":Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;
    :cond_1
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->clientStartOnly(Z)V

    .line 1783
    :cond_2
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->clientStartOnly()Z

    move-result v8

    if-nez v8, :cond_5

    if-nez v2, :cond_5

    .line 1784
    new-instance v6, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->deploymentId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v8

    invoke-direct {v6, v0, v8}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;-><init>(Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 1786
    .local v6, "startDesc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->registeredCaches:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v6}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;

    .line 1789
    .local v4, "old":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    sget-boolean v8, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    if-nez v8, :cond_4

    if-eqz v4, :cond_4

    new-instance v8, Ljava/lang/AssertionError;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dynamic cache map was concurrently modified [new="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", old="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 1773
    .end local v4    # "old":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    .end local v6    # "startDesc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    :cond_3
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->clientStartOnly()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1774
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;->deploymentId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v8

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->deploymentId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1775
    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to start client cache (a cache with the given name is not started): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;->onDone(Ljava/lang/Throwable;)Z

    goto/16 :goto_1

    .line 1791
    .restart local v4    # "old":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    .restart local v6    # "startDesc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    :cond_4
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v10

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getNodeFilter()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v12

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getNearConfiguration()Lorg/apache/ignite/configuration/NearCacheConfiguration;

    move-result-object v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v9

    sget-object v13, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    if-ne v9, v13, :cond_7

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v10, v11, v12, v8, v9}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->setCacheFilter(Ljava/lang/String;Lorg/apache/ignite/lang/IgnitePredicate;ZZ)V

    .line 1798
    .end local v4    # "old":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    .end local v6    # "startDesc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    :cond_5
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v9

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->cacheName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->initiatingNodeId()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->nearCacheConfiguration()Lorg/apache/ignite/configuration/NearCacheConfiguration;

    move-result-object v8

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    :goto_4
    invoke-virtual {v9, v10, v11, v8}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->addClientNode(Ljava/lang/String;Ljava/util/UUID;Z)V

    goto/16 :goto_0

    .line 1791
    .restart local v4    # "old":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    .restart local v6    # "startDesc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    .line 1798
    .end local v4    # "old":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    .end local v6    # "startDesc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    :cond_8
    const/4 v8, 0x0

    goto :goto_4

    .line 1801
    .end local v0    # "ccfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    .end local v7    # "startFut":Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;
    :cond_9
    if-nez v2, :cond_a

    .line 1803
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->pendingFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->cacheName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;

    .line 1805
    .local v1, "changeFut":Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;->deploymentId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v8

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->deploymentId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1807
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;->onDone()Z

    goto/16 :goto_1

    .line 1813
    .end local v1    # "changeFut":Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;
    :cond_a
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->onCancelled()V

    .line 1815
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v8

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->cacheName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->removeCacheFilter(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onKernalStart(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p1, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<**>;"
    const/16 v9, 0x62

    .line 903
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 906
    .local v0, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->isNearEnabled(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 907
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v1

    .line 909
    .local v1, "dht":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    .line 911
    .local v2, "dhtCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->dhtManagers(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/GridCacheManager;

    .line 912
    .local v4, "mgr":Lorg/apache/ignite/internal/processors/cache/GridCacheManager;
    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheManager;->onKernalStart()V

    goto :goto_0

    .line 914
    .end local v4    # "mgr":Lorg/apache/ignite/internal/processors/cache/GridCacheManager;
    :cond_0
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->onKernalStart()V

    .line 916
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 917
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Executed onKernalStart() callback for DHT cache: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 920
    .end local v1    # "dht":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    .end local v2    # "dhtCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->managers()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v7, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->dhtExcludes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/util/Collection;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/ignite/internal/util/F0;->notContains(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/GridCacheManager;

    .line 921
    .restart local v4    # "mgr":Lorg/apache/ignite/internal/processors/cache/GridCacheManager;
    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheManager;->onKernalStart()V

    goto :goto_1

    .line 923
    .end local v4    # "mgr":Lorg/apache/ignite/internal/processors/cache/GridCacheManager;
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->onKernalStart()V

    .line 925
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 926
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(I)V

    .line 928
    :cond_3
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 929
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Executed onKernalStart() callback for cache [name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 931
    :cond_4
    return-void
.end method

.method private onKernalStop(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Z)V
    .locals 10
    .param p2, "cancel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
            "<**>;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<**>;"
    const/16 v9, 0x63

    .line 939
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 941
    .local v0, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->isNearEnabled(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 942
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v1

    .line 944
    .local v1, "dht":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    if-eqz v1, :cond_1

    .line 945
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    .line 947
    .local v2, "dhtCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->dhtManagers(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/GridCacheManager;

    .line 948
    .local v6, "mgr":Lorg/apache/ignite/internal/processors/cache/GridCacheManager;
    invoke-interface {v6, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheManager;->onKernalStop(Z)V

    goto :goto_0

    .line 950
    .end local v6    # "mgr":Lorg/apache/ignite/internal/processors/cache/GridCacheManager;
    :cond_0
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->onKernalStop()V

    .line 954
    .end local v1    # "dht":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    .end local v2    # "dhtCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->managers()Ljava/util/List;

    move-result-object v7

    .line 956
    .local v7, "mgrs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheManager;>;"
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->dhtExcludes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/util/Collection;

    move-result-object v3

    .line 959
    .local v3, "excludes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheManager;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    .local v5, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/processors/cache/GridCacheManager;>;"
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 960
    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/GridCacheManager;

    .line 962
    .restart local v6    # "mgr":Lorg/apache/ignite/internal/processors/cache/GridCacheManager;
    invoke-interface {v3, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 963
    invoke-interface {v6, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheManager;->onKernalStop(Z)V

    goto :goto_1

    .line 966
    .end local v6    # "mgr":Lorg/apache/ignite/internal/processors/cache/GridCacheManager;
    :cond_3
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->onKernalStop()V

    .line 968
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v8

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 969
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v8

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(I)V

    .line 970
    :cond_4
    return-void
.end method

.method private prepare(Lorg/apache/ignite/configuration/CacheConfiguration;Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "cfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;
    .param p2, "rsrc"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "near"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 471
    if-eqz p2, :cond_0

    .line 472
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->injectGeneric(Ljava/lang/Object;)V

    .line 474
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->injectCacheName(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->registerMbean(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 478
    :cond_0
    return-void
.end method

.method private prepare(Lorg/apache/ignite/configuration/CacheConfiguration;Ljava/util/Collection;)V
    .locals 6
    .param p1, "cfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/configuration/CacheConfiguration;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p2, "objs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 449
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictionPolicy()Lorg/apache/ignite/cache/eviction/EvictionPolicy;

    move-result-object v3

    invoke-direct {p0, p1, v3, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->prepare(Lorg/apache/ignite/configuration/CacheConfiguration;Ljava/lang/Object;Z)V

    .line 450
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinity()Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v3

    invoke-direct {p0, p1, v3, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->prepare(Lorg/apache/ignite/configuration/CacheConfiguration;Ljava/lang/Object;Z)V

    .line 451
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinityMapper()Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    move-result-object v3

    invoke-direct {p0, p1, v3, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->prepare(Lorg/apache/ignite/configuration/CacheConfiguration;Ljava/lang/Object;Z)V

    .line 452
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictionFilter()Lorg/apache/ignite/cache/eviction/EvictionFilter;

    move-result-object v3

    invoke-direct {p0, p1, v3, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->prepare(Lorg/apache/ignite/configuration/CacheConfiguration;Ljava/lang/Object;Z)V

    .line 453
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v3

    invoke-direct {p0, p1, v3, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->prepare(Lorg/apache/ignite/configuration/CacheConfiguration;Ljava/lang/Object;Z)V

    .line 455
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getNearConfiguration()Lorg/apache/ignite/configuration/NearCacheConfiguration;

    move-result-object v1

    .line 457
    .local v1, "nearCfg":Lorg/apache/ignite/configuration/NearCacheConfiguration;
    if-eqz v1, :cond_0

    .line 458
    invoke-virtual {v1}, Lorg/apache/ignite/configuration/NearCacheConfiguration;->getNearEvictionPolicy()Lorg/apache/ignite/cache/eviction/EvictionPolicy;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, p1, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->prepare(Lorg/apache/ignite/configuration/CacheConfiguration;Ljava/lang/Object;Z)V

    .line 460
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 461
    .local v2, "obj":Ljava/lang/Object;
    invoke-direct {p0, p1, v2, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->prepare(Lorg/apache/ignite/configuration/CacheConfiguration;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 462
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private prepareCacheStart(Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/configuration/NearCacheConfiguration;ZLjava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 11
    .param p1, "cfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;
    .param p2, "nearCfg"    # Lorg/apache/ignite/configuration/NearCacheConfiguration;
    .param p3, "clientStartOnly"    # Z
    .param p4, "initiatingNodeId"    # Ljava/util/UUID;
    .param p5, "deploymentId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p6, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1321
    new-instance v4, Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-direct {v4, p1}, Lorg/apache/ignite/configuration/CacheConfiguration;-><init>(Ljavax/cache/configuration/CompleteConfiguration;)V

    .line 1323
    .local v4, "ccfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getNodeFilter()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v7

    .line 1325
    .local v7, "nodeFilter":Lorg/apache/ignite/lang/IgnitePredicate;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    .line 1327
    .local v6, "locNode":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez p3, :cond_1

    invoke-interface {v7, v6}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v1, 0x1

    .line 1328
    .local v1, "affNodeStart":Z
    :goto_0
    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1330
    .local v5, "clientNodeStart":Z
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sharedCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->cacheId(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1354
    :cond_0
    :goto_1
    return-void

    .line 1327
    .end local v1    # "affNodeStart":Z
    .end local v5    # "clientNodeStart":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1333
    .restart local v1    # "affNodeStart":Z
    .restart local v5    # "clientNodeStart":Z
    :cond_2
    if-nez v1, :cond_3

    if-eqz v5, :cond_0

    .line 1334
    :cond_3
    if-eqz v5, :cond_4

    if-nez v1, :cond_4

    .line 1335
    if-eqz p2, :cond_4

    .line 1336
    invoke-virtual {v4, p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->setNearConfiguration(Lorg/apache/ignite/configuration/NearCacheConfiguration;)V

    .line 1339
    :cond_4
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10, v4}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->contextForCache(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v3

    .line 1341
    .local v3, "cacheObjCtx":Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    invoke-direct {p0, v4, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->createCache(Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    .line 1343
    .local v2, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->startTopologyVersion(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 1345
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dynamicDeploymentId(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 1347
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sharedCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v8, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->addCacheContext(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 1349
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->caches:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->startCache(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)V

    .line 1352
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->onKernalStart(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)V

    goto :goto_1
.end method

.method private queryManager(Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
    .locals 2
    .param p1, "cfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;

    .prologue
    .line 2119
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;-><init>()V

    goto :goto_0
.end method

.method private registerMbean(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "near"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2428
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2430
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v0

    .line 2432
    .local v0, "srvr":Ljavax/management/MBeanServer;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2434
    :cond_1
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->maskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2436
    if-eqz p3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-near"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2438
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v6

    .local v6, "arr$":[Ljava/lang/Class;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_3

    aget-object v5, v6, v8

    .line 2439
    .local v5, "itf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MBean"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2441
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, p2

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->registerCacheMBean(Ljavax/management/MBeanServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljavax/management/ObjectName;
    :try_end_0
    .catch Ljavax/management/JMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2451
    .end local v5    # "itf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    return-void

    .line 2444
    .restart local v5    # "itf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v7

    .line 2445
    .local v7, "e":Ljavax/management/JMException;
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register MBean for component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2438
    .end local v7    # "e":Ljavax/management/JMException;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private startCache(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 805
    .local p1, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<**>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 807
    .local v0, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->query()Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->onCacheStart(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 808
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->continuous()Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->onCacheStart(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 810
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v1

    .line 813
    .local v1, "cfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->managers()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v7, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->dhtExcludes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/util/Collection;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/ignite/internal/util/typedef/F;->notContains(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/GridCacheManager;

    .line 814
    .local v4, "mgr":Lorg/apache/ignite/internal/processors/cache/GridCacheManager;
    invoke-interface {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheManager;->start(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    goto :goto_0

    .line 816
    .end local v4    # "mgr":Lorg/apache/ignite/internal/processors/cache/GridCacheManager;
    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->initConflictResolver()V

    .line 818
    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    if-eq v5, v6, :cond_2

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->isNearEnabled(Lorg/apache/ignite/configuration/CacheConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 819
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    .line 822
    .local v2, "dhtCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->dhtManagers(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/GridCacheManager;

    .line 823
    .restart local v4    # "mgr":Lorg/apache/ignite/internal/processors/cache/GridCacheManager;
    invoke-interface {v4, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheManager;->start(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    goto :goto_1

    .line 825
    .end local v4    # "mgr":Lorg/apache/ignite/internal/processors/cache/GridCacheManager;
    :cond_1
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->initConflictResolver()V

    .line 828
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->start()V

    .line 830
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 831
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Started DHT cache: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 834
    .end local v2    # "dhtCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    :cond_2
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->start()V

    .line 836
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->onStarted()V

    .line 838
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 839
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Started cache [name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    .line 840
    :cond_3
    return-void
.end method

.method private stopCache(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Z)V
    .locals 13
    .param p2, "cancel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
            "<**>;Z)V"
        }
    .end annotation

    .prologue
    .line 848
    .local p1, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<**>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 850
    .local v0, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sharedCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v8, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->removeCacheContext(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 852
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->stop()V

    .line 854
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->isNearEnabled(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 855
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v1

    .line 858
    .local v1, "dht":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    if-eqz v1, :cond_0

    .line 859
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->stop()V

    .line 861
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    .line 863
    .local v2, "dhtCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->dhtManagers(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/util/List;

    move-result-object v3

    .line 865
    .local v3, "dhtMgrs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheManager;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v3, v8}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    .local v5, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/processors/cache/GridCacheManager;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 866
    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/GridCacheManager;

    .line 868
    .local v6, "mgr":Lorg/apache/ignite/internal/processors/cache/GridCacheManager;
    invoke-interface {v6, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheManager;->stop(Z)V

    goto :goto_0

    .line 873
    .end local v1    # "dht":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    .end local v2    # "dhtCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    .end local v3    # "dhtMgrs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheManager;>;"
    .end local v5    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/processors/cache/GridCacheManager;>;"
    .end local v6    # "mgr":Lorg/apache/ignite/internal/processors/cache/GridCacheManager;
    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->managers()Ljava/util/List;

    move-result-object v7

    .line 875
    .local v7, "mgrs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheManager;>;"
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->dhtExcludes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/util/Collection;

    move-result-object v4

    .line 878
    .local v4, "excludes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheManager;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    .restart local v5    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/processors/cache/GridCacheManager;>;"
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 879
    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/GridCacheManager;

    .line 881
    .restart local v6    # "mgr":Lorg/apache/ignite/internal/processors/cache/GridCacheManager;
    invoke-interface {v4, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 882
    invoke-interface {v6, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheManager;->stop(Z)V

    goto :goto_1

    .line 885
    .end local v6    # "mgr":Lorg/apache/ignite/internal/processors/cache/GridCacheManager;
    :cond_2
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->query()Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    move-result-object v8

    invoke-virtual {v8, v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->onCacheStop(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 886
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->continuous()Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-result-object v8

    invoke-virtual {v8, v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->onCacheStop(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 888
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->jta()Lorg/apache/ignite/internal/processors/cache/jta/CacheJtaManagerAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/jta/CacheJtaManagerAdapter;->tmLookup()Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->configuredStore()Lorg/apache/ignite/cache/store/CacheStore;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-direct {p0, v9, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->lifecycleAwares(Lorg/apache/ignite/configuration/CacheConfiguration;[Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->stopLifecycleAware(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Iterable;)V

    .line 891
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 892
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Stopped cache: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    .line 894
    :cond_3
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->cleanup(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 895
    return-void
.end method

.method private stopGateway(Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;)V
    .locals 3
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;

    .prologue
    .line 1373
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->stop()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1376
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->jCacheProxies:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->cacheName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    .line 1378
    .local v0, "proxy":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<**>;"
    if-eqz v0, :cond_1

    .line 1379
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->onStopped()V

    .line 1380
    :cond_1
    return-void
.end method

.method private suggestOptimizations(Lorg/apache/ignite/configuration/CacheConfiguration;Z)V
    .locals 7
    .param p1, "cfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;
    .param p2, "hasStore"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 240
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->performance()Lorg/apache/ignite/internal/GridPerformanceSuggestions;

    move-result-object v1

    .line 242
    .local v1, "perf":Lorg/apache/ignite/internal/GridPerformanceSuggestions;
    const-string v0, "Disable eviction policy (remove from configuration)"

    .line 244
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictionPolicy()Lorg/apache/ignite/cache/eviction/EvictionPolicy;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 245
    invoke-virtual {v1, v0, v4}, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->add(Ljava/lang/String;Z)V

    .line 247
    const-string v5, "Disable synchronized evictions (set \'evictSynchronized\' to false)"

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->isEvictSynchronized()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v1, v5, v2}, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->add(Ljava/lang/String;Z)V

    .line 252
    :goto_1
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v2

    sget-object v5, Lorg/apache/ignite/cache/CacheMode;->PARTITIONED:Lorg/apache/ignite/cache/CacheMode;

    if-ne v2, v5, :cond_0

    .line 253
    const-string v5, "Disable near cache (set \'nearConfiguration\' to null)"

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getNearConfiguration()Lorg/apache/ignite/configuration/NearCacheConfiguration;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v1, v5, v2}, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->add(Ljava/lang/String;Z)V

    .line 255
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinity()Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 256
    const-string v5, "Decrease number of backups (set \'keyBackups\' to 0)"

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getBackups()I

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_3
    invoke-virtual {v1, v5, v2}, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->add(Ljava/lang/String;Z)V

    .line 260
    :cond_0
    const-string v5, "Enable ATOMIC mode if not using transactions (set \'atomicityMode\' to ATOMIC)"

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicityMode()Lorg/apache/ignite/cache/CacheAtomicityMode;

    move-result-object v2

    sget-object v6, Lorg/apache/ignite/cache/CacheAtomicityMode;->ATOMIC:Lorg/apache/ignite/cache/CacheAtomicityMode;

    if-ne v2, v6, :cond_6

    move v2, v3

    :goto_4
    invoke-virtual {v1, v5, v2}, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->add(Ljava/lang/String;Z)V

    .line 264
    const-string v5, "Disable fully synchronous writes (set \'writeSynchronizationMode\' to PRIMARY_SYNC or FULL_ASYNC)"

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteSynchronizationMode()Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    move-result-object v2

    sget-object v6, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->FULL_SYNC:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    if-eq v2, v6, :cond_7

    move v2, v3

    :goto_5
    invoke-virtual {v1, v5, v2}, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->add(Ljava/lang/String;Z)V

    .line 268
    const-string v2, "Disable swap store (set \'swapEnabled\' to false)"

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->isSwapEnabled()Z

    move-result v5

    if-nez v5, :cond_8

    :goto_6
    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->add(Ljava/lang/String;Z)V

    .line 270
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->isWriteThrough()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    const-string v2, "Enable write-behind to persistent store (set \'writeBehindEnabled\' to true)"

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->isWriteBehindEnabled()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->add(Ljava/lang/String;Z)V

    .line 273
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 247
    goto :goto_0

    .line 250
    :cond_3
    invoke-virtual {v1, v0, v3}, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->add(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    move v2, v4

    .line 253
    goto :goto_2

    :cond_5
    move v2, v4

    .line 256
    goto :goto_3

    :cond_6
    move v2, v4

    .line 260
    goto :goto_4

    :cond_7
    move v2, v4

    .line 264
    goto :goto_5

    :cond_8
    move v3, v4

    .line 268
    goto :goto_6
.end method

.method private static unmaskNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2540
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->NULL_NAME:Ljava/lang/String;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    .end local p0    # "name":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private unregisterMbean(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "near"    # Z

    .prologue
    .line 2461
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 2463
    :cond_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v5

    .line 2465
    .local v5, "srvr":Ljavax/management/MBeanServer;
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    if-nez v5, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 2467
    :cond_1
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->maskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2469
    if-eqz p3, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-near"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2471
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v3, v0, v2

    .line 2472
    .local v3, "itf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MBean"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2474
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, p2, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->makeCacheMBeanName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/management/ObjectName;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavax/management/MBeanServer;->unregisterMBean(Ljavax/management/ObjectName;)V
    :try_end_0
    .catch Ljavax/management/JMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2483
    .end local v3    # "itf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :goto_1
    return-void

    .line 2476
    .restart local v3    # "itf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 2477
    .local v1, "e":Ljavax/management/JMException;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to unregister MBean for component: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2471
    .end local v1    # "e":Ljavax/management/JMException;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private validate(Lorg/apache/ignite/configuration/IgniteConfiguration;Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/cache/store/CacheStore;)V
    .locals 12
    .param p1, "c"    # Lorg/apache/ignite/configuration/IgniteConfiguration;
    .param p2, "cc"    # Lorg/apache/ignite/configuration/CacheConfiguration;
    .param p3, "cfgStore"    # Lorg/apache/ignite/cache/store/CacheStore;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5d

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v10, 0x0

    .line 284
    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v4

    sget-object v7, Lorg/apache/ignite/cache/CacheMode;->REPLICATED:Lorg/apache/ignite/cache/CacheMode;

    if-ne v4, v7, :cond_2

    .line 285
    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinity()Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v4

    instance-of v4, v4, Lorg/apache/ignite/cache/affinity/fair/FairAffinityFunction;

    if-eqz v4, :cond_0

    .line 286
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "REPLICATED cache can not be started with FairAffinityFunction [cacheName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 289
    :cond_0
    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinity()Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v4

    instance-of v4, v4, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;

    if-eqz v4, :cond_1

    .line 290
    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinity()Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;

    .line 292
    .local v0, "aff":Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;
    invoke-virtual {v0}, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->isExcludeNeighbors()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 293
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "For REPLICATED cache flag \'excludeNeighbors\' in RendezvousAffinityFunction cannot be set [cacheName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 297
    .end local v0    # "aff":Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;
    :cond_1
    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getNearConfiguration()Lorg/apache/ignite/configuration/NearCacheConfiguration;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v4

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cacheAffinityNode(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 299
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Near cache cannot be used with REPLICATED cache, will be ignored [cacheName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 302
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->setNearConfiguration(Lorg/apache/ignite/configuration/NearCacheConfiguration;)V

    .line 306
    :cond_2
    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v4

    sget-object v7, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    if-ne v4, v7, :cond_3

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinity()Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v7, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$LocalAffinityFunction;

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 307
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AffinityFunction configuration parameter will be ignored for local cache [cacheName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 310
    :cond_3
    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceMode()Lorg/apache/ignite/cache/CacheRebalanceMode;

    move-result-object v4

    sget-object v7, Lorg/apache/ignite/cache/CacheRebalanceMode;->NONE:Lorg/apache/ignite/cache/CacheRebalanceMode;

    if-eq v4, v7, :cond_4

    .line 311
    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceThreadPoolSize()I

    move-result v4

    if-lez v4, :cond_8

    move v4, v5

    :goto_0
    const-string v7, "rebalanceThreadPoolSize > 0"

    invoke-virtual {p0, v4, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->assertParameter(ZLjava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceBatchSize()I

    move-result v4

    if-lez v4, :cond_9

    move v4, v5

    :goto_1
    const-string v7, "rebalanceBatchSize > 0"

    invoke-virtual {p0, v4, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->assertParameter(ZLjava/lang/String;)V

    .line 315
    :cond_4
    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v4

    sget-object v7, Lorg/apache/ignite/cache/CacheMode;->PARTITIONED:Lorg/apache/ignite/cache/CacheMode;

    if-eq v4, v7, :cond_5

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v4

    sget-object v7, Lorg/apache/ignite/cache/CacheMode;->REPLICATED:Lorg/apache/ignite/cache/CacheMode;

    if-ne v4, v7, :cond_6

    .line 316
    :cond_5
    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicityMode()Lorg/apache/ignite/cache/CacheAtomicityMode;

    move-result-object v4

    sget-object v7, Lorg/apache/ignite/cache/CacheAtomicityMode;->ATOMIC:Lorg/apache/ignite/cache/CacheAtomicityMode;

    if-ne v4, v7, :cond_6

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteSynchronizationMode()Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    move-result-object v4

    sget-object v7, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->FULL_ASYNC:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    if-ne v4, v7, :cond_6

    .line 317
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cache write synchronization mode is set to FULL_ASYNC. All single-key \'put\' and \'remove\' operations will return \'null\', all \'putx\' and \'removex\' operations will return \'true\' [cacheName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 322
    :cond_6
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v1

    .line 324
    .local v1, "depMode":Lorg/apache/ignite/configuration/DeploymentMode;
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Lorg/apache/ignite/configuration/DeploymentMode;->PRIVATE:Lorg/apache/ignite/configuration/DeploymentMode;

    if-eq v1, v4, :cond_7

    sget-object v4, Lorg/apache/ignite/configuration/DeploymentMode;->ISOLATED:Lorg/apache/ignite/configuration/DeploymentMode;

    if-ne v1, v4, :cond_a

    :cond_7
    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->isSystemCache(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 326
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot start cache in PRIVATE or ISOLATED deployment mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v1    # "depMode":Lorg/apache/ignite/configuration/DeploymentMode;
    :cond_8
    move v4, v6

    .line 311
    goto/16 :goto_0

    :cond_9
    move v4, v6

    .line 312
    goto/16 :goto_1

    .line 329
    .restart local v1    # "depMode":Lorg/apache/ignite/configuration/DeploymentMode;
    :cond_a
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getTransactionConfiguration()Lorg/apache/ignite/configuration/TransactionConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/TransactionConfiguration;->isTxSerializableEnabled()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getTransactionConfiguration()Lorg/apache/ignite/configuration/TransactionConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/TransactionConfiguration;->getDefaultTxIsolation()Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v4

    sget-object v7, Lorg/apache/ignite/transactions/TransactionIsolation;->SERIALIZABLE:Lorg/apache/ignite/transactions/TransactionIsolation;

    if-ne v4, v7, :cond_b

    .line 331
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Serializable transactions are disabled while default transaction isolation is SERIALIZABLE (most likely misconfiguration - either update \'isTxSerializableEnabled\' or \'defaultTxIsolationLevel\' properties) for cache: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Serializable transactions are disabled while default transaction isolation is SERIALIZABLE for cache: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 338
    :cond_b
    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->isWriteBehindEnabled()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 339
    if-nez p3, :cond_c

    .line 340
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot enable write-behind (writer or store is not provided) for cache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 343
    :cond_c
    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteBehindBatchSize()I

    move-result v4

    if-lez v4, :cond_d

    move v4, v5

    :goto_2
    const-string v7, "writeBehindBatchSize > 0"

    invoke-virtual {p0, v4, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->assertParameter(ZLjava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteBehindFlushSize()I

    move-result v4

    if-ltz v4, :cond_e

    move v4, v5

    :goto_3
    const-string v7, "writeBehindFlushSize >= 0"

    invoke-virtual {p0, v4, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->assertParameter(ZLjava/lang/String;)V

    .line 345
    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteBehindFlushFrequency()J

    move-result-wide v8

    cmp-long v4, v8, v10

    if-ltz v4, :cond_f

    move v4, v5

    :goto_4
    const-string v7, "writeBehindFlushFrequency >= 0"

    invoke-virtual {p0, v4, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->assertParameter(ZLjava/lang/String;)V

    .line 346
    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteBehindFlushThreadCount()I

    move-result v4

    if-lez v4, :cond_10

    move v4, v5

    :goto_5
    const-string v7, "writeBehindFlushThreadCount > 0"

    invoke-virtual {p0, v4, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->assertParameter(ZLjava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteBehindFlushSize()I

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteBehindFlushFrequency()J

    move-result-wide v8

    cmp-long v4, v8, v10

    if-nez v4, :cond_11

    .line 349
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot set both \'writeBehindFlushFrequency\' and \'writeBehindFlushSize\' parameters to 0 for cache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_d
    move v4, v6

    .line 343
    goto :goto_2

    :cond_e
    move v4, v6

    .line 344
    goto :goto_3

    :cond_f
    move v4, v6

    .line 345
    goto :goto_4

    :cond_10
    move v4, v6

    .line 346
    goto :goto_5

    .line 353
    :cond_11
    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->isReadThrough()Z

    move-result v4

    if-eqz v4, :cond_12

    if-nez p3, :cond_12

    .line 354
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot enable read-through (loader or store is not provided) for cache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 357
    :cond_12
    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->isWriteThrough()Z

    move-result v4

    if-eqz v4, :cond_13

    if-nez p3, :cond_13

    .line 358
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot enable write-through (writer or store is not provided) for cache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 361
    :cond_13
    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceDelay()J

    move-result-wide v2

    .line 363
    .local v2, "delay":J
    cmp-long v4, v2, v10

    if-eqz v4, :cond_14

    .line 364
    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v4

    sget-object v7, Lorg/apache/ignite/cache/CacheMode;->PARTITIONED:Lorg/apache/ignite/cache/CacheMode;

    if-eq v4, v7, :cond_15

    .line 365
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rebalance delay is supported only for partitioned caches (will ignore): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Will ignore rebalance delay for cache: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 382
    :cond_14
    :goto_6
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->igfsHelper()Lorg/apache/ignite/internal/processors/igfs/IgfsHelper;

    move-result-object v4

    invoke-interface {v4, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsHelper;->validateCacheConfiguration(Lorg/apache/ignite/configuration/CacheConfiguration;)V

    .line 384
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$5;->$SwitchMap$org$apache$ignite$cache$CacheMemoryMode:[I

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getMemoryMode()Lorg/apache/ignite/cache/CacheMemoryMode;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/cache/CacheMemoryMode;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_0

    .line 407
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown memory mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getMemoryMode()Lorg/apache/ignite/cache/CacheMemoryMode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 367
    :cond_15
    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceMode()Lorg/apache/ignite/cache/CacheRebalanceMode;

    move-result-object v4

    sget-object v7, Lorg/apache/ignite/cache/CacheRebalanceMode;->SYNC:Lorg/apache/ignite/cache/CacheRebalanceMode;

    if-ne v4, v7, :cond_14

    .line 368
    cmp-long v4, v2, v10

    if-gez v4, :cond_16

    .line 369
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring SYNC rebalance mode with manual rebalance start (node will not wait for rebalancing to be finished): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Node will not wait for rebalance in SYNC mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 374
    :cond_16
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Using SYNC rebalance mode with rebalance delay (node will wait until rebalancing is initiated for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms) for cache: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Node will wait until rebalancing is initiated for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms for cache: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 386
    :pswitch_0
    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getOffHeapMaxMemory()J

    move-result-wide v8

    cmp-long v4, v8, v10

    if-gez v4, :cond_17

    .line 387
    invoke-virtual {p2, v10, v11}, Lorg/apache/ignite/configuration/CacheConfiguration;->setOffHeapMaxMemory(J)V

    .line 410
    :cond_17
    :goto_7
    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getMemoryMode()Lorg/apache/ignite/cache/CacheMemoryMode;

    move-result-object v4

    sget-object v7, Lorg/apache/ignite/cache/CacheMemoryMode;->OFFHEAP_VALUES:Lorg/apache/ignite/cache/CacheMemoryMode;

    if-ne v4, v7, :cond_18

    .line 411
    invoke-static {p2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->isEnabled(Lorg/apache/ignite/configuration/CacheConfiguration;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 412
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot have query indexing enabled while values are stored off-heap. You must either disable query indexing or disable off-heap values only flag for cache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 393
    :pswitch_1
    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getOffHeapMaxMemory()J

    move-result-wide v8

    cmp-long v4, v8, v10

    if-gez v4, :cond_17

    .line 394
    invoke-virtual {p2, v10, v11}, Lorg/apache/ignite/configuration/CacheConfiguration;->setOffHeapMaxMemory(J)V

    goto :goto_7

    .line 400
    :pswitch_2
    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->systemCache(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictionPolicy()Lorg/apache/ignite/cache/eviction/EvictionPolicy;

    move-result-object v4

    if-nez v4, :cond_17

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getOffHeapMaxMemory()J

    move-result-wide v8

    cmp-long v4, v8, v10

    if-ltz v4, :cond_17

    .line 401
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Eviction policy not enabled with ONHEAP_TIERED mode for cache (entries will not be moved to off-heap store): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quietAndWarn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_7

    .line 417
    :cond_18
    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicityMode()Lorg/apache/ignite/cache/CacheAtomicityMode;

    move-result-object v4

    sget-object v7, Lorg/apache/ignite/cache/CacheAtomicityMode;->ATOMIC:Lorg/apache/ignite/cache/CacheAtomicityMode;

    if-ne v4, v7, :cond_19

    .line 418
    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getTransactionManagerLookupClassName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1a

    :goto_8
    const-string v4, "transaction manager can not be used with ATOMIC cache"

    invoke-virtual {p0, v5, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->assertParameter(ZLjava/lang/String;)V

    .line 420
    :cond_19
    return-void

    :cond_1a
    move v5, v6

    .line 418
    goto :goto_8

    .line 384
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private validateHashIdResolvers(Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;
    .locals 14
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/16 v13, 0x5d

    .line 1863
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->registeredCaches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v11}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;

    .line 1864
    .local v2, "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->cacheConfiguration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v1

    .line 1866
    .local v1, "cfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinity()Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v11

    instance-of v11, v11, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;

    if-eqz v11, :cond_0

    .line 1867
    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinity()Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;

    .line 1869
    .local v0, "aff":Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;
    invoke-virtual {v0}, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->getHashIdResolver()Lorg/apache/ignite/cache/affinity/AffinityNodeHashResolver;

    move-result-object v4

    .line 1871
    .local v4, "hashIdRslvr":Lorg/apache/ignite/cache/affinity/AffinityNodeHashResolver;
    sget-boolean v11, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    if-nez v11, :cond_1

    if-nez v4, :cond_1

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 1873
    :cond_1
    invoke-interface {v4, p1}, Lorg/apache/ignite/cache/affinity/AffinityNodeHashResolver;->resolve(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/Object;

    move-result-object v7

    .line 1875
    .local v7, "nodeHashObj":Ljava/lang/Object;
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v11}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->allNodes()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/cluster/ClusterNode;

    .line 1876
    .local v9, "topNode":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v4, v9}, Lorg/apache/ignite/cache/affinity/AffinityNodeHashResolver;->resolve(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/Object;

    move-result-object v10

    .line 1878
    .local v10, "topNodeHashObj":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v12

    if-ne v11, v12, :cond_2

    .line 1879
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to add node to topology because it has the same hash code for partitioned affinity as one of existing nodes [cacheName="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", hashIdResolverClass="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", existingNodeId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1884
    .local v3, "errMsg":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to add node to topology because it has the same hash code for partitioned affinity as one of existing nodes [cacheName="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", hashIdResolverClass="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", existingNodeId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1889
    .local v8, "sndMsg":Ljava/lang/String;
    new-instance v11, Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;

    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v12

    invoke-direct {v11, v12, v3, v8}, Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    .end local v0    # "aff":Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;
    .end local v1    # "cfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    .end local v2    # "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    .end local v3    # "errMsg":Ljava/lang/String;
    .end local v4    # "hashIdRslvr":Lorg/apache/ignite/cache/affinity/AffinityNodeHashResolver;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "nodeHashObj":Ljava/lang/Object;
    .end local v8    # "sndMsg":Ljava/lang/String;
    .end local v9    # "topNode":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v10    # "topNodeHashObj":Ljava/lang/Object;
    :goto_0
    return-object v11

    :cond_3
    const/4 v11, 0x0

    goto :goto_0
.end method

.method private validatePreloadOrder([Lorg/apache/ignite/configuration/CacheConfiguration;)I
    .locals 10
    .param p1, "cfgs"    # [Lorg/apache/ignite/configuration/CacheConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5d

    .line 1828
    const/4 v4, 0x0

    .line 1830
    .local v4, "maxOrder":I
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/ignite/configuration/CacheConfiguration;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 1831
    .local v1, "cfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceOrder()I

    move-result v5

    .line 1833
    .local v5, "rebalanceOrder":I
    if-lez v5, :cond_3

    .line 1834
    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v6

    sget-object v7, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    if-ne v6, v7, :cond_0

    .line 1835
    new-instance v6, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rebalance order set for local cache (fix configuration and restart the node): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1838
    :cond_0
    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceMode()Lorg/apache/ignite/cache/CacheRebalanceMode;

    move-result-object v6

    sget-object v7, Lorg/apache/ignite/cache/CacheRebalanceMode;->NONE:Lorg/apache/ignite/cache/CacheRebalanceMode;

    if-ne v6, v7, :cond_1

    .line 1839
    new-instance v6, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Only caches with SYNC or ASYNC rebalance mode can be set as rebalance dependency for other caches [cacheName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", rebalanceMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceMode()Lorg/apache/ignite/cache/CacheRebalanceMode;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", rebalanceOrder="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceOrder()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1843
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1830
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1845
    :cond_3
    if-gez v5, :cond_2

    .line 1846
    new-instance v6, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rebalance order cannot be negative for cache (fix configuration and restart the node) [cacheName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", rebalanceOrder="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1850
    .end local v1    # "cfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    .end local v5    # "rebalanceOrder":I
    :cond_4
    return v4
.end method


# virtual methods
.method public atomicsCache()Lorg/apache/ignite/internal/processors/cache/GridCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/processors/cache/GridCache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2223
    const-string v0, "ignite-atomics-sys-cache"

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->cache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v0

    return-object v0
.end method

.method public blockGateway(Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;)V
    .locals 3
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;

    .prologue
    .line 1360
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->stop()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1363
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->jCacheProxies:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->cacheName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    .line 1365
    .local v0, "proxy":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<**>;"
    if-eqz v0, :cond_1

    .line 1366
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->block()V

    .line 1367
    :cond_1
    return-void
.end method

.method public blockGateways()V
    .locals 3

    .prologue
    .line 767
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->jCacheProxies:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    .line 768
    .local v1, "proxy":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<**>;"
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->onStopped()V

    goto :goto_0

    .line 769
    .end local v1    # "proxy":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<**>;"
    :cond_0
    return-void
.end method

.method public cache()Lorg/apache/ignite/internal/processors/cache/GridCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/processors/cache/GridCache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->cache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v0

    return-object v0
.end method

.method public cache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/GridCache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2162
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2163
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Getting cache for name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2165
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->jCacheProxies:Ljava/util/Map;

    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    .line 2167
    .local v0, "jcache":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->legacyProxy()Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;

    move-result-object v1

    goto :goto_0
.end method

.method public cacheMode(Ljava/lang/String;)Lorg/apache/ignite/cache/CacheMode;
    .locals 3
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 1238
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->registeredCaches:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;

    .line 1240
    .local v0, "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->cacheConfiguration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cacheNames()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1223
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->registeredCaches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$3;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$3;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public caches()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCache",
            "<**>;>;"
        }
    .end annotation

    .prologue
    .line 2174
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->jCacheProxies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$4;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$4;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public cancelUserOperations()V
    .locals 3

    .prologue
    .line 2357
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->caches:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    .line 2358
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<**>;"
    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->cancelClientFutures()V

    goto :goto_0

    .line 2359
    .end local v0    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<**>;"
    :cond_0
    return-void
.end method

.method public collectDiscoveryData(Ljava/util/UUID;)Ljava/lang/Object;
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1495
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->registeredCaches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1497
    .local v3, "reqs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->registeredCaches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;

    .line 1498
    .local v0, "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->cancelled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1499
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->cacheConfiguration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;-><init>(Ljava/lang/String;Ljava/util/UUID;)V

    .line 1501
    .local v2, "req":Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->cacheConfiguration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->startCacheConfiguration(Lorg/apache/ignite/configuration/CacheConfiguration;)V

    .line 1503
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->deploymentId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->deploymentId(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 1505
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1509
    .end local v0    # "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    .end local v2    # "req":Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;
    :cond_1
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;-><init>(Ljava/util/Collection;)V

    .line 1511
    .local v2, "req":Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->clientNodesMap()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;->clientNodes(Ljava/util/Map;)V

    .line 1513
    return-object v2
.end method

.method public completeStartFuture(Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;)V
    .locals 3
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;

    .prologue
    .line 1451
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->pendingFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->cacheName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;

    .line 1453
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->deploymentId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1454
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;->access$500(Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1456
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;->deploymentId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->deploymentId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->initiatingNodeId()Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1458
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;->onDone()Z

    .line 1459
    :cond_2
    return-void
.end method

.method public context()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2407
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sharedCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    return-object v0
.end method

.method public discoveryDataType()Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1489
    sget-object v0, Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;->CACHE_PROC:Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;

    return-object v0
.end method

.method public dynamicCacheRegistered(Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;)Z
    .locals 5
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1249
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->registeredCaches:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->cacheName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;

    .line 1251
    .local v0, "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    if-eqz v0, :cond_4

    .line 1252
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->deploymentId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->deploymentId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1253
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->start()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1254
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->cancelled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1264
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 1254
    goto :goto_0

    .line 1256
    :cond_2
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->cancelled()Z

    move-result v1

    goto :goto_0

    .line 1260
    :cond_3
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->initiatingNodeId()Ljava/util/UUID;

    move-result-object v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    .line 1264
    goto :goto_0
.end method

.method public dynamicStartCache(Lorg/apache/ignite/configuration/CacheConfiguration;Ljava/lang/String;Lorg/apache/ignite/configuration/NearCacheConfiguration;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 10
    .param p1, "ccfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "cacheName"    # Ljava/lang/String;
    .param p3, "nearCfg"    # Lorg/apache/ignite/configuration/NearCacheConfiguration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "failIfExists"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/configuration/CacheConfiguration;",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/configuration/NearCacheConfiguration;",
            "Z)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 1584
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_0

    if-nez p3, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1586
    :cond_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->registeredCaches:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;

    .line 1588
    .local v2, "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-direct {v5, p2, v6}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;-><init>(Ljava/lang/String;Ljava/util/UUID;)V

    .line 1590
    .local v5, "req":Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;
    invoke-virtual {v5, p4}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->failIfExists(Z)V

    .line 1592
    if-eqz p1, :cond_7

    .line 1593
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->cancelled()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1594
    if-eqz p4, :cond_1

    .line 1595
    new-instance v6, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    new-instance v7, Lorg/apache/ignite/cache/CacheExistsException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to start cache (a cache with the same name is already started): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/ignite/cache/CacheExistsException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    .line 1663
    :goto_0
    return-object v6

    .line 1598
    :cond_1
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->cacheConfiguration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v3

    .line 1601
    .local v3, "descCfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    if-eqz p3, :cond_5

    .line 1602
    invoke-virtual {v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getNodeFilter()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1604
    invoke-virtual {v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getNearConfiguration()Lorg/apache/ignite/configuration/NearCacheConfiguration;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1605
    new-instance v6, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v6}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V

    goto :goto_0

    .line 1607
    :cond_2
    new-instance v6, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    new-instance v7, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to start near cache (local node is an affinity node for cache): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1612
    :cond_3
    invoke-virtual {v5, v8}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->clientStartOnly(Z)V

    .line 1617
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->deploymentId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->deploymentId(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 1619
    invoke-virtual {v5, v3}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->startCacheConfiguration(Lorg/apache/ignite/configuration/CacheConfiguration;)V

    .line 1660
    .end local v3    # "descCfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    :goto_1
    if-eqz p3, :cond_4

    .line 1661
    invoke-virtual {v5, p3}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->nearCacheConfiguration(Lorg/apache/ignite/configuration/NearCacheConfiguration;)V

    .line 1663
    :cond_4
    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/F;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->initiateCacheChanges(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/IgniteInternalFuture;

    goto :goto_0

    .line 1615
    .restart local v3    # "descCfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    :cond_5
    new-instance v6, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v6}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V

    goto :goto_0

    .line 1623
    .end local v3    # "descCfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    :cond_6
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->deploymentId(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 1626
    :try_start_0
    new-instance v1, Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-direct {v1, p1}, Lorg/apache/ignite/configuration/CacheConfiguration;-><init>(Ljavax/cache/configuration/CompleteConfiguration;)V

    .line 1628
    .local v1, "cfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8, v1}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->contextForCache(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v0

    .line 1630
    .local v0, "cacheObjCtx":Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    invoke-direct {p0, v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->initialize(Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V

    .line 1632
    invoke-virtual {v5, v1}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->startCacheConfiguration(Lorg/apache/ignite/configuration/CacheConfiguration;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1633
    .end local v0    # "cacheObjCtx":Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .end local v1    # "cfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    :catch_0
    move-exception v4

    .line 1634
    .local v4, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v6, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v6, v4}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1639
    .end local v4    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_7
    invoke-virtual {v5, v8}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->clientStartOnly(Z)V

    .line 1641
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->cancelled()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1642
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->cacheConfiguration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object p1

    .line 1644
    :cond_8
    if-nez p1, :cond_9

    .line 1645
    new-instance v6, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    new-instance v7, Lorg/apache/ignite/cache/CacheExistsException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to start near cache (a cache with the given name is not started): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/ignite/cache/CacheExistsException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1648
    :cond_9
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getNodeFilter()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1649
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getNearConfiguration()Lorg/apache/ignite/configuration/NearCacheConfiguration;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 1650
    new-instance v6, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v6}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V

    goto/16 :goto_0

    .line 1652
    :cond_a
    new-instance v6, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    new-instance v7, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to start near cache (local node is an affinity node for cache): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1656
    :cond_b
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->deploymentId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->deploymentId(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 1657
    invoke-virtual {v5, p1}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->startCacheConfiguration(Lorg/apache/ignite/configuration/CacheConfiguration;)V

    goto/16 :goto_1
.end method

.method public dynamicStopCache(Ljava/lang/String;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p1, "cacheName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1671
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;-><init>(Ljava/lang/String;Ljava/util/UUID;Z)V

    .line 1673
    .local v0, "t":Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->initiateCacheChanges(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    return-object v1
.end method

.method public initiateCacheChanges(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1681
    .local p1, "reqs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1683
    .local v11, "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1685
    .local v12, "sendReqs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;

    .line 1686
    .local v4, "req":Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->cacheName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->deploymentId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$1;)V

    .line 1689
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;
    :try_start_0
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->stop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1690
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->registeredCaches:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->cacheName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;

    .line 1692
    .local v6, "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    if-nez v6, :cond_1

    .line 1694
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;->onDone()Z

    .line 1706
    .end local v6    # "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    :cond_0
    :goto_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;->isDone()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    .line 1733
    invoke-interface {v11, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1696
    .restart local v6    # "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->deploymentId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    .line 1698
    .local v7, "dynamicDeploymentId":Lorg/apache/ignite/lang/IgniteUuid;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez v7, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1729
    .end local v6    # "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    .end local v7    # "dynamicDeploymentId":Lorg/apache/ignite/lang/IgniteUuid;
    :catch_0
    move-exception v8

    .line 1730
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;->onDone(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1733
    invoke-interface {v11, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1701
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    .restart local v7    # "dynamicDeploymentId":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_2
    :try_start_3
    invoke-virtual {v4, v7}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->deploymentId(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 1702
    invoke-static {v0, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;->access$502(Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/lang/IgniteUuid;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1733
    .end local v6    # "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    .end local v7    # "dynamicDeploymentId":Lorg/apache/ignite/lang/IgniteUuid;
    :catchall_0
    move-exception v1

    invoke-interface {v11, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    throw v1

    .line 1709
    :cond_3
    :try_start_4
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->pendingFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->cacheName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;

    .line 1712
    .local v10, "old":Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;
    if-eqz v10, :cond_4

    .line 1713
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->start()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->clientStartOnly()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1714
    new-instance v1, Lorg/apache/ignite/cache/CacheExistsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start cache (a cache with the same name is already being started or stopped): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->cacheName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/cache/CacheExistsException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 1724
    :cond_4
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;->isDone()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v1

    if-eqz v1, :cond_6

    .line 1733
    invoke-interface {v11, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1718
    :cond_5
    move-object v0, v10

    .line 1733
    invoke-interface {v11, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1727
    :cond_6
    :try_start_5
    invoke-interface {v12, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1733
    invoke-interface {v11, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1737
    .end local v0    # "fut":Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;
    .end local v4    # "req":Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;
    .end local v10    # "old":Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;
    :cond_7
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1738
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;

    invoke-direct {v2, v12}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->sendCustomEvent(Ljava/io/Serializable;)V

    .line 1740
    :cond_8
    return-object v11
.end method

.method public internalCache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2336
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    return-object v0
.end method

.method public internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2347
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2348
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting internal cache adapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2350
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->caches:Ljava/util/Map;

    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    return-object v0
.end method

.method public internalCaches()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
            "<**>;>;"
        }
    .end annotation

    .prologue
    .line 2365
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->caches:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public jcache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2308
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->jCacheProxies:Ljava/util/Map;

    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    .line 2310
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    if-nez v0, :cond_0

    .line 2311
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache is not configured: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2313
    :cond_0
    return-object v0
.end method

.method public lastDataVersion()J
    .locals 8

    .prologue
    .line 2126
    const-wide/16 v4, 0x0

    .line 2128
    .local v4, "max":J
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->caches:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    .line 2129
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<**>;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    .line 2131
    .local v1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->last()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->order()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-lez v3, :cond_1

    .line 2132
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->last()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->order()J

    move-result-wide v4

    .line 2134
    :cond_1
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2135
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    .line 2137
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->last()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->order()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-lez v3, :cond_0

    .line 2138
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->last()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->order()J

    move-result-wide v4

    goto :goto_0

    .line 2142
    .end local v0    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<**>;"
    .end local v1    # "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    :cond_2
    return-wide v4
.end method

.method public marshallerCache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2194
    const-string v0, "ignite-marshaller-sys-cache"

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onDiscoveryDataReceived(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 17
    .param p1, "joiningNodeId"    # Ljava/util/UUID;
    .param p2, "rmtNodeId"    # Ljava/util/UUID;
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 1518
    move-object/from16 v0, p3

    instance-of v11, v0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;

    if-eqz v11, :cond_9

    move-object/from16 v1, p3

    .line 1519
    check-cast v1, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;

    .line 1521
    .local v1, "batch":Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;->requests()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;

    .line 1522
    .local v9, "req":Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->registeredCaches:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->cacheName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;

    .line 1524
    .local v6, "existing":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->start()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->clientStartOnly()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1525
    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->startCacheConfiguration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v3

    .line 1527
    .local v3, "ccfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    if-eqz v6, :cond_3

    .line 1528
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->locallyConfigured()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1529
    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->deploymentId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->deploymentId(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 1531
    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->startCacheConfiguration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v6, v0, v11}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->addRemoteConfiguration(Ljava/util/UUID;Lorg/apache/ignite/configuration/CacheConfiguration;)V

    .line 1533
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v11}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v13

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->cacheName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getNodeFilter()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v15

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getNearConfiguration()Lorg/apache/ignite/configuration/NearCacheConfiguration;

    move-result-object v11

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v12

    sget-object v16, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    move-object/from16 v0, v16

    if-ne v12, v0, :cond_2

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v13, v14, v15, v11, v12}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->setCacheFilter(Ljava/lang/String;Lorg/apache/ignite/lang/IgnitePredicate;ZZ)V

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    .line 1541
    :cond_3
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->deploymentId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v11

    invoke-direct {v4, v3, v11}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;-><init>(Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 1546
    .local v4, "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->initiatingNodeId()Ljava/util/UUID;

    move-result-object v11

    if-nez v11, :cond_4

    .line 1547
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->staticallyConfigured(Z)V

    .line 1549
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->registeredCaches:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->cacheName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v11}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v13

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->cacheName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getNodeFilter()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v15

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getNearConfiguration()Lorg/apache/ignite/configuration/NearCacheConfiguration;

    move-result-object v11

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v12

    sget-object v16, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    move-object/from16 v0, v16

    if-ne v12, v0, :cond_6

    const/4 v12, 0x1

    :goto_4
    invoke-virtual {v13, v14, v15, v11, v12}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->setCacheFilter(Ljava/lang/String;Lorg/apache/ignite/lang/IgnitePredicate;ZZ)V

    goto/16 :goto_0

    :cond_5
    const/4 v11, 0x0

    goto :goto_3

    :cond_6
    const/4 v12, 0x0

    goto :goto_4

    .line 1560
    .end local v3    # "ccfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    .end local v4    # "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    .end local v6    # "existing":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    .end local v9    # "req":Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;
    :cond_7
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;->clientNodes()Ljava/util/Map;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 1561
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;->clientNodes()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1562
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/util/UUID;Ljava/lang/Boolean;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1564
    .local v2, "cacheName":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 1565
    .local v10, "tup":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v11}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v13

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/UUID;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-virtual {v13, v2, v11, v12}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->addClientNode(Ljava/lang/String;Ljava/util/UUID;Z)V

    goto :goto_5

    .line 1569
    .end local v1    # "batch":Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;
    .end local v2    # "cacheName":Ljava/lang/String;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/util/UUID;Ljava/lang/Boolean;>;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "tup":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/lang/Boolean;>;"
    :cond_9
    return-void
.end method

.method public onEvictFromSwap(Ljava/lang/String;[B[B)V
    .locals 11
    .param p1, "spaceName"    # Ljava/lang/String;
    .param p2, "keyBytes"    # [B
    .param p3, "valBytes"    # [B

    .prologue
    .line 2071
    sget-boolean v7, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 2072
    :cond_0
    sget-boolean v7, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    if-nez p2, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 2073
    :cond_1
    sget-boolean v7, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    if-nez v7, :cond_2

    if-nez p3, :cond_2

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 2080
    :cond_2
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->caches:Ljava/util/Map;

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->cacheNameForSwapSpaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    .line 2082
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    sget-boolean v7, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    if-nez v7, :cond_3

    if-nez v0, :cond_3

    new-instance v7, Ljava/lang/AssertionError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to resolve cache name for swap space name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 2084
    :cond_3
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/cache/CacheMode;->PARTITIONED:Lorg/apache/ignite/cache/CacheMode;

    if-ne v7, v8, :cond_6

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    .end local v0    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    .line 2087
    .local v1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    :goto_0
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->swapSpaceName(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2088
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->queries()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    move-result-object v4

    .line 2090
    .local v4, "qryMgr":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
    if-eqz v4, :cond_5

    .line 2092
    :try_start_0
    invoke-virtual {v1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject([B)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    .line 2094
    .local v3, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    invoke-static {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->unmarshal([B)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;

    move-result-object v5

    .line 2096
    .local v5, "swapEntry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v6

    .line 2098
    .local v6, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-nez v6, :cond_4

    .line 2099
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v7

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v8

    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->type()B

    move-result v9

    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->valueBytes()[B

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->toCacheObject(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;B[B)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v6

    .line 2102
    :cond_4
    sget-boolean v7, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    if-nez v7, :cond_7

    if-nez v6, :cond_7

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2107
    .end local v3    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v5    # "swapEntry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    .end local v6    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catch_0
    move-exception v2

    .line 2108
    .local v2, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to unmarshal key evicted from swap [swapSpaceName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2112
    .end local v2    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v4    # "qryMgr":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
    :cond_5
    :goto_1
    return-void

    .line 2084
    .end local v1    # "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .restart local v0    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    :cond_6
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    goto :goto_0

    .line 2104
    .end local v0    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .restart local v1    # "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .restart local v3    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v4    # "qryMgr":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
    .restart local v5    # "swapEntry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    .restart local v6    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_7
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->remove(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onExchangeDone(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/Collection;Ljava/lang/Throwable;)V
    .locals 11
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p3, "err"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1415
    .local p2, "reqs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->caches:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    .line 1416
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<**>;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    .line 1418
    .local v1, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->startTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v6

    invoke-static {v6, p1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1419
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    move-result-object v6

    invoke-interface {v6, p3}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;->onInitialExchangeComplete(Ljava/lang/Throwable;)V

    .line 1421
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1423
    .local v4, "masked":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->jCacheProxies:Ljava/util/Map;

    new-instance v7, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v7, v8, v0, v9, v10}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;Z)V

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1427
    .end local v0    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<**>;"
    .end local v1    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    .end local v4    # "masked":Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_3

    if-nez p3, :cond_3

    .line 1428
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;

    .line 1429
    .local v5, "req":Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->cacheName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1431
    .restart local v4    # "masked":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->stop()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1432
    invoke-direct {p0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->stopGateway(Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;)V

    .line 1434
    invoke-virtual {p0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->prepareCacheStop(Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;)V

    .line 1436
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->registeredCaches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;

    .line 1438
    .local v2, "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->cancelled()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->deploymentId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->deploymentId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1439
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->registeredCaches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v4, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1442
    .end local v2    # "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    :cond_2
    invoke-virtual {p0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->completeStartFuture(Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;)V

    goto :goto_1

    .line 1445
    .end local v4    # "masked":Ljava/lang/String;
    .end local v5    # "req":Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;
    :cond_3
    return-void
.end method

.method public onKernalStart()V
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 623
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isDaemon()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 731
    :goto_0
    return-void

    .line 626
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v25

    .line 628
    .local v25, "locNode":Lorg/apache/ignite/cluster/ClusterNode;
    const-string v4, "IGNITE_SKIP_CONFIGURATION_CONSISTENCY_CHECK"

    invoke-static {v4}, Lorg/apache/ignite/IgniteSystemProperties;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 629
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->remoteNodes()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/apache/ignite/cluster/ClusterNode;

    .line 630
    .local v27, "n":Lorg/apache/ignite/cluster/ClusterNode;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->checkTransactionConfiguration(Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 632
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v9

    .line 633
    .local v9, "locDepMode":Lorg/apache/ignite/configuration/DeploymentMode;
    const-string v4, "org.apache.ignite.ignite.dep.mode"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/configuration/DeploymentMode;

    .line 635
    .local v10, "rmtDepMode":Lorg/apache/ignite/configuration/DeploymentMode;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v5, 0x0

    invoke-interface/range {v27 .. v27}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    const-string v7, "deploymentMode"

    const-string v8, "Deployment mode"

    const/4 v11, 0x1

    invoke-static/range {v4 .. v11}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 638
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->registeredCaches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;

    .line 639
    .local v18, "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    invoke-interface/range {v27 .. v27}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->remoteConfiguration(Ljava/util/UUID;)Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v30

    .line 641
    .local v30, "rmtCfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    if-eqz v30, :cond_2

    .line 642
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->cacheConfiguration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v27

    invoke-direct {v0, v4, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->checkCache(Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/cluster/ClusterNode;)V

    goto :goto_1

    .line 648
    .end local v9    # "locDepMode":Lorg/apache/ignite/configuration/DeploymentMode;
    .end local v10    # "rmtDepMode":Lorg/apache/ignite/configuration/DeploymentMode;
    .end local v18    # "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v27    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v30    # "rmtCfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->registeredCaches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;

    .line 649
    .restart local v18    # "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->onStart()Z

    move-result v31

    .line 651
    .local v31, "started":Z
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    if-nez v4, :cond_5

    if-nez v31, :cond_5

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to change started flag for locally configured cache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 653
    :cond_5
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->clearRemoteConfigurations()V

    .line 655
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->cacheConfiguration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v15

    .line 657
    .local v15, "ccfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    invoke-virtual {v15}, Lorg/apache/ignite/configuration/CacheConfiguration;->getNodeFilter()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v20

    .line 659
    .local v20, "filter":Lorg/apache/ignite/lang/IgnitePredicate;
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 660
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v15}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v15}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->contextForCache(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v14

    .line 662
    .local v14, "cacheObjCtx":Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->createCache(Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v17

    .line 664
    .local v17, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->deploymentId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dynamicDeploymentId(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 666
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sharedCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->addCacheContext(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 668
    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v12

    .line 670
    .local v12, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    invoke-virtual {v15}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v28

    .line 672
    .local v28, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->caches:Ljava/util/Map;

    invoke-static/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->startCache(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->jCacheProxies:Ljava/util/Map;

    invoke-static/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v17

    invoke-direct {v6, v0, v12, v7, v8}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;Z)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 680
    .end local v12    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .end local v14    # "cacheObjCtx":Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .end local v15    # "ccfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    .end local v17    # "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v18    # "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    .end local v20    # "filter":Lorg/apache/ignite/lang/IgnitePredicate;
    .end local v28    # "name":Ljava/lang/String;
    .end local v31    # "started":Z
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->marshallerCache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;->syncFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v4

    new-instance v5, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$2;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;)V

    invoke-interface {v4, v5}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 687
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sharedCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->managers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;

    .line 688
    .local v26, "mgr":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager<**>;"
    invoke-interface/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;->onKernalStart()V

    goto :goto_3

    .line 690
    .end local v26    # "mgr":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager<**>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->caches:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_8
    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 691
    .local v19, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<**>;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    .line 693
    .restart local v12    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maxRebalanceOrder:I

    if-lez v4, :cond_8

    .line 694
    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v16

    .line 696
    .local v16, "cfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceOrder()I

    move-result v29

    .line 698
    .local v29, "order":I
    if-lez v29, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maxRebalanceOrder:I

    move/from16 v0, v29

    if-eq v0, v4, :cond_8

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    if-eq v4, v5, :cond_8

    .line 699
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->preloadFuts:Ljava/util/NavigableMap;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    .line 702
    .local v22, "fut":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v22, :cond_9

    .line 703
    new-instance v22, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    .end local v22    # "fut":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct/range {v22 .. v22}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;-><init>()V

    .line 705
    .restart local v22    # "fut":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->preloadFuts:Ljava/util/NavigableMap;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-interface {v4, v5, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    :cond_9
    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;->syncFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    goto :goto_4

    .line 713
    .end local v12    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .end local v16    # "cfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    .end local v19    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<**>;>;"
    .end local v22    # "fut":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v29    # "order":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->preloadFuts:Ljava/util/NavigableMap;

    invoke-interface {v4}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 714
    .local v21, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    check-cast v21, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    .end local v21    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->markInitialized()V

    goto :goto_5

    .line 716
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->caches:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_6
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    .line 717
    .local v13, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<**>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->onKernalStart(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)V

    goto :goto_6

    .line 720
    .end local v13    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<**>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->caches:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_d
    :goto_7
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    .line 721
    .restart local v13    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<**>;"
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v16

    .line 723
    .restart local v16    # "cfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceMode()Lorg/apache/ignite/cache/CacheRebalanceMode;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/cache/CacheRebalanceMode;->SYNC:Lorg/apache/ignite/cache/CacheRebalanceMode;

    if-ne v4, v5, :cond_d

    .line 724
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/cache/CacheMode;->REPLICATED:Lorg/apache/ignite/cache/CacheMode;

    if-eq v4, v5, :cond_e

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/cache/CacheMode;->PARTITIONED:Lorg/apache/ignite/cache/CacheMode;

    if-ne v4, v5, :cond_d

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceDelay()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_d

    .line 726
    :cond_e
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;->syncFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    goto :goto_7

    .line 730
    .end local v13    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<**>;"
    .end local v16    # "cfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->onCacheProcessorStarted()V

    goto/16 :goto_0
.end method

.method public onKernalStop(Z)V
    .locals 9
    .param p1, "cancel"    # Z

    .prologue
    .line 774
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isDaemon()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 797
    :cond_0
    return-void

    .line 777
    :cond_1
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->stopSeq:Ljava/util/Deque;

    invoke-interface {v7}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 778
    .local v1, "cacheName":Ljava/lang/String;
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->caches:Ljava/util/Map;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    .line 780
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<**>;"
    if-eqz v0, :cond_2

    .line 781
    invoke-direct {p0, v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->onKernalStop(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Z)V

    goto :goto_0

    .line 784
    .end local v0    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<**>;"
    .end local v1    # "cacheName":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->caches:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 785
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<**>;>;"
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->stopSeq:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 786
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-direct {p0, v7, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->onKernalStop(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Z)V

    goto :goto_1

    .line 789
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<**>;>;"
    :cond_5
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sharedCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->managers()Ljava/util/List;

    move-result-object v6

    .line 791
    .local v6, "sharedMgrs":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager<**>;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 792
    .local v4, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager<**>;>;"
    :goto_2
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 793
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;

    .line 795
    .local v5, "mgr":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager<**>;"
    invoke-interface {v5, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;->onKernalStop(Z)V

    goto :goto_2
.end method

.method public onUndeployed(Ljava/lang/ClassLoader;)V
    .locals 3
    .param p1, "ldr"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2394
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->isStopping()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2395
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->caches:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    .line 2397
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<**>;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->system()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->isAtomicsCache(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2398
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->onUndeploy(Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 2401
    .end local v0    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<**>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public orderedPreloadFuture(I)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p1, "order"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 2059
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->preloadFuts:Ljava/util/NavigableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 2061
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/ignite/internal/IgniteInternalFuture<*>;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    goto :goto_0
.end method

.method public prepareCacheStop(Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;)V
    .locals 5
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;

    .prologue
    const/4 v4, 0x1

    .line 1386
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->stop()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1388
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->caches:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->cacheName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    .line 1390
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<**>;"
    if-eqz v0, :cond_2

    .line 1391
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    .line 1393
    .local v1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sharedCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->removeCacheContext(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 1395
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->deploymentId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dynamicDeploymentId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Different deployment IDs [req="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ctxDepId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dynamicDeploymentId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1398
    :cond_1
    invoke-direct {p0, v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->onKernalStop(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Z)V

    .line 1399
    invoke-direct {p0, v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->stopCache(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Z)V

    .line 1401
    .end local v1    # "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    :cond_2
    return-void
.end method

.method public prepareCachesStart(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 11
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;",
            ">;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p1, "reqs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;>;"
    const/4 v10, 0x0

    .line 1276
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;

    .line 1277
    .local v9, "req":Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->start()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1279
    :cond_0
    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->startCacheConfiguration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v1

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->nearCacheConfiguration()Lorg/apache/ignite/configuration/NearCacheConfiguration;

    move-result-object v2

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->clientStartOnly()Z

    move-result v3

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->initiatingNodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->deploymentId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    move-object v0, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->prepareCacheStart(Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/configuration/NearCacheConfiguration;ZLjava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto :goto_0

    .line 1290
    .end local v9    # "req":Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->registeredCaches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;

    .line 1291
    .local v7, "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->staticallyConfigured()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->locallyConfigured()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1292
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->onStart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1293
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->cacheConfiguration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->deploymentId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    move-object v0, p0

    move-object v2, v10

    move-object v4, v10

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->prepareCacheStart(Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/configuration/NearCacheConfiguration;ZLjava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto :goto_1

    .line 1304
    .end local v7    # "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    :cond_3
    return-void
.end method

.method public printMemoryStats()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2378
    const-string v2, ">>> "

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2380
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->caches:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    .line 2381
    .local v0, "c":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> Cache memory stats [grid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cache="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2383
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->printMemoryStats()V

    goto :goto_0

    .line 2385
    .end local v0    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    :cond_0
    return-void
.end method

.method public publicCache()Lorg/apache/ignite/internal/processors/cache/GridCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/processors/cache/GridCache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2187
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->publicCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v0

    return-object v0
.end method

.method public publicCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/GridCache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2234
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2235
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Getting public cache for name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2237
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sysCaches:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2238
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get cache because it is system cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2240
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->jCacheProxies:Ljava/util/Map;

    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    .line 2242
    .local v0, "jcache":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    if-nez v0, :cond_2

    .line 2243
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache is not configured: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2245
    :cond_2
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->legacyProxy()Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;

    move-result-object v1

    return-object v1
.end method

.method public publicCaches()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy",
            "<**>;>;"
        }
    .end annotation

    .prologue
    .line 2320
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->jCacheProxies:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2322
    .local v2, "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<**>;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->jCacheProxies:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2323
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<**>;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sysCaches:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2324
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2327
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<**>;>;"
    :cond_1
    return-object v2
.end method

.method public publicJCache(Ljava/lang/String;)Lorg/apache/ignite/IgniteCache;
    .locals 9
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/IgniteCache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2256
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2257
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Getting public cache for name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2259
    :cond_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sysCaches:Ljava/util/Set;

    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2260
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get cache because it is a system cache: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2263
    :cond_1
    :try_start_0
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2265
    .local v4, "masked":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->jCacheProxies:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/IgniteCache;

    .line 2267
    .local v0, "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<TK;TV;>;"
    if-nez v0, :cond_4

    .line 2268
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->registeredCaches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;

    .line 2270
    .local v2, "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->cancelled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2271
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cache is not started: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2297
    .end local v0    # "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<TK;TV;>;"
    .end local v2    # "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    .end local v4    # "masked":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2298
    .local v3, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->convertToCacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 2273
    .end local v3    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v0    # "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<TK;TV;>;"
    .restart local v2    # "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    .restart local v4    # "masked":Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;-><init>(Ljava/lang/String;Ljava/util/UUID;)V

    .line 2275
    .local v5, "req":Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;
    invoke-virtual {v5, p1}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->cacheName(Ljava/lang/String;)V

    .line 2277
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->deploymentId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->deploymentId(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 2279
    new-instance v1, Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->cacheConfiguration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/apache/ignite/configuration/CacheConfiguration;-><init>(Ljavax/cache/configuration/CompleteConfiguration;)V

    .line 2281
    .local v1, "cfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lorg/apache/ignite/configuration/CacheConfiguration;->setNearConfiguration(Lorg/apache/ignite/configuration/NearCacheConfiguration;)V

    .line 2283
    invoke-virtual {v5, v1}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->startCacheConfiguration(Lorg/apache/ignite/configuration/CacheConfiguration;)V

    .line 2285
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->clientStartOnly(Z)V

    .line 2287
    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/F;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->initiateCacheChanges(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;->get()Ljava/lang/Object;

    .line 2289
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->jCacheProxies:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<TK;TV;>;"
    check-cast v0, Lorg/apache/ignite/IgniteCache;

    .line 2291
    .restart local v0    # "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<TK;TV;>;"
    if-nez v0, :cond_4

    .line 2292
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cache is not started: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2295
    .end local v1    # "cfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    .end local v2    # "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    .end local v5    # "req":Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;
    :cond_4
    return-object v0
.end method

.method public start()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isDaemon()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v10

    .line 526
    .local v10, "depMode":Lorg/apache/ignite/configuration/DeploymentMode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCacheConfiguration()[Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 527
    sget-object v19, Lorg/apache/ignite/configuration/DeploymentMode;->CONTINUOUS:Lorg/apache/ignite/configuration/DeploymentMode;

    move-object/from16 v0, v19

    if-eq v10, v0, :cond_2

    sget-object v19, Lorg/apache/ignite/configuration/DeploymentMode;->SHARED:Lorg/apache/ignite/configuration/DeploymentMode;

    move-object/from16 v0, v19

    if-eq v10, v0, :cond_2

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Deployment mode for cache is not CONTINUOUS or SHARED (it is recommended that you change deployment mode and restart): "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "Deployment mode for cache is not CONTINUOUS or SHARED."

    invoke-static/range {v19 .. v21}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 533
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCacheConfiguration()[Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->validatePreloadOrder([Lorg/apache/ignite/configuration/CacheConfiguration;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maxRebalanceOrder:I

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v19

    new-instance v20, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$1;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;)V

    invoke-virtual/range {v19 .. v20}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->setCustomEventListener(Lorg/apache/ignite/internal/util/lang/GridPlainInClosure;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/GridKernalContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/IgniteEx;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getFileSystemConfiguration()[Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v15

    .line 545
    .local v15, "igfsCfgs":[Lorg/apache/ignite/configuration/FileSystemConfiguration;
    if-eqz v15, :cond_3

    .line 546
    move-object v5, v15

    .local v5, "arr$":[Lorg/apache/ignite/configuration/FileSystemConfiguration;
    array-length v0, v5

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_3

    aget-object v14, v5, v13

    .line 547
    .local v14, "igfsCfg":Lorg/apache/ignite/configuration/FileSystemConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sysCaches:Ljava/util/Set;

    move-object/from16 v19, v0

    invoke-virtual {v14}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getMetaCacheName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sysCaches:Ljava/util/Set;

    move-object/from16 v19, v0

    invoke-virtual {v14}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDataCacheName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 546
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 552
    .end local v5    # "arr$":[Lorg/apache/ignite/configuration/FileSystemConfiguration;
    .end local v13    # "i$":I
    .end local v14    # "igfsCfg":Lorg/apache/ignite/configuration/FileSystemConfiguration;
    .end local v16    # "len$":I
    :cond_3
    sget-object v19, Lorg/apache/ignite/internal/IgniteComponentType;->HADOOP:Lorg/apache/ignite/internal/IgniteComponentType;

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/IgniteComponentType;->inClassPath()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sysCaches:Ljava/util/Set;

    move-object/from16 v19, v0

    const-string v20, "ignite-hadoop-mr-sys-cache"

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 555
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sysCaches:Ljava/util/Set;

    move-object/from16 v19, v0

    const-string v20, "ignite-marshaller-sys-cache"

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sysCaches:Ljava/util/Set;

    move-object/from16 v19, v0

    const-string v20, "ignite-sys-cache"

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sysCaches:Ljava/util/Set;

    move-object/from16 v19, v0

    const-string v20, "ignite-atomics-sys-cache"

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCacheConfiguration()[Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v9

    .line 561
    .local v9, "cfgs":[Lorg/apache/ignite/configuration/CacheConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->createSharedContext(Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sharedCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/GridKernalContext;->performance()Lorg/apache/ignite/internal/GridPerformanceSuggestions;

    move-result-object v20

    const-string v21, "Disable serializable transactions (set \'txSerializableEnabled\' to false)"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getTransactionConfiguration()Lorg/apache/ignite/configuration/TransactionConfiguration;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/configuration/TransactionConfiguration;->isTxSerializableEnabled()Z

    move-result v19

    if-nez v19, :cond_5

    const/16 v19, 0x1

    :goto_2
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->add(Ljava/lang/String;Z)V

    .line 566
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_b

    .line 567
    aget-object v19, v9, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->checkSerializable(Lorg/apache/ignite/configuration/CacheConfiguration;)V

    .line 569
    new-instance v8, Lorg/apache/ignite/configuration/CacheConfiguration;

    aget-object v19, v9, v12

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Lorg/apache/ignite/configuration/CacheConfiguration;-><init>(Ljavax/cache/configuration/CompleteConfiguration;)V

    .line 571
    .local v8, "cfg":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<**>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual {v8}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2, v8}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->contextForCache(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v7

    .line 574
    .local v7, "cacheObjCtx":Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->initialize(Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V

    .line 576
    aput-object v8, v9, v12

    .line 578
    invoke-virtual {v8}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 580
    .local v17, "masked":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->registeredCaches:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 581
    invoke-virtual {v8}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v6

    .line 583
    .local v6, "cacheName":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 584
    new-instance v19, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Duplicate cache name found (check configuration and assign unique name to each cache): "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 563
    .end local v6    # "cacheName":Ljava/lang/String;
    .end local v7    # "cacheObjCtx":Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .end local v8    # "cfg":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<**>;"
    .end local v12    # "i":I
    .end local v17    # "masked":Ljava/lang/String;
    :cond_5
    const/16 v19, 0x0

    goto :goto_2

    .line 587
    .restart local v6    # "cacheName":Ljava/lang/String;
    .restart local v7    # "cacheObjCtx":Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .restart local v8    # "cfg":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<**>;"
    .restart local v12    # "i":I
    .restart local v17    # "masked":Ljava/lang/String;
    :cond_6
    new-instance v19, Lorg/apache/ignite/IgniteCheckedException;

    const-string v20, "Default cache has already been configured (check configuration and assign unique name to each cache)."

    invoke-direct/range {v19 .. v20}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 591
    .end local v6    # "cacheName":Ljava/lang/String;
    :cond_7
    new-instance v11, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;

    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v8, v0}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;-><init>(Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 593
    .local v11, "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->locallyConfigured(Z)V

    .line 594
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->staticallyConfigured(Z)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->registeredCaches:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v11}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v21

    invoke-virtual {v8}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v8}, Lorg/apache/ignite/configuration/CacheConfiguration;->getNodeFilter()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v23

    invoke-virtual {v8}, Lorg/apache/ignite/configuration/CacheConfiguration;->getNearConfiguration()Lorg/apache/ignite/configuration/NearCacheConfiguration;

    move-result-object v19

    if-eqz v19, :cond_8

    const/16 v19, 0x1

    :goto_4
    invoke-virtual {v8}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v20

    sget-object v24, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_9

    const/16 v20, 0x1

    :goto_5
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->setCacheFilter(Ljava/lang/String;Lorg/apache/ignite/lang/IgnitePredicate;ZZ)V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sysCaches:Ljava/util/Set;

    move-object/from16 v19, v0

    invoke-virtual {v8}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->stopSeq:Ljava/util/Deque;

    move-object/from16 v19, v0

    invoke-virtual {v8}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 566
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 598
    :cond_8
    const/16 v19, 0x0

    goto :goto_4

    :cond_9
    const/16 v20, 0x0

    goto :goto_5

    .line 607
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->stopSeq:Ljava/util/Deque;

    move-object/from16 v19, v0

    invoke-virtual {v8}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    goto :goto_6

    .line 611
    .end local v7    # "cacheObjCtx":Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .end local v8    # "cfg":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<**>;"
    .end local v11    # "desc":Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
    .end local v17    # "masked":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sharedCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->managers()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;

    .line 612
    .local v18, "mgr":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sharedCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;->start(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    goto :goto_7

    .line 614
    .end local v18    # "mgr":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;
    :cond_c
    new-instance v19, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sharedCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->transactions:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    const-string v20, "Started cache processor."

    invoke-interface/range {v19 .. v20}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public stop(Z)V
    .locals 8
    .param p1, "cancel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 736
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isDaemon()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 739
    :cond_1
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->stopSeq:Ljava/util/Deque;

    invoke-interface {v6}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 740
    .local v1, "cacheName":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->caches:Ljava/util/Map;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    .line 742
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<**>;"
    if-eqz v0, :cond_2

    .line 743
    invoke-direct {p0, v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->stopCache(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Z)V

    goto :goto_1

    .line 746
    .end local v0    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<**>;"
    .end local v1    # "cacheName":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->caches:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    .line 747
    .restart local v0    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<**>;"
    invoke-direct {p0, v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->stopCache(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Z)V

    goto :goto_2

    .line 749
    .end local v0    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<**>;"
    :cond_4
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sharedCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->managers()Ljava/util/List;

    move-result-object v5

    .line 751
    .local v5, "mgrs":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager<**>;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .local v3, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager<**>;>;"
    :goto_3
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 752
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;

    .line 754
    .local v4, "mgr":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager<**>;"
    invoke-interface {v4, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;->stop(Z)V

    goto :goto_3

    .line 757
    .end local v4    # "mgr":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager<**>;"
    :cond_5
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sharedCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cleanup()V

    .line 759
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 760
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v7, "Stopped cache processor."

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public systemCache(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2373
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->sysCaches:Ljava/util/Set;

    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public transactions()Lorg/apache/ignite/internal/IgniteTransactionsEx;
    .locals 1

    .prologue
    .line 2414
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->transactions:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTransactionsImpl;

    return-object v0
.end method

.method public utilityCache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2214
    const-string v0, "ignite-sys-cache"

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    return-object v0
.end method

.method public utilityCache(Ljava/lang/Class;Ljava/lang/Class;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheUtilityKey;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2205
    .local p1, "keyCls":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p2, "valCls":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    const-string v0, "ignite-sys-cache"

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->cache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCache;->projection(Ljava/lang/Class;Ljava/lang/Class;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    return-object v0
.end method

.method public validateNode(Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1855
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->validateHashIdResolvers(Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;

    move-result-object v0

    return-object v0
.end method
