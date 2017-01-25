.class public Lorg/apache/ignite/internal/visor/cache/VisorCacheMetricsCollectorTask;
.super Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;
.source "VisorCacheMetricsCollectorTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/visor/cache/VisorCacheMetricsCollectorTask$1;,
        Lorg/apache/ignite/internal/visor/cache/VisorCacheMetricsCollectorTask$VisorCacheMetricsCollectorJob;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorMultiNodeTask",
        "<",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;",
        ">;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;",
        ">;>;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/processors/task/GridInternal;
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;-><init>()V

    .line 74
    return-void
.end method


# virtual methods
.method protected bridge synthetic job(Ljava/lang/Object;)Lorg/apache/ignite/internal/visor/VisorJob;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    check-cast p1, Lorg/apache/ignite/lang/IgniteBiTuple;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetricsCollectorTask;->job(Lorg/apache/ignite/lang/IgniteBiTuple;)Lorg/apache/ignite/internal/visor/cache/VisorCacheMetricsCollectorTask$VisorCacheMetricsCollectorJob;

    move-result-object v0

    return-object v0
.end method

.method protected job(Lorg/apache/ignite/lang/IgniteBiTuple;)Lorg/apache/ignite/internal/visor/cache/VisorCacheMetricsCollectorTask$VisorCacheMetricsCollectorJob;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/ignite/internal/visor/cache/VisorCacheMetricsCollectorTask$VisorCacheMetricsCollectorJob;"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "arg":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetricsCollectorTask$VisorCacheMetricsCollectorJob;

    iget-boolean v1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetricsCollectorTask;->debug:Z

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetricsCollectorTask$VisorCacheMetricsCollectorJob;-><init>(Lorg/apache/ignite/lang/IgniteBiTuple;ZLorg/apache/ignite/internal/visor/cache/VisorCacheMetricsCollectorTask$1;)V

    return-object v0
.end method

.method protected reduce0(Ljava/util/List;)Ljava/lang/Iterable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 47
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v3

    .line 49
    .local v3, "grpAggrMetrics":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/compute/ComputeJobResult;

    .line 50
    .local v6, "res":Lorg/apache/ignite/compute/ComputeJobResult;
    invoke-interface {v6}, Lorg/apache/ignite/compute/ComputeJobResult;->getException()Lorg/apache/ignite/IgniteException;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-interface {v6}, Lorg/apache/ignite/compute/ComputeJobResult;->getData()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/util/Map;

    if-eqz v7, :cond_0

    .line 51
    invoke-interface {v6}, Lorg/apache/ignite/compute/ComputeJobResult;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 53
    .local v1, "cms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 54
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;

    .line 56
    .local v0, "am":Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;
    if-nez v0, :cond_1

    .line 57
    new-instance v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;

    .end local v0    # "am":Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v0, v7}, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;-><init>(Ljava/lang/String;)V

    .line 59
    .restart local v0    # "am":Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->metrics()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v6}, Lorg/apache/ignite/compute/ComputeJobResult;->getNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 68
    .end local v0    # "am":Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;
    .end local v1    # "cms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "res":Lorg/apache/ignite/compute/ComputeJobResult;
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v7
.end method

.method protected bridge synthetic reduce0(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetricsCollectorTask;->reduce0(Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
