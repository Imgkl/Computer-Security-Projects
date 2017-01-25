.class Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcValidationTask$1;
.super Lorg/apache/ignite/compute/ComputeJobAdapter;
.source "GridCacheQueryJdbcValidationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcValidationTask;->split(ILjava/lang/String;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ignite:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcValidationTask;

.field final synthetic val$cacheName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcValidationTask;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcValidationTask$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcValidationTask;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcValidationTask$1;->val$cacheName:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/ignite/compute/ComputeJobAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 47
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcValidationTask$1;->ignite:Lorg/apache/ignite/Ignite;

    check-cast v3, Lorg/apache/ignite/internal/IgniteKernal;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/IgniteKernal;->context()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    .line 49
    .local v0, "discoMgr":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcValidationTask$1;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v3}, Lorg/apache/ignite/Ignite;->cluster()Lorg/apache/ignite/IgniteCluster;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/IgniteCluster;->nodes()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cluster/ClusterNode;

    .line 50
    .local v2, "n":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcValidationTask$1;->val$cacheName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cacheNode(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 53
    .end local v2    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method
