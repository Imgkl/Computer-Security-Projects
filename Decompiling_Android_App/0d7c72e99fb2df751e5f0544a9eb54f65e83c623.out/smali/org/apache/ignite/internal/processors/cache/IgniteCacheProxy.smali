.class public Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;
.super Lorg/apache/ignite/internal/AsyncSupportAdapter;
.source "IgniteCacheProxy.java"

# interfaces
.implements Lorg/apache/ignite/IgniteCache;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$ClIter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/AsyncSupportAdapter",
        "<",
        "Lorg/apache/ignite/IgniteCache",
        "<TK;TV;>;>;",
        "Lorg/apache/ignite/IgniteCache",
        "<TK;TV;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ACCEPT_ALL:Lorg/apache/ignite/lang/IgniteBiPredicate;

.field private static final serialVersionUID:J


# instance fields
.field private cacheMgr:Lorg/apache/ignite/cache/CacheManager;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
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

.field private legacyProxy:Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->$assertionsDisabled:Z

    .line 56
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ACCEPT_ALL:Lorg/apache/ignite/lang/IgniteBiPredicate;

    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/AsyncSupportAdapter;-><init>()V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;Z)V
    .locals 1
    .param p3    # Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "async"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p2, "delegate":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx<TK;TV;>;"
    .local p3, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    invoke-direct {p0, p4}, Lorg/apache/ignite/internal/AsyncSupportAdapter;-><init>(Z)V

    .line 104
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 105
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 107
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 108
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    .line 109
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    .line 111
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    .line 113
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->legacyProxy:Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;
    .param p1, "x1"    # Lorg/apache/ignite/IgniteCheckedException;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;
    .locals 1
    .param p1, "e"    # Lorg/apache/ignite/IgniteCheckedException;

    .prologue
    .line 1450
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->convertToCacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private isReplicatedDataNode()Z
    .locals 1

    .prologue
    .line 468
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isReplicated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinityNode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private projection(Z)Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 2
    .param p1, "local"    # Z

    .prologue
    .line 356
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isReplicatedDataNode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->forLocal()Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    .line 362
    :goto_0
    return-object v0

    .line 359
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isReplicated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->forDataNodes(Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterGroup;->forRandom()Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    goto :goto_0

    .line 362
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private query(Lorg/apache/ignite/cache/query/Query;Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/cache/query/QueryCursor;
    .locals 8
    .param p1, "filter"    # Lorg/apache/ignite/cache/query/Query;
    .param p2, "grp"    # Lorg/apache/ignite/cluster/ClusterGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cache/query/Query;",
            "Lorg/apache/ignite/cluster/ClusterGroup;",
            ")",
            "Lorg/apache/ignite/cache/query/QueryCursor",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    const/4 v7, 0x0

    .line 290
    instance-of v4, p1, Lorg/apache/ignite/cache/query/ScanQuery;

    if-eqz v4, :cond_2

    .line 291
    check-cast p1, Lorg/apache/ignite/cache/query/ScanQuery;

    .end local p1    # "filter":Lorg/apache/ignite/cache/query/Query;
    invoke-virtual {p1}, Lorg/apache/ignite/cache/query/ScanQuery;->getFilter()Lorg/apache/ignite/lang/IgniteBiPredicate;

    move-result-object v2

    .line 293
    .local v2, "p":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->queries()Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;

    move-result-object v4

    if-eqz v2, :cond_1

    .end local v2    # "p":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    :goto_0
    invoke-interface {v4, v2}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;->createScanQuery(Lorg/apache/ignite/lang/IgniteBiPredicate;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;

    move-result-object v3

    .line 295
    .local v3, "qry":Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p2, :cond_0

    .line 296
    invoke-interface {v3, p2}, Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;->projection(Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;

    .line 298
    :cond_0
    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;->execute([Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    move-result-object v0

    .line 326
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_1
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;

    new-instance v5, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$2;

    invoke-direct {v5, p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$2;-><init>(Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;)V

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;-><init>(Ljava/util/Iterator;)V

    return-object v4

    .line 293
    .end local v0    # "fut":Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v3    # "qry":Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery<Ljava/util/Map$Entry<TK;TV;>;>;"
    .restart local v2    # "p":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    :cond_1
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ACCEPT_ALL:Lorg/apache/ignite/lang/IgniteBiPredicate;

    goto :goto_0

    .line 300
    .end local v2    # "p":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    .restart local p1    # "filter":Lorg/apache/ignite/cache/query/Query;
    :cond_2
    instance-of v4, p1, Lorg/apache/ignite/cache/query/TextQuery;

    if-eqz v4, :cond_4

    move-object v1, p1

    .line 301
    check-cast v1, Lorg/apache/ignite/cache/query/TextQuery;

    .line 303
    .local v1, "p":Lorg/apache/ignite/cache/query/TextQuery;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->queries()Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/ignite/cache/query/TextQuery;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/ignite/cache/query/TextQuery;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;->createFullTextQuery(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;

    move-result-object v3

    .line 305
    .restart local v3    # "qry":Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p2, :cond_3

    .line 306
    invoke-interface {v3, p2}, Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;->projection(Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;

    .line 308
    :cond_3
    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;->execute([Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    move-result-object v0

    .line 309
    .restart local v0    # "fut":Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture<Ljava/util/Map$Entry<TK;TV;>;>;"
    goto :goto_1

    .line 310
    .end local v0    # "fut":Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v1    # "p":Lorg/apache/ignite/cache/query/TextQuery;
    .end local v3    # "qry":Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_4
    instance-of v4, p1, Lorg/apache/ignite/cache/query/SpiQuery;

    if-eqz v4, :cond_6

    .line 311
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->queries()Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;->createSpiQuery()Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;

    move-result-object v3

    .line 313
    .restart local v3    # "qry":Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p2, :cond_5

    .line 314
    invoke-interface {v3, p2}, Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;->projection(Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;

    .line 316
    :cond_5
    check-cast p1, Lorg/apache/ignite/cache/query/SpiQuery;

    .end local p1    # "filter":Lorg/apache/ignite/cache/query/Query;
    invoke-virtual {p1}, Lorg/apache/ignite/cache/query/SpiQuery;->getArgs()[Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;->execute([Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    move-result-object v0

    .restart local v0    # "fut":Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture<Ljava/util/Map$Entry<TK;TV;>;>;"
    goto :goto_1

    .line 319
    .end local v0    # "fut":Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v3    # "qry":Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery<Ljava/util/Map$Entry<TK;TV;>;>;"
    .restart local p1    # "filter":Lorg/apache/ignite/cache/query/Query;
    :cond_6
    instance-of v4, p1, Lorg/apache/ignite/cache/query/SqlFieldsQuery;

    if-eqz v4, :cond_7

    .line 320
    new-instance v4, Ljavax/cache/CacheException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Use methods \'queryFields\' and \'localQueryFields\' for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lorg/apache/ignite/cache/query/SqlFieldsQuery;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 323
    :cond_7
    new-instance v4, Ljavax/cache/CacheException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported query type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private queryContinuous(Lorg/apache/ignite/cache/query/ContinuousQuery;Z)Lorg/apache/ignite/cache/query/QueryCursor;
    .locals 11
    .param p1, "qry"    # Lorg/apache/ignite/cache/query/ContinuousQuery;
    .param p2, "loc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cache/query/ContinuousQuery;",
            "Z)",
            "Lorg/apache/ignite/cache/query/QueryCursor",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    const/4 v8, 0x0

    .line 374
    invoke-virtual {p1}, Lorg/apache/ignite/cache/query/ContinuousQuery;->getInitialQuery()Lorg/apache/ignite/cache/query/Query;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/ignite/cache/query/ContinuousQuery;

    if-eqz v0, :cond_0

    .line 375
    new-instance v0, Lorg/apache/ignite/IgniteException;

    const-string v1, "Initial predicate for continuous query can\'t be an instance of another continuous query. Use SCAN or SQL query for initial iteration."

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/cache/query/ContinuousQuery;->getLocalListener()Ljavax/cache/event/CacheEntryUpdatedListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 379
    new-instance v0, Lorg/apache/ignite/IgniteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mandatory local listener is not set for the query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->continuousQueries()Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/cache/query/ContinuousQuery;->getLocalListener()Ljavax/cache/event/CacheEntryUpdatedListener;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/cache/query/ContinuousQuery;->getRemoteFilter()Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/ignite/cache/query/ContinuousQuery;->getPageSize()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/ignite/cache/query/ContinuousQuery;->getTimeInterval()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/apache/ignite/cache/query/ContinuousQuery;->isAutoUnsubscribe()Z

    move-result v6

    if-eqz p2, :cond_3

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->forLocal()Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v7

    :goto_0
    invoke-virtual/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->executeQuery(Ljavax/cache/event/CacheEntryUpdatedListener;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;IJZLorg/apache/ignite/cluster/ClusterGroup;)Ljava/util/UUID;

    move-result-object v10

    .line 390
    .local v10, "routineId":Ljava/util/UUID;
    invoke-virtual {p1}, Lorg/apache/ignite/cache/query/ContinuousQuery;->getInitialQuery()Lorg/apache/ignite/cache/query/Query;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/ignite/cache/query/ContinuousQuery;->getInitialQuery()Lorg/apache/ignite/cache/query/Query;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->query(Lorg/apache/ignite/cache/query/Query;)Lorg/apache/ignite/cache/query/QueryCursor;

    move-result-object v8

    .line 393
    .local v8, "cur":Lorg/apache/ignite/cache/query/QueryCursor;, "Lorg/apache/ignite/cache/query/QueryCursor<Ljavax/cache/Cache$Entry<TK;TV;>;>;"
    :cond_2
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$3;

    invoke-direct {v0, p0, v8, v10}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$3;-><init>(Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;Lorg/apache/ignite/cache/query/QueryCursor;Ljava/util/UUID;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .end local v8    # "cur":Lorg/apache/ignite/cache/query/QueryCursor;, "Lorg/apache/ignite/cache/query/QueryCursor<Ljavax/cache/Cache$Entry<TK;TV;>;>;"
    .end local v10    # "routineId":Ljava/util/UUID;
    :cond_3
    move-object v7, v8

    .line 382
    goto :goto_0

    .line 415
    :catch_0
    move-exception v9

    .line 416
    .local v9, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v0

    throw v0
.end method

.method private setFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 1457
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->curFut:Ljava/lang/ThreadLocal;

    new-instance v1, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;

    invoke-direct {v1, p1}, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1458
    return-void
.end method

.method private validate(Lorg/apache/ignite/cache/query/Query;)V
    .locals 3
    .param p1, "qry"    # Lorg/apache/ignite/cache/query/Query;

    .prologue
    .line 478
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->isEnabled(Lorg/apache/ignite/configuration/CacheConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/apache/ignite/cache/query/ScanQuery;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/apache/ignite/cache/query/ContinuousQuery;

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Ljavax/cache/CacheException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Indexing is disabled for cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 1046
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v1

    .line 1049
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1050
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->clearAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->setFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1058
    :goto_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 1060
    return-void

    .line 1052
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->clear()V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1054
    :catch_0
    move-exception v0

    .line 1055
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1058
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
.end method

.method public clear(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 1010
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v1

    .line 1013
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1014
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->clearAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->setFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1022
    :goto_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 1024
    return-void

    .line 1016
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->clear(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1018
    :catch_0
    move-exception v0

    .line 1019
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1022
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
.end method

.method public clearAll(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 1028
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v1

    .line 1031
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1032
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->clearAsync(Ljava/util/Set;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->setFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1040
    :goto_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 1042
    return-void

    .line 1034
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->clearAll(Ljava/util/Set;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1036
    :catch_0
    move-exception v0

    .line 1037
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1040
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
.end method

.method public close()V
    .locals 4

    .prologue
    .line 1257
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enterIfNotClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1275
    :goto_0
    return-void

    .line 1263
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->dynamicStopCache(Ljava/lang/String;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1266
    .local v1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    .line 1270
    :try_start_1
    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1272
    :catch_0
    move-exception v0

    .line 1273
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1266
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v1    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v2
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 681
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 684
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 685
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->containsKeyAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->setFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    const/4 v1, 0x0

    .line 693
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    :goto_0
    return v1

    .line 690
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 693
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public containsKeys(Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+TK;>;)Z"
        }
    .end annotation

    .prologue
    .line 699
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 702
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 703
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->containsKeysAsync(Ljava/util/Collection;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->setFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    const/4 v1, 0x0

    .line 711
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    :goto_0
    return v1

    .line 708
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->containsKeys(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 711
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
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
    .line 120
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method protected createAsyncInstance()Lorg/apache/ignite/IgniteCache;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/IgniteCache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1354
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;Z)V

    return-object v0
.end method

.method protected bridge synthetic createAsyncInstance()Lorg/apache/ignite/lang/IgniteAsyncSupport;
    .locals 1

    .prologue
    .line 50
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->createAsyncInstance()Lorg/apache/ignite/IgniteCache;

    move-result-object v0

    return-object v0
.end method

.method public delegate()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    .locals 1

    .prologue
    .line 1294
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    return-object v0
.end method

.method public deregisterCacheEntryListener(Ljavax/cache/configuration/CacheEntryListenerConfiguration;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/configuration/CacheEntryListenerConfiguration",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1327
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "lsnrCfg":Ljavax/cache/configuration/CacheEntryListenerConfiguration;, "Ljavax/cache/configuration/CacheEntryListenerConfiguration<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v1

    .line 1330
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->continuousQueries()Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cancelJCacheQuery(Ljavax/cache/configuration/CacheEntryListenerConfiguration;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1336
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 1338
    return-void

    .line 1332
    :catch_0
    move-exception v0

    .line 1333
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1336
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
.end method

.method public varargs entrySetx([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;
    .locals 3
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
    .line 669
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 672
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->entrySetx([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 675
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public flagOn(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Lorg/apache/ignite/IgniteCache;
    .locals 11
    .param p1, "flag"    # Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/CacheFlag;",
            ")",
            "Lorg/apache/ignite/IgniteCache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    const/4 v7, 0x0

    .line 1408
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v9

    .line 1413
    .local v9, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->flags()Ljava/util/Set;

    move-result-object v8

    .line 1415
    .local v8, "flags0":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/CacheFlag;>;"
    :goto_0
    if-eqz v8, :cond_3

    .line 1416
    invoke-interface {v8, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 1441
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    :goto_1
    return-object p0

    .end local v8    # "flags0":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/CacheFlag;>;"
    .restart local p0    # "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    :cond_0
    move-object v8, v7

    .line 1413
    goto :goto_0

    .line 1419
    .restart local v8    # "flags0":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/CacheFlag;>;"
    :cond_1
    :try_start_1
    invoke-static {v8}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v4

    .line 1424
    .local v4, "res":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/CacheFlag;>;"
    :goto_2
    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1426
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    :goto_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v3, 0x0

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->subjectId()Ljava/util/UUID;

    move-result-object v5

    :goto_4
    const/4 v6, 0x1

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    if-eqz v10, :cond_2

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v7

    :cond_2
    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Ljava/util/Set;Ljava/util/UUID;ZLjavax/cache/expiry/ExpiryPolicy;)V

    .line 1435
    .local v0, "prj0":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v3

    invoke-direct {v1, v2, v0, v0, v3}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1441
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    move-object p0, v1

    goto :goto_1

    .line 1422
    .end local v0    # "prj0":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .end local v4    # "res":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/CacheFlag;>;"
    :cond_3
    :try_start_2
    const-class v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    .restart local v4    # "res":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/CacheFlag;>;"
    goto :goto_2

    .line 1426
    :cond_4
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_5
    move-object v5, v7

    goto :goto_4

    .line 1441
    .end local v4    # "res":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/CacheFlag;>;"
    .end local v8    # "flags0":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/CacheFlag;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
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
    .line 127
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 593
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 596
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 597
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->getAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->setFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 599
    const/4 v2, 0x0

    .line 605
    :try_start_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return-object v2

    .line 602
    :cond_0
    :try_start_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 605
    :try_start_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 608
    .end local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catch_0
    move-exception v0

    .line 609
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 605
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catchall_0
    move-exception v2

    :try_start_5
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public getAll(Ljava/util/Collection;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 642
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 645
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 646
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->getAllAsync(Ljava/util/Collection;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->setFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    const/4 v2, 0x0

    .line 654
    :try_start_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return-object v2

    .line 651
    :cond_0
    :try_start_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->getAll(Ljava/util/Collection;)Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 654
    :try_start_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 657
    .end local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catch_0
    move-exception v0

    .line 658
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 654
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catchall_0
    move-exception v2

    :try_start_5
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public getAll(Ljava/util/Set;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+TK;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 616
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 619
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 620
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->getAllAsync(Ljava/util/Collection;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->setFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 622
    const/4 v2, 0x0

    .line 628
    :try_start_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return-object v2

    .line 625
    :cond_0
    :try_start_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->getAll(Ljava/util/Collection;)Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 628
    :try_start_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 631
    .end local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 628
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catchall_0
    move-exception v2

    :try_start_5
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public getAndPut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 769
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 772
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 773
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v2, p1, p2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putAsync(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->setFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 775
    const/4 v2, 0x0

    .line 781
    :try_start_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return-object v2

    .line 778
    :cond_0
    :try_start_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v2, p1, p2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->put(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 781
    :try_start_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 784
    .end local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catch_0
    move-exception v0

    .line 785
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 781
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catchall_0
    move-exception v2

    :try_start_5
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public getAndPutIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 238
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 241
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putIfAbsentAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->setFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    const/4 v2, 0x0

    .line 250
    :try_start_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return-object v2

    .line 247
    :cond_0
    :try_start_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 250
    :try_start_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 253
    .end local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 250
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catchall_0
    move-exception v2

    :try_start_5
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public getAndRemove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 881
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 884
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 885
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v2, p1, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->removeAsync(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->setFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 887
    const/4 v2, 0x0

    .line 893
    :try_start_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return-object v2

    .line 890
    :cond_0
    :try_start_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v2, p1, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->remove(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 893
    :try_start_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 896
    .end local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catch_0
    move-exception v0

    .line 897
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 893
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catchall_0
    move-exception v2

    :try_start_5
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public getAndReplace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 950
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 953
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 954
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->replaceAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->setFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 956
    const/4 v2, 0x0

    .line 962
    :try_start_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return-object v2

    .line 959
    :cond_0
    :try_start_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 962
    :try_start_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 965
    .end local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catch_0
    move-exception v0

    .line 966
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 962
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catchall_0
    move-exception v2

    :try_start_5
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public bridge synthetic getCacheManager()Ljavax/cache/CacheManager;
    .locals 1

    .prologue
    .line 50
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->getCacheManager()Lorg/apache/ignite/cache/CacheManager;

    move-result-object v0

    return-object v0
.end method

.method public getCacheManager()Lorg/apache/ignite/cache/CacheManager;
    .locals 1

    .prologue
    .line 1245
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheMgr:Lorg/apache/ignite/cache/CacheManager;

    return-object v0
.end method

.method public getConfiguration(Ljava/lang/Class;)Ljavax/cache/configuration/Configuration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljavax/cache/configuration/Configuration",
            "<TK;TV;>;>(",
            "Ljava/lang/Class",
            "<TC;>;)TC;"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TC;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    .line 158
    .local v0, "cfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 161
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/cache/configuration/Configuration;

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1240
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljava/lang/Object;
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
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/processor/EntryProcessorException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;"
    const/4 v5, 0x0

    .line 1091
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1094
    .local v3, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1095
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v6, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invokeAsync(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    .line 1097
    .local v1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljavax/cache/processor/EntryProcessorResult<TT;>;>;"
    new-instance v6, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$5;

    invoke-direct {v6, p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$5;-><init>(Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;)V

    invoke-interface {v1, v6}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    .line 1106
    .local v2, "fut0":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->setFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1117
    :try_start_2
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v6, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v1    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljavax/cache/processor/EntryProcessorResult<TT;>;>;"
    .end local v2    # "fut0":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    :goto_0
    return-object v5

    .line 1111
    :cond_0
    :try_start_3
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v6, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;

    move-result-object v4

    .line 1113
    .local v4, "res":Ljavax/cache/processor/EntryProcessorResult;, "Ljavax/cache/processor/EntryProcessorResult<TT;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljavax/cache/processor/EntryProcessorResult;->get()Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .line 1117
    :cond_1
    :try_start_4
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v6, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1120
    .end local v3    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .end local v4    # "res":Ljavax/cache/processor/EntryProcessorResult;, "Ljavax/cache/processor/EntryProcessorResult<TT;>;"
    :catch_0
    move-exception v0

    .line 1121
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 1117
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v3    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catchall_0
    move-exception v5

    :try_start_5
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v6, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v5
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public varargs invoke(Ljava/lang/Object;Lorg/apache/ignite/cache/CacheEntryProcessor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lorg/apache/ignite/cache/CacheEntryProcessor",
            "<TK;TV;TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/processor/EntryProcessorException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "entryProcessor":Lorg/apache/ignite/cache/CacheEntryProcessor;, "Lorg/apache/ignite/cache/CacheEntryProcessor<TK;TV;TT;>;"
    const/4 v5, 0x0

    .line 1129
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1132
    .local v3, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1133
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v6, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invokeAsync(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    .line 1135
    .local v1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljavax/cache/processor/EntryProcessorResult<TT;>;>;"
    new-instance v6, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$6;

    invoke-direct {v6, p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$6;-><init>(Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;)V

    invoke-interface {v1, v6}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    .line 1144
    .local v2, "fut0":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->setFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1155
    :try_start_2
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v6, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v1    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljavax/cache/processor/EntryProcessorResult<TT;>;>;"
    .end local v2    # "fut0":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    :goto_0
    return-object v5

    .line 1149
    :cond_0
    :try_start_3
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v6, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;

    move-result-object v4

    .line 1151
    .local v4, "res":Ljavax/cache/processor/EntryProcessorResult;, "Ljavax/cache/processor/EntryProcessorResult<TT;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljavax/cache/processor/EntryProcessorResult;->get()Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .line 1155
    :cond_1
    :try_start_4
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v6, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1158
    .end local v3    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .end local v4    # "res":Ljavax/cache/processor/EntryProcessorResult;, "Ljavax/cache/processor/EntryProcessorResult<TT;>;"
    :catch_0
    move-exception v0

    .line 1159
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 1155
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v3    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catchall_0
    move-exception v5

    :try_start_5
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v6, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v5
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public varargs invokeAll(Ljava/util/Map;[Ljava/lang/Object;)Ljava/util/Map;
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
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1218
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1221
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1222
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invokeAllAsync(Ljava/util/Map;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->setFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1224
    const/4 v2, 0x0

    .line 1230
    :try_start_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return-object v2

    .line 1227
    :cond_0
    :try_start_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invokeAll(Ljava/util/Map;[Ljava/lang/Object;)Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 1230
    :try_start_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1233
    .end local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catch_0
    move-exception v0

    .line 1234
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1230
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catchall_0
    move-exception v2

    :try_start_5
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public varargs invokeAll(Ljava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljava/util/Map;
    .locals 4
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

    .prologue
    .line 1168
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .local p2, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1171
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1172
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invokeAllAsync(Ljava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->setFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1174
    const/4 v2, 0x0

    .line 1180
    :try_start_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return-object v2

    .line 1177
    :cond_0
    :try_start_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invokeAll(Ljava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 1180
    :try_start_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1183
    .end local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catch_0
    move-exception v0

    .line 1184
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1180
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catchall_0
    move-exception v2

    :try_start_5
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public varargs invokeAll(Ljava/util/Set;Lorg/apache/ignite/cache/CacheEntryProcessor;[Ljava/lang/Object;)Ljava/util/Map;
    .locals 4
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<+TK;>;",
            "Lorg/apache/ignite/cache/CacheEntryProcessor",
            "<TK;TV;TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1193
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .local p2, "entryProcessor":Lorg/apache/ignite/cache/CacheEntryProcessor;, "Lorg/apache/ignite/cache/CacheEntryProcessor<TK;TV;TT;>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1196
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1197
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invokeAllAsync(Ljava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->setFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1199
    const/4 v2, 0x0

    .line 1205
    :try_start_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return-object v2

    .line 1202
    :cond_0
    :try_start_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invokeAll(Ljava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 1205
    :try_start_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1208
    .end local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catch_0
    move-exception v0

    .line 1209
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1205
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catchall_0
    move-exception v2

    :try_start_5
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    .line 1279
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enterIfNotClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1280
    const/4 v0, 0x1

    .line 1286
    :goto_0
    return v0

    .line 1283
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->closed(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1286
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v0
.end method

.method public isLocalLocked(Ljava/lang/Object;Z)Z
    .locals 3
    .param p2, "byCurrThread"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)Z"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 273
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->isLockedByThread(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 276
    :goto_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v1

    .line 273
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->isLocked(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
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
    .line 1342
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1345
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->igniteIterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1348
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public keepPortable()Lorg/apache/ignite/IgniteCache;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/IgniteCache",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    const/4 v7, 0x0

    .line 1381
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v8

    .line 1384
    .local v8, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    :goto_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->flags()Ljava/util/Set;

    move-result-object v4

    :goto_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->subjectId()Ljava/util/UUID;

    move-result-object v5

    :goto_2
    const/4 v6, 0x1

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    if-eqz v9, :cond_0

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v7

    :cond_0
    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Ljava/util/Set;Ljava/util/UUID;ZLjavax/cache/expiry/ExpiryPolicy;)V

    .line 1393
    .local v0, "prj0":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK1;TV1;>;"
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v3

    invoke-direct {v1, v2, v0, v0, v3}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1399
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    .line 1384
    .end local v0    # "prj0":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK1;TV1;>;"
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    move-object v4, v7

    goto :goto_1

    :cond_3
    move-object v5, v7

    goto :goto_2

    .line 1399
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public legacyProxy()Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1465
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->legacyProxy:Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;

    return-object v0
.end method

.method public loadAll(Ljava/util/Set;ZLjavax/cache/integration/CompletionListener;)V
    .locals 4
    .param p2, "replaceExisting"    # Z
    .param p3, "completionLsnr"    # Ljavax/cache/integration/CompletionListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+TK;>;Z",
            "Ljavax/cache/integration/CompletionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 721
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v1

    .line 724
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->loadAll(Ljava/util/Set;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 726
    .local v0, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    if-eqz p3, :cond_0

    .line 727
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$4;

    invoke-direct {v2, p0, p3}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$4;-><init>(Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;Ljavax/cache/integration/CompletionListener;)V

    invoke-interface {v0, v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 744
    return-void

    .line 742
    .end local v0    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
.end method

.method public varargs loadCache(Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;)V
    .locals 4
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

    .prologue
    .line 198
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "p":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 201
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->globalLoadCacheAsync(Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->setFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    :goto_0
    :try_start_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 213
    return-void

    .line 204
    :cond_0
    :try_start_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->globalLoadCache(Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v2

    :try_start_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 210
    .end local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public localClear(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 1064
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 1067
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->clearLocally(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1070
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 1072
    return-void

    .line 1070
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public localClearAll(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 1076
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v2

    .line 1079
    .local v2, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1080
    .local v1, "key":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->clearLocally(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1083
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v4, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 1085
    return-void
.end method

.method public varargs localEntries([Lorg/apache/ignite/cache/CachePeekMode;)Ljava/lang/Iterable;
    .locals 4
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
            Ljavax/cache/CacheException;
        }
    .end annotation

    .prologue
    .line 485
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v1

    .line 488
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->localEntries([Lorg/apache/ignite/cache/CachePeekMode;)Ljava/lang/Iterable;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 494
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v2

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
.end method

.method public localEvict(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)V"
        }
    .end annotation

    .prologue
    .line 512
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 515
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->evictAll(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 520
    return-void

    .line 518
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public varargs localLoadCache(Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;)V
    .locals 4
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

    .prologue
    .line 218
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "p":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 221
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->localLoadCacheAsync(Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->setFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :goto_0
    :try_start_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 233
    return-void

    .line 224
    :cond_0
    :try_start_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->localLoadCache(Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v2

    :try_start_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 230
    .end local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public varargs localPeek(Ljava/lang/Object;[Lorg/apache/ignite/cache/CachePeekMode;)Ljava/lang/Object;
    .locals 4
    .param p2, "peekModes"    # [Lorg/apache/ignite/cache/CachePeekMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[",
            "Lorg/apache/ignite/cache/CachePeekMode;",
            ")TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 524
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v1

    .line 527
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    const/4 v3, 0x0

    invoke-interface {v2, p1, p2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->localPeek(Ljava/lang/Object;[Lorg/apache/ignite/cache/CachePeekMode;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 533
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v2

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
.end method

.method public localPromote(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+TK;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;
        }
    .end annotation

    .prologue
    .line 540
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 543
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->promoteAll(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    :try_start_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 552
    return-void

    .line 546
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 549
    .end local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public varargs localSize([Lorg/apache/ignite/cache/CachePeekMode;)I
    .locals 4
    .param p1, "peekModes"    # [Lorg/apache/ignite/cache/CachePeekMode;

    .prologue
    .line 577
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v1

    .line 580
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->localSize([Lorg/apache/ignite/cache/CachePeekMode;)I
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 586
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v2

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 586
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
.end method

.method public lock(Ljava/lang/Object;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/locks/Lock;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->lockAll(Ljava/util/Collection;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    return-object v0
.end method

.method public lockAll(Ljava/util/Collection;)Ljava/util/concurrent/locks/Lock;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)",
            "Ljava/util/concurrent/locks/Lock;"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;Ljava/util/Collection;)V

    return-object v0
.end method

.method public metrics()Lorg/apache/ignite/cache/CacheMetrics;
    .locals 3

    .prologue
    .line 132
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 135
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics()Lorg/apache/ignite/cache/CacheMetrics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 138
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public mxBean()Lorg/apache/ignite/mxbean/CacheMetricsMXBean;
    .locals 3

    .prologue
    .line 144
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 147
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->mxBean()Lorg/apache/ignite/mxbean/CacheMetricsMXBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 150
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 749
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 752
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 753
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v2, p1, p2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putxAsync(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->setFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 758
    :goto_0
    :try_start_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 764
    return-void

    .line 755
    :cond_0
    :try_start_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v2, p1, p2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putx(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 758
    :catchall_0
    move-exception v2

    :try_start_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 761
    .end local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catch_0
    move-exception v0

    .line 762
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 792
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 795
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 796
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v2, p1, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putAllAsync(Ljava/util/Map;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->setFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 801
    :goto_0
    :try_start_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 807
    return-void

    .line 798
    :cond_0
    :try_start_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v2, p1, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putAll(Ljava/util/Map;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 801
    :catchall_0
    move-exception v2

    :try_start_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 804
    .end local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catch_0
    move-exception v0

    .line 805
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 812
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 815
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 816
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putxIfAbsentAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->setFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 818
    const/4 v2, 0x0

    .line 824
    :try_start_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return v2

    .line 821
    :cond_0
    :try_start_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putxIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    .line 824
    :try_start_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 827
    .end local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catch_0
    move-exception v0

    .line 828
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 824
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catchall_0
    move-exception v2

    :try_start_5
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public query(Lorg/apache/ignite/cache/query/Query;)Lorg/apache/ignite/cache/query/QueryCursor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/cache/query/Query",
            "<TR;>;)",
            "Lorg/apache/ignite/cache/query/QueryCursor",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "qry":Lorg/apache/ignite/cache/query/Query;, "Lorg/apache/ignite/cache/query/Query<TR;>;"
    const-string v4, "qry"

    invoke-static {p1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v3

    .line 428
    .local v3, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->validate(Lorg/apache/ignite/cache/query/Query;)V

    .line 430
    instance-of v4, p1, Lorg/apache/ignite/cache/query/ContinuousQuery;

    if-eqz v4, :cond_0

    .line 431
    move-object v0, p1

    check-cast v0, Lorg/apache/ignite/cache/query/ContinuousQuery;

    move-object v4, v0

    invoke-virtual {p1}, Lorg/apache/ignite/cache/query/Query;->isLocal()Z

    move-result v5

    invoke-direct {p0, v4, v5}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->queryContinuous(Lorg/apache/ignite/cache/query/ContinuousQuery;Z)Lorg/apache/ignite/cache/query/QueryCursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 460
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v5, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    :goto_0
    return-object v4

    .line 433
    :cond_0
    :try_start_1
    instance-of v4, p1, Lorg/apache/ignite/cache/query/SqlQuery;

    if-eqz v4, :cond_3

    .line 434
    move-object v0, p1

    check-cast v0, Lorg/apache/ignite/cache/query/SqlQuery;

    move-object v2, v0

    .line 436
    .local v2, "p":Lorg/apache/ignite/cache/query/SqlQuery;
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isReplicatedDataNode()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lorg/apache/ignite/cache/query/Query;->isLocal()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 437
    :cond_1
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->query()Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5, v6, v2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->queryLocal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/cache/query/SqlQuery;)Ljava/util/Iterator;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/processors/cache/QueryCursorImpl;-><init>(Ljava/util/Iterator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v5, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    goto :goto_0

    .line 439
    :cond_2
    :try_start_2
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->query()Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4, v5, v2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->queryTwoStep(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/cache/query/SqlQuery;)Lorg/apache/ignite/cache/query/QueryCursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 460
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v5, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    goto :goto_0

    .line 442
    .end local v2    # "p":Lorg/apache/ignite/cache/query/SqlQuery;
    :cond_3
    :try_start_3
    instance-of v4, p1, Lorg/apache/ignite/cache/query/SqlFieldsQuery;

    if-eqz v4, :cond_6

    .line 443
    move-object v0, p1

    check-cast v0, Lorg/apache/ignite/cache/query/SqlFieldsQuery;

    move-object v2, v0

    .line 445
    .local v2, "p":Lorg/apache/ignite/cache/query/SqlFieldsQuery;
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isReplicatedDataNode()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lorg/apache/ignite/cache/query/Query;->isLocal()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 446
    :cond_4
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->query()Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4, v5, v2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->queryLocalFields(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/cache/query/SqlFieldsQuery;)Lorg/apache/ignite/cache/query/QueryCursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 460
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v5, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    goto :goto_0

    .line 448
    :cond_5
    :try_start_4
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->query()Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4, v5, v2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->queryTwoStep(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/cache/query/SqlFieldsQuery;)Lorg/apache/ignite/cache/query/QueryCursor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    .line 460
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v5, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    goto/16 :goto_0

    .line 451
    .end local v2    # "p":Lorg/apache/ignite/cache/query/SqlFieldsQuery;
    :cond_6
    :try_start_5
    invoke-virtual {p1}, Lorg/apache/ignite/cache/query/Query;->isLocal()Z

    move-result v4

    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->projection(Z)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->query(Lorg/apache/ignite/cache/query/Query;Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/cache/query/QueryCursor;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v4

    .line 460
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v5, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    goto/16 :goto_0

    .line 453
    :catch_0
    move-exception v1

    .line 454
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    instance-of v4, v1, Ljavax/cache/CacheException;

    if-eqz v4, :cond_7

    .line 455
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 460
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v5, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v4

    .line 457
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_7
    new-instance v4, Ljavax/cache/CacheException;

    invoke-direct {v4, v1}, Ljavax/cache/CacheException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public queryMetrics()Lorg/apache/ignite/cache/query/QueryMetrics;
    .locals 3

    .prologue
    .line 500
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 503
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->queries()Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;->metrics()Lorg/apache/ignite/cache/query/QueryMetrics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 506
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public randomEntry()Ljavax/cache/Cache$Entry;
    .locals 3
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
    .line 166
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 169
    .local v0, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->randomEntry()Ljavax/cache/Cache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 172
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1480
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 1482
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    .line 1484
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    .line 1486
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    .line 1487
    return-void
.end method

.method public rebalance()Lorg/apache/ignite/lang/IgniteFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1491
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;->forcePreload()V

    .line 1493
    new-instance v0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;->syncFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-object v0
.end method

.method public registerCacheEntryListener(Ljavax/cache/configuration/CacheEntryListenerConfiguration;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/configuration/CacheEntryListenerConfiguration",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1312
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "lsnrCfg":Ljavax/cache/configuration/CacheEntryListenerConfiguration;, "Ljavax/cache/configuration/CacheEntryListenerConfiguration<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v1

    .line 1315
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->continuousQueries()Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->executeJCacheQuery(Ljavax/cache/configuration/CacheEntryListenerConfiguration;Z)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1321
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 1323
    return-void

    .line 1317
    :catch_0
    move-exception v0

    .line 1318
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1321
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x0

    .line 835
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 838
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 839
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    const/4 v4, 0x0

    new-array v4, v4, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v3, p1, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->removexAsync(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->setFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 847
    :try_start_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return v2

    .line 844
    :cond_0
    :try_start_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v2, p1, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->removex(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    .line 847
    :try_start_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 850
    .end local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catch_0
    move-exception v0

    .line 851
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 847
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catchall_0
    move-exception v2

    :try_start_5
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 858
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 861
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 862
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->removeAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->setFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 864
    const/4 v2, 0x0

    .line 870
    :try_start_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return v2

    .line 867
    :cond_0
    :try_start_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    .line 870
    :try_start_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 873
    .end local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catch_0
    move-exception v0

    .line 874
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 870
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catchall_0
    move-exception v2

    :try_start_5
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public removeAll()V
    .locals 4

    .prologue
    .line 992
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v1

    .line 995
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 996
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->removeAllAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->setFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1004
    :goto_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 1006
    return-void

    .line 998
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->removeAll()V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1000
    :catch_0
    move-exception v0

    .line 1001
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1004
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
.end method

.method public removeAll(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+TK;>;)V"
        }
    .end annotation

    .prologue
    .line 973
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 976
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 977
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v2, p1, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->removeAllAsync(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->setFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 982
    :goto_0
    :try_start_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 988
    return-void

    .line 979
    :cond_0
    :try_start_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v2, p1, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->removeAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 982
    :catchall_0
    move-exception v2

    :try_start_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 985
    .end local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catch_0
    move-exception v0

    .line 986
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 927
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 930
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 931
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->replacexAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->setFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 933
    const/4 v2, 0x0

    .line 939
    :try_start_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return v2

    .line 936
    :cond_0
    :try_start_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->replacex(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    .line 939
    :try_start_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 942
    .end local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catch_0
    move-exception v0

    .line 943
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 939
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catchall_0
    move-exception v2

    :try_start_5
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 904
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 907
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 908
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->replaceAsync(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->setFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 910
    const/4 v2, 0x0

    .line 916
    :try_start_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return v2

    .line 913
    :cond_0
    :try_start_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    .line 916
    :try_start_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 919
    .end local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catch_0
    move-exception v0

    .line 920
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 916
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catchall_0
    move-exception v2

    :try_start_5
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public setCacheManager(Lorg/apache/ignite/cache/CacheManager;)V
    .locals 0
    .param p1, "cacheMgr"    # Lorg/apache/ignite/cache/CacheManager;

    .prologue
    .line 1252
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheMgr:Lorg/apache/ignite/cache/CacheManager;

    .line 1253
    return-void
.end method

.method public varargs size([Lorg/apache/ignite/cache/CachePeekMode;)I
    .locals 4
    .param p1, "peekModes"    # [Lorg/apache/ignite/cache/CachePeekMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;
        }
    .end annotation

    .prologue
    .line 556
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v1

    .line 559
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 560
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->sizeAsync([Lorg/apache/ignite/cache/CachePeekMode;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->setFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    const/4 v2, 0x0

    .line 571
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    :goto_0
    return v2

    .line 565
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->size([Lorg/apache/ignite/cache/CachePeekMode;)I
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 571
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    goto :goto_0

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->cacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 571
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1498
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1300
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1305
    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    :goto_0
    return-object p0

    .line 1302
    .restart local p0    # "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    :cond_0
    const-class v0, Lorg/apache/ignite/internal/IgniteEx;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1303
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object p0

    goto :goto_0

    .line 1304
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->legacyProxy:Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1305
    iget-object p0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->legacyProxy:Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;

    goto :goto_0

    .line 1307
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unwrapping to class is not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic withAsync()Lorg/apache/ignite/IgniteCache;
    .locals 1

    .prologue
    .line 50
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/ignite/internal/AsyncSupportAdapter;->withAsync()Lorg/apache/ignite/lang/IgniteAsyncSupport;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/IgniteCache;

    return-object v0
.end method

.method public withExpiryPolicy(Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/IgniteCache;
    .locals 7
    .param p1, "plc"    # Ljavax/cache/expiry/ExpiryPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/expiry/ExpiryPolicy;",
            ")",
            "Lorg/apache/ignite/IgniteCache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v1

    .line 181
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v3, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->withExpiryPolicy(Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-result-object v2

    .line 183
    .local v2, "prj0":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx<TK;TV;>;"
    :goto_0
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object v0, v2

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-object v3, v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->isAsync()Z

    move-result v6

    invoke-direct {v4, v5, v2, v3, v6}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v4

    .line 181
    .end local v2    # "prj0":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx<TK;TV;>;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v3, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->withExpiryPolicy(Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v4, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v3
.end method

.method public withSkipStore()Lorg/apache/ignite/IgniteCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/IgniteCache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->SKIP_STORE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->flagOn(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Lorg/apache/ignite/IgniteCache;

    move-result-object v0

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
    .line 1470
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1472
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1474
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1475
    return-void
.end method
