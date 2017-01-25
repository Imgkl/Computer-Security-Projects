.class public Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcMetadataTask;
.super Lorg/apache/ignite/compute/ComputeTaskAdapter;
.source "GridCacheQueryJdbcMetadataTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcMetadataTask$1;,
        Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcMetadataTask$JdbcDriverMetadataJob;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/compute/ComputeTaskAdapter",
        "<",
        "Ljava/lang/String;",
        "[B>;"
    }
.end annotation


# static fields
.field private static final MARSHALLER:Lorg/apache/ignite/marshaller/Marshaller;

.field private static final serialVersionUID:J


# instance fields
.field private ignite:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;

    invoke-direct {v0}, Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcMetadataTask;->MARSHALLER:Lorg/apache/ignite/marshaller/Marshaller;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/ignite/compute/ComputeTaskAdapter;-><init>()V

    .line 78
    return-void
.end method

.method static synthetic access$100()Lorg/apache/ignite/marshaller/Marshaller;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcMetadataTask;->MARSHALLER:Lorg/apache/ignite/marshaller/Marshaller;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic map(Ljava/util/List;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 40
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcMetadataTask;->map(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .param p2, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<+",
            "Lorg/apache/ignite/compute/ComputeJob;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "subgrid":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcMetadataTask$JdbcDriverMetadataJob;Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcMetadataTask;->ignite:Lorg/apache/ignite/Ignite;

    check-cast v2, Lorg/apache/ignite/internal/IgniteKernal;

    .line 58
    .local v2, "kernal":Lorg/apache/ignite/internal/IgniteKernal;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/IgniteKernal;->context()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    .line 60
    .local v0, "discoMgr":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/cluster/ClusterNode;

    .line 61
    .local v4, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-virtual {v0, v4, p2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cacheAffinityNode(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 62
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcMetadataTask$JdbcDriverMetadataJob;

    const/4 v6, 0x0

    invoke-direct {v5, p2, v6}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcMetadataTask$JdbcDriverMetadataJob;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcMetadataTask$1;)V

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .end local v4    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_1
    return-object v3
.end method

.method public bridge synthetic reduce(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcMetadataTask;->reduce(Ljava/util/List;)[B

    move-result-object v0

    return-object v0
.end method

.method public reduce(Ljava/util/List;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/compute/ComputeJobResult;

    invoke-interface {v0}, Lorg/apache/ignite/compute/ComputeJobResult;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
