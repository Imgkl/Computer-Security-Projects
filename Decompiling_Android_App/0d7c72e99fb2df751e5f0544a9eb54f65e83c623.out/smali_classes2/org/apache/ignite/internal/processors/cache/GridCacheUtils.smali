.class public Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;
.super Ljava/lang/Object;
.source "GridCacheUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ALWAYS_FALSE0:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

.field private static final ALWAYS_FALSE0_ARR:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

.field private static final ALWAYS_TRUE0:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

.field public static final ATOMICS_CACHE_NAME:Ljava/lang/String; = "ignite-atomics-sys-cache"

.field private static final DEFAULT_MASK_NAME:Ljava/lang/String; = "<default>"

.field private static final EMPTY:[Lorg/apache/ignite/lang/IgnitePredicate;

.field private static final EMPTY_FILTER:[Lorg/apache/ignite/lang/IgnitePredicate;

.field private static final EMPTY_FILTER0:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

.field public static final EXPIRE_TIME_CALCULATE:J = -0x1L

.field public static final EXPIRE_TIME_ETERNAL:J = 0x0L

.field public static final MARSH_CACHE_NAME:Ljava/lang/String; = "ignite-marshaller-sys-cache"

.field private static final PART2STATE:Lorg/apache/ignite/lang/IgniteClosure;

.field private static final PART_NOT_EVICTED:Lorg/apache/ignite/lang/IgnitePredicate;

.field private static final PEEK_FLAGS:[Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

.field private static final READ_FILTER:Lorg/apache/ignite/lang/IgnitePredicate;

.field public static final SYS_CACHE_HADOOP_MR:Ljava/lang/String; = "ignite-hadoop-mr-sys-cache"

.field public static final TTL_ETERNAL:J = 0x0L

.field public static final TTL_MINIMUM:J = 0x1L

.field public static final TTL_NOT_CHANGED:J = -0x1L

.field public static final TTL_ZERO:J = -0x2L

.field public static final UTILITY_CACHE_NAME:Ljava/lang/String; = "ignite-sys-cache"

.field private static final UUIDS:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private static final VER_ARR_FACTORY:Lorg/apache/ignite/lang/IgniteClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation
.end field

.field private static final WRITE_FILTER:Lorg/apache/ignite/lang/IgnitePredicate;

.field private static final entry2key:Lorg/apache/ignite/lang/IgniteClosure;

.field private static final info2key:Lorg/apache/ignite/lang/IgniteClosure;

.field private static final tx2entry:Lorg/apache/ignite/lang/IgniteClosure;

.field private static final tx2key:Lorg/apache/ignite/lang/IgniteClosure;

.field private static final tx2xidVer:Lorg/apache/ignite/lang/IgniteClosure;

.field private static final txCol2key:Lorg/apache/ignite/lang/IgniteClosure;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->$assertionsDisabled:Z

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->GLOBAL:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    aput-object v3, v0, v2

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->SWAP:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    aput-object v3, v0, v1

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->PEEK_FLAGS:[Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    .line 101
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->UUIDS:Ljava/lang/ThreadLocal;

    .line 108
    new-array v0, v2, [Lorg/apache/ignite/lang/IgnitePredicate;

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->EMPTY:[Lorg/apache/ignite/lang/IgnitePredicate;

    .line 111
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$2;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$2;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->PART2STATE:Lorg/apache/ignite/lang/IgniteClosure;

    .line 119
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$3;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$3;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->PART_NOT_EVICTED:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 126
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$4;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$4;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->VER_ARR_FACTORY:Lorg/apache/ignite/lang/IgniteClosure;

    .line 134
    new-array v0, v2, [Lorg/apache/ignite/lang/IgnitePredicate;

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->EMPTY_FILTER:[Lorg/apache/ignite/lang/IgnitePredicate;

    .line 137
    new-array v0, v2, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->EMPTY_FILTER0:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 140
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$5;

    invoke-direct {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$5;-><init>()V

    invoke-direct {v0, v3}, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->ALWAYS_FALSE0:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 149
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$6;

    invoke-direct {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$6;-><init>()V

    invoke-direct {v0, v3}, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->ALWAYS_TRUE0:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 158
    new-array v0, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->ALWAYS_FALSE0:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->ALWAYS_FALSE0_ARR:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 161
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$7;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$7;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->READ_FILTER:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 172
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$8;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$8;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->WRITE_FILTER:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 183
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$9;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$9;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->tx2key:Lorg/apache/ignite/lang/IgniteClosure;

    .line 194
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$10;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$10;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->txCol2key:Lorg/apache/ignite/lang/IgniteClosure;

    .line 206
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$11;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$11;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->tx2xidVer:Lorg/apache/ignite/lang/IgniteClosure;

    .line 217
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$12;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$12;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->tx2entry:Lorg/apache/ignite/lang/IgniteClosure;

    .line 224
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$13;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$13;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->entry2key:Lorg/apache/ignite/lang/IgniteClosure;

    .line 235
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$14;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$14;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->info2key:Lorg/apache/ignite/lang/IgniteClosure;

    return-void

    :cond_0
    move v0, v2

    .line 63
    goto/16 :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    return-void
.end method

.method static synthetic access$000()Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->tx2key:Lorg/apache/ignite/lang/IgniteClosure;

    return-object v0
.end method

.method static synthetic access$100()[Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->EMPTY:[Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method

.method public static affinityNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/util/Collection;
    .locals 3
    .param p0, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 570
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namex()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cacheAffinityNodes(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static affinityNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;
    .locals 2
    .param p0, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p1, "topOrder"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 581
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cacheAffinityNodes(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static aliveCacheNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;
    .locals 1
    .param p0, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .param p1, "topOrder"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 549
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->aliveNodesWithCaches(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static aliveNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;
    .locals 2
    .param p0, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p1, "topOrder"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 485
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->aliveCacheNodes(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static aliveRemoteCacheNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;
    .locals 1
    .param p0, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .param p1, "topOrder"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 560
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->aliveRemoteNodesWithCaches(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static aliveRemoteNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;
    .locals 2
    .param p0, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p1, "topOrder"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 527
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->aliveRemoteCacheNodes(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static allNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/util/Collection;
    .locals 1
    .param p0, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    sget-object v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->allNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static allNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;
    .locals 2
    .param p0, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p1, "topOrder"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cacheNodes(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static allNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;
    .locals 1
    .param p0, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .param p1, "topOrder"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cacheNodes(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static allowForStartup(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 266
    check-cast p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;

    .end local p0    # "msg":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->allowForStartup()Z

    move-result v0

    return v0
.end method

.method public static alwaysFalse0()Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .locals 1

    .prologue
    .line 716
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->ALWAYS_FALSE0:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    return-object v0
.end method

.method public static alwaysFalse0Arr()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .locals 1

    .prologue
    .line 730
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->ALWAYS_FALSE0_ARR:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    return-object v0
.end method

.method public static alwaysTrue0()Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .locals 1

    .prologue
    .line 723
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->ALWAYS_TRUE0:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    return-object v0
.end method

.method public static backups(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/4 v1, 0x1

    .line 989
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 990
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 992
    :goto_0
    return-object v0

    :cond_1
    new-array v0, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v1, 0x0

    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->notEqualTo(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public static boolReducer()Lorg/apache/ignite/lang/IgniteReducer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 855
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$20;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$20;-><init>()V

    return-object v0
.end method

.method public static cacheId(Ljava/lang/String;)I
    .locals 1
    .param p0, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 1539
    if-eqz p0, :cond_1

    .line 1540
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 1542
    .local v0, "hash":I
    if-nez v0, :cond_0

    .line 1543
    const/4 v0, 0x1

    .line 1548
    .end local v0    # "hash":I
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static cacheKey2Entry(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TK;",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 410
    .local p0, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$17;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$17;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    return-object v0
.end method

.method public static cacheNameForSwapSpaceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "swapSpaceName"    # Ljava/lang/String;

    .prologue
    .line 393
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 395
    :cond_0
    const-string v0, "gg-swap-cache-dflt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "gg-swap-cache-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static cacheNode(Ljava/lang/String;Lorg/apache/ignite/cluster/ClusterNode;)Z
    .locals 1
    .param p0, "cacheName"    # Ljava/lang/String;
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 616
    const-string v0, "org.apache.ignite.cache"

    invoke-interface {p1, v0}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->cacheNode(Ljava/lang/String;[Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;)Z

    move-result v0

    return v0
.end method

.method public static cacheNode(Ljava/lang/String;[Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;)Z
    .locals 5
    .param p0, "cacheName"    # Ljava/lang/String;
    .param p1, "caches"    # [Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;

    .prologue
    .line 627
    if-eqz p1, :cond_1

    .line 628
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 629
    .local v1, "attrs":Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 630
    const/4 v4, 0x1

    .line 632
    .end local v0    # "arr$":[Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;
    .end local v1    # "attrs":Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_1
    return v4

    .line 628
    .restart local v0    # "arr$":[Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;
    .restart local v1    # "attrs":Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 632
    .end local v0    # "arr$":[Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;
    .end local v1    # "attrs":Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static cachePrimary(Lorg/apache/ignite/cache/affinity/Affinity;Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .locals 1
    .param p0, "aff"    # Lorg/apache/ignite/cache/affinity/Affinity;
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 1773
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$26;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$26;-><init>(Lorg/apache/ignite/cache/affinity/Affinity;Lorg/apache/ignite/cluster/ClusterNode;)V

    return-object v0
.end method

.method public static cachePrimary0(Lorg/apache/ignite/cache/affinity/Affinity;Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/cache/affinity/Affinity",
            "<TK;>;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ")",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1789
    .local p0, "aff":Lorg/apache/ignite/cache/affinity/Affinity;, "Lorg/apache/ignite/cache/affinity/Affinity<TK;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$27;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$27;-><init>(Lorg/apache/ignite/cache/affinity/Affinity;Lorg/apache/ignite/cluster/ClusterNode;)V

    return-object v0
.end method

.method private static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 4
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p1, "cfgName"    # Ljava/lang/String;
    .param p2, "rmtNodeId"    # Ljava/util/UUID;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "attrMsg"    # Ljava/lang/String;
    .param p5, "locVal"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "rmtVal"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7, "fail"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x5d

    .line 1399
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1400
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1401
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1403
    :cond_2
    invoke-static {p5, p6}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1404
    if-eqz p7, :cond_3

    .line 1405
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mismatch (fix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in cache "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "configuration or set -D"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "IGNITE_SKIP_CONFIGURATION_CONSISTENCY_CHECK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=true "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "system property) [cacheName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", local"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", remote"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rmtNodeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1413
    :cond_3
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    if-nez p0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1415
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mismatch (fix "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in cache "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "configuration) [cacheName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", local"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remote"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rmtNodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1422
    :cond_5
    return-void
.end method

.method public static checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/configuration/CacheConfiguration;Ljava/util/UUID;Lorg/apache/ignite/internal/util/typedef/T2;Z)V
    .locals 8
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p1, "locCfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;
    .param p2, "rmtCfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;
    .param p3, "rmtNodeId"    # Ljava/util/UUID;
    .param p5, "fail"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/IgniteLogger;",
            "Lorg/apache/ignite/configuration/CacheConfiguration;",
            "Lorg/apache/ignite/configuration/CacheConfiguration;",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1372
    .local p4, "attr":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1373
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p4, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1374
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p4}, Lorg/apache/ignite/internal/util/typedef/T2;->get1()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1375
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    invoke-virtual {p4}, Lorg/apache/ignite/internal/util/typedef/T2;->get2()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1377
    :cond_3
    invoke-virtual {p4}, Lorg/apache/ignite/internal/util/typedef/T2;->get1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->property(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1379
    .local v5, "locVal":Ljava/lang/Object;
    invoke-virtual {p4}, Lorg/apache/ignite/internal/util/typedef/T2;->get1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->property(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1381
    .local v6, "rmtVal":Ljava/lang/Object;
    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lorg/apache/ignite/internal/util/typedef/T2;->get1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p4}, Lorg/apache/ignite/internal/util/typedef/T2;->get2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, p0

    move-object v2, p3

    move v7, p5

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->checkAttributeMismatch(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1382
    return-void
.end method

.method public static checkStore(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->configured()Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    const-string v1, "Failed to find cache store for method \'reload(..)\' (is GridCacheStore configured?)"

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_0
    return-void
.end method

.method public static collectionsReducer()Lorg/apache/ignite/lang/IgniteReducer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/util/Collection",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 912
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$22;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$22;-><init>()V

    return-object v0
.end method

.method public static convertToCacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;
    .locals 4
    .param p0, "e"    # Lorg/apache/ignite/IgniteCheckedException;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1801
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljavax/cache/integration/CacheWriterException;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/ignite/IgniteCheckedException;->hasCause([Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1802
    new-instance v1, Ljavax/cache/integration/CacheWriterException;

    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertExceptionNoWrap(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/Exception;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/cache/integration/CacheWriterException;-><init>(Ljava/lang/Throwable;)V

    .line 1819
    :goto_0
    return-object v1

    .line 1804
    :cond_0
    instance-of v1, p0, Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;

    if-eqz v1, :cond_1

    .line 1805
    new-instance v1, Lorg/apache/ignite/cache/CachePartialUpdateException;

    check-cast p0, Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;

    .end local p0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-direct {v1, p0}, Lorg/apache/ignite/cache/CachePartialUpdateException;-><init>(Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;)V

    goto :goto_0

    .line 1806
    .restart local p0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_1
    instance-of v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheAtomicUpdateTimeoutCheckedException;

    if-eqz v1, :cond_2

    .line 1807
    new-instance v1, Lorg/apache/ignite/cache/CacheAtomicUpdateTimeoutException;

    invoke-virtual {p0}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lorg/apache/ignite/cache/CacheAtomicUpdateTimeoutException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1808
    :cond_2
    instance-of v1, p0, Lorg/apache/ignite/internal/cluster/ClusterTopologyServerNotFoundException;

    if-eqz v1, :cond_3

    .line 1809
    new-instance v1, Lorg/apache/ignite/cache/CacheServerNotFoundException;

    invoke-virtual {p0}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lorg/apache/ignite/cache/CacheServerNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1811
    :cond_3
    invoke-virtual {p0}, Lorg/apache/ignite/IgniteCheckedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljavax/cache/CacheException;

    if-eqz v1, :cond_4

    .line 1812
    invoke-virtual {p0}, Lorg/apache/ignite/IgniteCheckedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/cache/CacheException;

    goto :goto_0

    .line 1814
    :cond_4
    invoke-virtual {p0}, Lorg/apache/ignite/IgniteCheckedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/NullPointerException;

    if-eqz v1, :cond_5

    .line 1815
    invoke-virtual {p0}, Lorg/apache/ignite/IgniteCheckedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/NullPointerException;

    goto :goto_0

    .line 1817
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->getExceptionConverter(Ljava/lang/Class;)Lorg/apache/ignite/internal/util/typedef/C1;

    move-result-object v0

    .line 1819
    .local v0, "converter":Lorg/apache/ignite/internal/util/typedef/C1;, "Lorg/apache/ignite/internal/util/typedef/C1<Lorg/apache/ignite/IgniteCheckedException;Lorg/apache/ignite/IgniteException;>;"
    if-eqz v0, :cond_6

    new-instance v2, Ljavax/cache/CacheException;

    invoke-interface {v0, p0}, Lorg/apache/ignite/internal/util/typedef/C1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v2, v1}, Ljavax/cache/CacheException;-><init>(Ljava/lang/Throwable;)V

    move-object v1, v2

    goto :goto_0

    :cond_6
    new-instance v1, Ljavax/cache/CacheException;

    invoke-direct {v1, p0}, Ljavax/cache/CacheException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static empty()[Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 701
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->EMPTY_FILTER:[Lorg/apache/ignite/lang/IgnitePredicate;

    check-cast v0, [Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method

.method public static empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .locals 1

    .prologue
    .line 709
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->EMPTY_FILTER0:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    return-object v0
.end method

.method public static entry2Key()Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 786
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->entry2key:Lorg/apache/ignite/lang/IgniteClosure;

    return-object v0
.end method

.method public static varargs errorLogger(Lorg/apache/ignite/IgniteLogger;[Ljava/lang/Class;)Lorg/apache/ignite/lang/IgniteInClosure;
    .locals 1
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/IgniteLogger;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Exception;",
            ">;)",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 1041
    .local p1, "excl":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/Exception;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$24;

    invoke-direct {v0, p1, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$24;-><init>([Ljava/lang/Class;Lorg/apache/ignite/IgniteLogger;)V

    return-object v0
.end method

.method public static expireTimeInPast()J
    .locals 4

    .prologue
    .line 1736
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static factory()Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 356
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$16;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$16;-><init>()V

    return-object v0
.end method

.method public static failed(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 1
    .param p0, "err"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 331
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->failed(ZLorg/apache/ignite/internal/processors/cache/CacheObject;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v0

    return-object v0
.end method

.method public static failed(ZLorg/apache/ignite/internal/processors/cache/CacheObject;)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 1
    .param p0, "err"    # Z
    .param p1, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 342
    if-eqz p0, :cond_0

    .line 343
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    throw v0

    .line 345
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getOrSet(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/List",
            "<TV;>;>;TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1001
    .local p0, "mappings":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/List<TV;>;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1003
    .local v0, "vals":Ljava/util/List;, "Ljava/util/List<TV;>;"
    if-nez v0, :cond_0

    .line 1004
    new-instance v0, Ljava/util/LinkedList;

    .end local v0    # "vals":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .restart local v0    # "vals":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    :cond_0
    return-object v0
.end method

.method public static getOrSet(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1015
    .local p0, "mappings":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TK;Ljava/util/Collection<TV;>;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {p0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 1017
    .local v1, "vals":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v1, :cond_0

    .line 1018
    new-instance v1, Lorg/jsr166/ConcurrentLinkedDeque8;

    .end local v1    # "vals":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-direct {v1}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    .restart local v1    # "vals":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {p0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1020
    .local v0, "old":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    .line 1021
    move-object v1, v0

    .line 1024
    .end local v0    # "old":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_0
    return-object v1
.end method

.method public static hadoopSystemCache()Lorg/apache/ignite/configuration/CacheConfiguration;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1478
    new-instance v0, Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;-><init>()V

    .line 1480
    .local v0, "cache":Lorg/apache/ignite/configuration/CacheConfiguration;
    const-string v1, "ignite-hadoop-mr-sys-cache"

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setName(Ljava/lang/String;)V

    .line 1481
    sget-object v1, Lorg/apache/ignite/cache/CacheMode;->REPLICATED:Lorg/apache/ignite/cache/CacheMode;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setCacheMode(Lorg/apache/ignite/cache/CacheMode;)V

    .line 1482
    sget-object v1, Lorg/apache/ignite/cache/CacheAtomicityMode;->TRANSACTIONAL:Lorg/apache/ignite/cache/CacheAtomicityMode;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setAtomicityMode(Lorg/apache/ignite/cache/CacheAtomicityMode;)V

    .line 1483
    sget-object v1, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->FULL_SYNC:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setWriteSynchronizationMode(Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;)V

    .line 1485
    invoke-virtual {v0, v2}, Lorg/apache/ignite/configuration/CacheConfiguration;->setEvictionPolicy(Lorg/apache/ignite/cache/eviction/EvictionPolicy;)V

    .line 1486
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setSwapEnabled(Z)V

    .line 1487
    invoke-virtual {v0, v2}, Lorg/apache/ignite/configuration/CacheConfiguration;->setCacheStoreFactory(Ljavax/cache/configuration/Factory;)V

    .line 1488
    sget-object v1, Lorg/apache/ignite/configuration/CacheConfiguration;->ALL_NODES:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setNodeFilter(Lorg/apache/ignite/lang/IgnitePredicate;)V

    .line 1489
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setEagerTtl(Z)V

    .line 1490
    sget-object v1, Lorg/apache/ignite/cache/CacheRebalanceMode;->SYNC:Lorg/apache/ignite/cache/CacheRebalanceMode;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setRebalanceMode(Lorg/apache/ignite/cache/CacheRebalanceMode;)V

    .line 1492
    return-object v0
.end method

.method public static inTx(Lorg/apache/ignite/Ignite;Lorg/apache/ignite/IgniteCache;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;Lorg/apache/ignite/internal/util/lang/IgniteInClosureX;)V
    .locals 5
    .param p0, "ignite"    # Lorg/apache/ignite/Ignite;
    .param p2, "concurrency"    # Lorg/apache/ignite/transactions/TransactionConcurrency;
    .param p3, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/Ignite;",
            "Lorg/apache/ignite/IgniteCache",
            "<TK;TV;>;",
            "Lorg/apache/ignite/transactions/TransactionConcurrency;",
            "Lorg/apache/ignite/transactions/TransactionIsolation;",
            "Lorg/apache/ignite/internal/util/lang/IgniteInClosureX",
            "<",
            "Lorg/apache/ignite/IgniteCache",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1658
    .local p1, "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<TK;TV;>;"
    .local p4, "clo":Lorg/apache/ignite/internal/util/lang/IgniteInClosureX;, "Lorg/apache/ignite/internal/util/lang/IgniteInClosureX<Lorg/apache/ignite/IgniteCache<TK;TV;>;>;"
    invoke-interface {p0}, Lorg/apache/ignite/Ignite;->transactions()Lorg/apache/ignite/IgniteTransactions;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Lorg/apache/ignite/IgniteTransactions;->txStart(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/transactions/Transaction;

    move-result-object v0

    .local v0, "tx":Lorg/apache/ignite/transactions/Transaction;
    const/4 v3, 0x0

    .line 1659
    :try_start_0
    invoke-virtual {p4, p1}, Lorg/apache/ignite/internal/util/lang/IgniteInClosureX;->applyx(Ljava/lang/Object;)V

    .line 1661
    invoke-interface {v0}, Lorg/apache/ignite/transactions/Transaction;->commit()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1662
    if-eqz v0, :cond_0

    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v0}, Lorg/apache/ignite/transactions/Transaction;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1663
    :cond_0
    :goto_0
    return-void

    .line 1662
    :catch_0
    move-exception v1

    .local v1, "x2":Ljava/lang/Throwable;
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v1    # "x2":Ljava/lang/Throwable;
    :cond_1
    invoke-interface {v0}, Lorg/apache/ignite/transactions/Transaction;->close()V

    goto :goto_0

    .line 1658
    :catch_1
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1662
    :catchall_0
    move-exception v3

    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_3

    :try_start_3
    invoke-interface {v0}, Lorg/apache/ignite/transactions/Transaction;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    throw v2

    :catch_2
    move-exception v1

    .restart local v1    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v1    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-interface {v0}, Lorg/apache/ignite/transactions/Transaction;->close()V

    goto :goto_2

    :catchall_1
    move-exception v2

    goto :goto_1
.end method

.method public static inTx(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;Lorg/apache/ignite/internal/util/lang/IgniteInClosureX;)V
    .locals 5
    .param p1, "concurrency"    # Lorg/apache/ignite/transactions/TransactionConcurrency;
    .param p2, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<TK;TV;>;",
            "Lorg/apache/ignite/transactions/TransactionConcurrency;",
            "Lorg/apache/ignite/transactions/TransactionIsolation;",
            "Lorg/apache/ignite/internal/util/lang/IgniteInClosureX",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1639
    .local p0, "cache":Lorg/apache/ignite/internal/processors/cache/CacheProjection;, "Lorg/apache/ignite/internal/processors/cache/CacheProjection<TK;TV;>;"
    .local p3, "clo":Lorg/apache/ignite/internal/util/lang/IgniteInClosureX;, "Lorg/apache/ignite/internal/util/lang/IgniteInClosureX<Lorg/apache/ignite/internal/processors/cache/CacheProjection<TK;TV;>;>;"
    invoke-interface {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v0

    .local v0, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    const/4 v3, 0x0

    .line 1640
    :try_start_0
    invoke-virtual {p3, p0}, Lorg/apache/ignite/internal/util/lang/IgniteInClosureX;->applyx(Ljava/lang/Object;)V

    .line 1642
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1643
    if-eqz v0, :cond_0

    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1644
    :cond_0
    :goto_0
    return-void

    .line 1643
    :catch_0
    move-exception v1

    .local v1, "x2":Ljava/lang/Throwable;
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v1    # "x2":Ljava/lang/Throwable;
    :cond_1
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto :goto_0

    .line 1639
    :catch_1
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1643
    :catchall_0
    move-exception v3

    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_3

    :try_start_3
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    throw v2

    :catch_2
    move-exception v1

    .restart local v1    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v1    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto :goto_2

    :catchall_1
    move-exception v2

    goto :goto_1
.end method

.method public static info2Key()Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
            "TK;>;"
        }
    .end annotation

    .prologue
    .line 794
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->info2key:Lorg/apache/ignite/lang/IgniteClosure;

    return-object v0
.end method

.method public static invalidate(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<TK;TV;>;TK;)Z"
        }
    .end annotation

    .prologue
    .line 1688
    .local p0, "cache":Lorg/apache/ignite/internal/processors/cache/CacheProjection;, "Lorg/apache/ignite/internal/processors/cache/CacheProjection<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {p0, p1}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->clearLocally(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAlwaysFalse0([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 4
    .param p0, "p"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 738
    if-eqz p0, :cond_0

    array-length v2, p0

    if-ne v2, v0, :cond_0

    aget-object v2, p0, v1

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->ALWAYS_FALSE0:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isAlwaysTrue0([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 4
    .param p0, "p"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 746
    if-eqz p0, :cond_0

    array-length v2, p0

    if-ne v2, v0, :cond_0

    aget-object v2, p0, v1

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->ALWAYS_TRUE0:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isAtomicsCache(Ljava/lang/String;)Z
    .locals 1
    .param p0, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 1516
    const-string v0, "ignite-atomics-sys-cache"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHadoopSystemCache(Ljava/lang/String;)Z
    .locals 1
    .param p0, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 1469
    const-string v0, "ignite-hadoop-mr-sys-cache"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isIgfsCache(Lorg/apache/ignite/configuration/IgniteConfiguration;Ljava/lang/String;)Z
    .locals 6
    .param p0, "cfg"    # Lorg/apache/ignite/configuration/IgniteConfiguration;
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1595
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getFileSystemConfiguration()[Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v3

    .line 1597
    .local v3, "igfsCfgs":[Lorg/apache/ignite/configuration/FileSystemConfiguration;
    if-eqz v3, :cond_2

    .line 1598
    move-object v0, v3

    .local v0, "arr$":[Lorg/apache/ignite/configuration/FileSystemConfiguration;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v2, v0, v1

    .line 1600
    .local v2, "igfsCfg":Lorg/apache/ignite/configuration/FileSystemConfiguration;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDataCacheName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getMetaCacheName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1602
    :cond_0
    const/4 v5, 0x1

    .line 1606
    .end local v0    # "arr$":[Lorg/apache/ignite/configuration/FileSystemConfiguration;
    .end local v1    # "i$":I
    .end local v2    # "igfsCfg":Lorg/apache/ignite/configuration/FileSystemConfiguration;
    .end local v4    # "len$":I
    :goto_1
    return v5

    .line 1598
    .restart local v0    # "arr$":[Lorg/apache/ignite/configuration/FileSystemConfiguration;
    .restart local v1    # "i$":I
    .restart local v2    # "igfsCfg":Lorg/apache/ignite/configuration/FileSystemConfiguration;
    .restart local v4    # "len$":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1606
    .end local v0    # "arr$":[Lorg/apache/ignite/configuration/FileSystemConfiguration;
    .end local v1    # "i$":I
    .end local v2    # "igfsCfg":Lorg/apache/ignite/configuration/FileSystemConfiguration;
    .end local v4    # "len$":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static isLockTimeout(Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 1106
    if-nez p0, :cond_0

    .line 1107
    const/4 v0, 0x0

    .line 1112
    :goto_0
    return v0

    .line 1109
    :cond_0
    :goto_1
    instance-of v0, p0, Lorg/apache/ignite/IgniteCheckedException;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/apache/ignite/IgniteException;

    if-eqz v0, :cond_2

    .line 1110
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_1

    .line 1112
    :cond_2
    instance-of v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLockTimeoutException;

    goto :goto_0
.end method

.method public static isLockTimeoutOrCancelled(Ljava/lang/Throwable;)Z
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 1120
    if-nez p0, :cond_1

    .line 1126
    :cond_0
    :goto_0
    return v0

    .line 1123
    :cond_1
    :goto_1
    instance-of v1, p0, Lorg/apache/ignite/IgniteCheckedException;

    if-nez v1, :cond_2

    instance-of v1, p0, Lorg/apache/ignite/IgniteException;

    if-eqz v1, :cond_3

    .line 1124
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_1

    .line 1126
    :cond_3
    instance-of v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLockTimeoutException;

    if-nez v1, :cond_4

    instance-of v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException;

    if-eqz v1, :cond_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isMarshallerCache(Ljava/lang/String;)Z
    .locals 1
    .param p0, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 1500
    const-string v0, "ignite-marshaller-sys-cache"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNearEnabled(Lorg/apache/ignite/configuration/CacheConfiguration;)Z
    .locals 3
    .param p0, "cfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;

    .prologue
    const/4 v0, 0x0

    .line 602
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    if-ne v1, v2, :cond_1

    .line 605
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getNearConfiguration()Lorg/apache/ignite/configuration/NearCacheConfiguration;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNearEnabled(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Z
    .locals 1
    .param p0, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .prologue
    .line 591
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->isNearEnabled(Lorg/apache/ignite/configuration/CacheConfiguration;)Z

    move-result v0

    return v0
.end method

.method public static isSystemCache(Ljava/lang/String;)Z
    .locals 1
    .param p0, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 1524
    invoke-static {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->isMarshallerCache(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->isUtilityCache(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->isHadoopSystemCache(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->isAtomicsCache(Ljava/lang/String;)Z

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

.method public static isUtilityCache(Ljava/lang/String;)Z
    .locals 1
    .param p0, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 1508
    const-string v0, "ignite-sys-cache"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static keyHasMeta(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p1, "meta"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$15;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$15;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/UUID;)V

    return-object v0
.end method

.method public static localOrPrimary(Ljava/lang/Iterable;Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 3
    .param p1, "locId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/cluster/ClusterNode;"
        }
    .end annotation

    .prologue
    .line 975
    .local p0, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 977
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    .line 978
    .local v1, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 981
    .end local v1    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :goto_0
    return-object v1

    :cond_2
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cluster/ClusterNode;

    move-object v1, v2

    goto :goto_0
.end method

.method public static mapKeysToNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;*>;",
            "Ljava/util/Collection",
            "<+TK;>;)",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/Collection",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 1070
    .local p0, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;*>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1071
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 1098
    :cond_1
    :goto_0
    return-object v2

    .line 1074
    :cond_2
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v6

    sget-object v7, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    if-ne v6, v7, :cond_3

    .line 1075
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    invoke-static {v6, p1}, Lorg/apache/ignite/internal/util/typedef/F;->asMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    goto :goto_0

    .line 1077
    :cond_3
    new-instance v5, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersion()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(J)V

    .line 1079
    .local v5, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    invoke-static {p0, v5}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->affinityNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1080
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    goto :goto_0

    .line 1082
    :cond_4
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 1083
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v6

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    invoke-static {v6, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    goto :goto_0

    .line 1085
    :cond_5
    new-instance v2, Lorg/apache/ignite/internal/util/GridLeanMap;

    const/4 v6, 0x5

    invoke-direct {v2, v6}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>(I)V

    .line 1087
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection<TK;>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1088
    .local v1, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v6

    invoke-virtual {v6, v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    .line 1090
    .local v4, "primary":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 1092
    .local v3, "mapped":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    if-nez v3, :cond_6

    .line 1093
    new-instance v3, Ljava/util/LinkedList;

    .end local v3    # "mapped":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .restart local v3    # "mapped":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    :cond_6
    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static mapsReducer(I)Lorg/apache/ignite/lang/IgniteReducer;
    .locals 1
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 884
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$21;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$21;-><init>(I)V

    return-object v0
.end method

.method public static marshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/Object;)[B
    .locals 2
    .param p0, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1138
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1140
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridDeploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->enabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1141
    if-eqz p1, :cond_1

    .line 1142
    instance-of v0, p1, Ljava/lang/Iterable;

    if-eqz v0, :cond_2

    .line 1143
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->registerClasses(Ljava/lang/Iterable;)V

    .line 1153
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0

    .line 1144
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1145
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isPrimitiveArray(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1146
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v1

    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->registerClasses([Ljava/lang/Object;)V

    goto :goto_0

    .line 1149
    :cond_3
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->registerClass(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static mask(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 1326
    if-eqz p0, :cond_0

    .end local p0    # "cacheName":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "cacheName":Ljava/lang/String;
    :cond_0
    const-string p0, "<default>"

    goto :goto_0
.end method

.method public static nodeComparator(Z)Ljava/util/Comparator;
    .locals 1
    .param p0, "asc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1279
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$25;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$25;-><init>(Z)V

    return-object v0
.end method

.method public static notEvicted()Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 439
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->PART_NOT_EVICTED:Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method

.method public static objectsReducer()Lorg/apache/ignite/lang/IgniteReducer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<TT;",
            "Ljava/util/Collection",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 940
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$23;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$23;-><init>()V

    return-object v0
.end method

.method public static oldest(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1
    .param p0, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .prologue
    .line 642
    sget-object v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->oldest(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    return-object v0
.end method

.method public static oldest(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 8
    .param p0, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p1, "topOrder"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 663
    const/4 v2, 0x0

    .line 665
    .local v2, "oldest":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->aliveNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    .line 666
    .local v1, "n":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v4

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 667
    :cond_1
    move-object v2, v1

    goto :goto_0

    .line 669
    .end local v1    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_2
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    if-nez v2, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find oldest node for cache context [name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", topOrder="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 670
    :cond_3
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->$assertionsDisabled:Z

    if-nez v3, :cond_4

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_4

    sget-object v3, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v3, p1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 672
    :cond_4
    return-object v2
.end method

.method public static oldest(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1
    .param p0, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    .prologue
    .line 652
    sget-object v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->oldest(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    return-object v0
.end method

.method public static oldest(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 8
    .param p0, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .param p1, "topOrder"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 683
    const/4 v2, 0x0

    .line 685
    .local v2, "oldest":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->aliveCacheNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    .line 686
    .local v1, "n":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v4

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 687
    :cond_1
    move-object v2, v1

    goto :goto_0

    .line 690
    .end local v1    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_2
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    if-nez v2, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find oldest node with caches: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 691
    :cond_3
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->$assertionsDisabled:Z

    if-nez v3, :cond_4

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_4

    sget-object v3, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v3, p1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 693
    :cond_4
    return-object v2
.end method

.method public static outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;
    .locals 3
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1166
    .local p0, "cmd":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->inUserTx()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1167
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->closures()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocalSafe(Ljava/util/concurrent/Callable;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1170
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1172
    :catch_0
    move-exception v0

    .line 1173
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    throw v0

    .line 1175
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1176
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1172
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static part2state()Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->PART2STATE:Lorg/apache/ignite/lang/IgniteClosure;

    return-object v0
.end method

.method public static peekFlags()[Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;
    .locals 1

    .prologue
    .line 1031
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->PEEK_FLAGS:[Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    return-object v0
.end method

.method public static primary(Ljava/lang/Iterable;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/cluster/ClusterNode;"
        }
    .end annotation

    .prologue
    .line 962
    .local p0, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cluster/ClusterNode;

    .line 964
    .local v0, "n":Lorg/apache/ignite/cluster/ClusterNode;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 966
    :cond_0
    return-object v0
.end method

.method public static primaryNode(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/Object;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 4
    .param p0, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1259
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1260
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1262
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    .line 1264
    .local v0, "cfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/cache/CacheMode;->PARTITIONED:Lorg/apache/ignite/cache/CacheMode;

    if-eq v2, v3, :cond_3

    .line 1265
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    .line 1271
    :cond_2
    return-object v1

    .line 1267
    :cond_3
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    .line 1269
    .local v1, "primary":Lorg/apache/ignite/cluster/ClusterNode;
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public static readEntryFilterArray(Ljava/io/ObjectInput;)[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .locals 4
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/ObjectInput;",
            ")[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1750
    invoke-interface {p0}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    .line 1752
    .local v2, "len":I
    const/4 v0, 0x0

    .line 1754
    .local v0, "arr":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    if-lez v2, :cond_0

    .line 1755
    new-array v0, v2, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 1757
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1758
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    aput-object v3, v0, v1

    .line 1757
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1761
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static readVersion(Ljava/io/ObjectInput;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 2
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 298
    invoke-interface {p0}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    if-nez v1, :cond_1

    .line 299
    invoke-interface {p0}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;-><init>()V

    .line 301
    .local v0, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :goto_0
    invoke-virtual {v0, p0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->readExternal(Ljava/io/ObjectInput;)V

    .line 306
    .end local v0    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :goto_1
    return-object v0

    .line 299
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;-><init>()V

    goto :goto_0

    .line 306
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static reads()Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 802
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->READ_FILTER:Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method

.method public static remoteNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/util/Collection;
    .locals 1
    .param p0, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    sget-object v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->remoteNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static remoteNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;
    .locals 2
    .param p0, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p1, "topOrder"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 516
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->remoteCacheNodes(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static remoteNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Ljava/util/Collection;
    .locals 1
    .param p0, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 505
    sget-object v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->remoteNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static remoteNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;
    .locals 1
    .param p0, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 538
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->remoteCacheNodes(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static replicationTopicReceive(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 1356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_REPLICATION:Lorg/apache/ignite/internal/GridTopic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->mask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replicationTopicSend()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1346
    sget-object v0, Lorg/apache/ignite/internal/GridTopic;->TOPIC_REPLICATION:Lorg/apache/ignite/internal/GridTopic;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTopic;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static skipValue(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "val"    # Ljava/lang/Object;
    .param p1, "skip"    # Z

    .prologue
    .line 1187
    if-eqz p1, :cond_1

    .line 1188
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1190
    :goto_0
    return-object v0

    .line 1188
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 1190
    goto :goto_0
.end method

.method public static subjectId(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Ljava/util/UUID;
    .locals 1
    .param p0, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext",
            "<TK;TV;>;)",
            "Ljava/util/UUID;"
        }
    .end annotation

    .prologue
    .line 1672
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    if-nez p0, :cond_1

    .line 1673
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v0

    .line 1677
    :cond_0
    :goto_0
    return-object v0

    .line 1675
    :cond_1
    invoke-interface {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->subjectId()Ljava/util/UUID;

    move-result-object v0

    .line 1677
    .local v0, "subjId":Ljava/util/UUID;
    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->originatingNodeId()Ljava/util/UUID;

    move-result-object v0

    goto :goto_0
.end method

.method public static swapSpaceName(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 381
    .local p0, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namex()Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "gg-swap-cache-dflt"

    .line 385
    :goto_0
    return-object v0

    .line 383
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gg-swap-cache-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toExpireTime(J)J
    .locals 6
    .param p0, "ttl"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 1616
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    const-wide/16 v4, -0x2

    cmp-long v4, p0, v4

    if-eqz v4, :cond_0

    const-wide/16 v4, -0x1

    cmp-long v4, p0, v4

    if-eqz v4, :cond_0

    cmp-long v4, p0, v2

    if-gez v4, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid TTL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1618
    :cond_1
    cmp-long v4, p0, v2

    if-nez v4, :cond_3

    move-wide v0, v2

    .line 1621
    .local v0, "expireTime":J
    :goto_0
    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 1622
    const-wide/16 v0, 0x0

    .line 1624
    :cond_2
    return-wide v0

    .line 1618
    .end local v0    # "expireTime":J
    :cond_3
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    add-long v0, v4, p0

    goto :goto_0
.end method

.method public static toTtl(Ljavax/cache/expiry/Duration;)J
    .locals 4
    .param p0, "duration"    # Ljavax/cache/expiry/Duration;

    .prologue
    const-wide/16 v0, 0x0

    .line 1696
    if-nez p0, :cond_1

    .line 1697
    const-wide/16 v0, -0x1

    .line 1710
    :cond_0
    :goto_0
    return-wide v0

    .line 1699
    :cond_1
    invoke-virtual {p0}, Ljavax/cache/expiry/Duration;->getDurationAmount()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    .line 1700
    invoke-virtual {p0}, Ljavax/cache/expiry/Duration;->isEternal()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1703
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljavax/cache/expiry/Duration;->isZero()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1705
    :cond_2
    const-wide/16 v0, -0x2

    goto :goto_0

    .line 1708
    :cond_3
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljavax/cache/expiry/Duration;->getTimeUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1710
    :cond_4
    invoke-virtual {p0}, Ljavax/cache/expiry/Duration;->getTimeUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/cache/expiry/Duration;->getDurationAmount()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static ttlForLoad(Ljavax/cache/expiry/ExpiryPolicy;)J
    .locals 4
    .param p0, "plc"    # Ljavax/cache/expiry/ExpiryPolicy;

    .prologue
    .line 1720
    if-eqz p0, :cond_1

    .line 1721
    invoke-interface {p0}, Ljavax/cache/expiry/ExpiryPolicy;->getExpiryForCreation()Ljavax/cache/expiry/Duration;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->toTtl(Ljavax/cache/expiry/Duration;)J

    move-result-wide v0

    .line 1723
    .local v0, "ttl":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1724
    const-wide/16 v0, 0x0

    .line 1729
    .end local v0    # "ttl":J
    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static tx2entry()Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 770
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->tx2entry:Lorg/apache/ignite/lang/IgniteClosure;

    return-object v0
.end method

.method public static tx2key()Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            "TK;>;"
        }
    .end annotation

    .prologue
    .line 754
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->tx2key:Lorg/apache/ignite/lang/IgniteClosure;

    return-object v0
.end method

.method public static tx2xidVersion()Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 778
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->tx2xidVer:Lorg/apache/ignite/lang/IgniteClosure;

    return-object v0
.end method

.method public static txCol2Key()Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;",
            "Ljava/util/Collection",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 762
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->txCol2key:Lorg/apache/ignite/lang/IgniteClosure;

    return-object v0
.end method

.method public static txStartInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .locals 1
    .param p0, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p1, "prj"    # Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .param p2, "concurrency"    # Lorg/apache/ignite/transactions/TransactionConcurrency;
    .param p3, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;

    .prologue
    .line 1202
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1203
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1205
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->resetContext()V

    .line 1207
    invoke-interface {p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v0

    return-object v0
.end method

.method public static txString(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Ljava/lang/String;
    .locals 6
    .param p0, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1215
    if-nez p0, :cond_0

    .line 1216
    const-string v0, "null"

    .line 1218
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", concurrency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->concurrency()Lorg/apache/ignite/transactions/TransactionConcurrency;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isolation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->isolation()Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", invalidate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->isInvalidate()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rollbackOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->isRollbackOnly()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->nodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->startTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static typeFilter(Ljava/lang/Class;Ljava/lang/Class;)Lorg/apache/ignite/lang/IgniteBiPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 823
    .local p0, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "valType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$18;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$18;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static typeFilter0(Ljava/lang/Class;Ljava/lang/Class;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;"
        }
    .end annotation

    .prologue
    .line 840
    .local p0, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "valType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$19;

    invoke-direct {v1, p1, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$19;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/CacheEntrySerializablePredicate;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    return-object v0
.end method

.method public static unmask(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "cacheName"    # Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1337
    const-string v0, "<default>"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .end local p0    # "cacheName":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static unwindEvicts(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 1
    .param p0, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .prologue
    .line 1228
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1230
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->unwind()V

    .line 1232
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1233
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->unwind()V

    .line 1234
    :cond_1
    return-void
.end method

.method public static unwindEvicts(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1240
    .local p0, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContexts()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 1241
    .local v0, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p0, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1243
    :cond_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->unwind()V

    .line 1245
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1246
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->unwind()V

    goto :goto_0

    .line 1248
    .end local v0    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    :cond_2
    return-void
.end method

.method public static utilityCacheId()I
    .locals 1

    .prologue
    .line 1532
    const-string v0, "ignite-sys-cache"

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->cacheId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static uuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 258
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->UUIDS:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    return-object v0
.end method

.method public static validateCacheKey(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    .locals 3
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p1, "key"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1454
    if-nez p1, :cond_1

    .line 1462
    :cond_0
    return-void

    .line 1457
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->validateExternalizable(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1459
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->overridesEqualsAndHashCode(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1460
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache key must override hashCode() and equals() methods: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static validateCacheValue(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    .locals 0
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p1, "val"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1439
    if-nez p1, :cond_0

    .line 1443
    :goto_0
    return-void

    .line 1442
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->validateExternalizable(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static validateExternalizable(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    .locals 4
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1558
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1560
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isJdk(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, p1, Ljava/io/Externalizable;

    if-nez v1, :cond_0

    instance-of v1, p1, Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;

    if-nez v1, :cond_0

    .line 1561
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "For best performance you should implement java.io.Externalizable for all cache keys and values: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1563
    :cond_0
    return-void
.end method

.method public static value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "cacheObj"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "cpy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Z)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1829
    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static versionArrayFactory()Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1297
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->VER_ARR_FACTORY:Lorg/apache/ignite/lang/IgniteClosure;

    return-object v0
.end method

.method public static versionToBytes(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)[B
    .locals 4
    .param p0, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 1307
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1309
    :cond_0
    const/16 v1, 0x1c

    new-array v0, v1, [B

    .line 1311
    .local v0, "bytes":[B
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->topologyVersion()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    .line 1312
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->globalTime()J

    move-result-wide v2

    const/4 v1, 0x4

    invoke-static {v2, v3, v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    .line 1313
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->order()J

    move-result-wide v2

    const/16 v1, 0xc

    invoke-static {v2, v3, v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    .line 1314
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->nodeOrderAndDrIdRaw()I

    move-result v1

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    .line 1316
    return-object v0
.end method

.method public static writeVersion(Ljava/io/ObjectOutput;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 1
    .param p0, "out"    # Ljava/io/ObjectOutput;
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p0, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 281
    if-eqz p1, :cond_0

    .line 282
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;

    invoke-interface {p0, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 284
    invoke-virtual {p1, p0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 286
    :cond_0
    return-void

    .line 279
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static writes()Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 810
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->WRITE_FILTER:Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method
