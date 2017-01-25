.class public Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTask;
.super Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;
.source "VisorNodeDataCollectorTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorMultiNodeTask",
        "<",
        "Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;",
        "Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;",
        "Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/processors/task/GridInternal;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTask;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTask;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic job(Ljava/lang/Object;)Lorg/apache/ignite/internal/visor/VisorJob;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p1, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTask;->job(Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;)Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;

    move-result-object v0

    return-object v0
.end method

.method protected job(Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;)Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;
    .locals 2
    .param p1, "arg"    # Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;

    .prologue
    .line 62
    new-instance v0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;

    iget-boolean v1, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTask;->debug:Z

    invoke-direct {v0, p1, v1}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;-><init>(Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;Z)V

    return-object v0
.end method

.method protected map0(Ljava/util/List;Lorg/apache/ignite/internal/visor/VisorTaskArgument;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Lorg/apache/ignite/internal/visor/VisorTaskArgument",
            "<",
            "Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;",
            ">;)",
            "Ljava/util/Map",
            "<+",
            "Lorg/apache/ignite/compute/ComputeJob;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "subgrid":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .local p2, "arg":Lorg/apache/ignite/internal/visor/VisorTaskArgument;, "Lorg/apache/ignite/internal/visor/VisorTaskArgument<Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTask;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 46
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v1

    .line 49
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/compute/ComputeJob;Lorg/apache/ignite/cluster/ClusterNode;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cluster/ClusterNode;

    .line 50
    .local v2, "node":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v3, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTask;->taskArg:Ljava/lang/Object;

    check-cast v3, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTask;->job(Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;)Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 55
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :catchall_0
    move-exception v3

    iget-boolean v4, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTask;->debug:Z

    if-eqz v4, :cond_1

    .line 56
    iget-object v4, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTask;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v4}, Lorg/apache/ignite/internal/IgniteEx;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->logMapped(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Class;Ljava/util/Collection;)V

    :cond_1
    throw v3

    .line 55
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-boolean v3, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTask;->debug:Z

    if-eqz v3, :cond_3

    .line 56
    iget-object v3, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTask;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v3}, Lorg/apache/ignite/internal/IgniteEx;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->logMapped(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Class;Ljava/util/Collection;)V

    :cond_3
    return-object v1
.end method

.method protected reduce(Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;Ljava/util/List;)Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;
    .locals 6
    .param p1, "taskRes"    # Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;)",
            "Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;"
        }
    .end annotation

    .prologue
    .line 76
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/compute/ComputeJobResult;

    .line 77
    .local v3, "res":Lorg/apache/ignite/compute/ComputeJobResult;
    invoke-interface {v3}, Lorg/apache/ignite/compute/ComputeJobResult;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;

    .line 79
    .local v1, "jobRes":Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;
    if-eqz v1, :cond_0

    .line 80
    invoke-interface {v3}, Lorg/apache/ignite/compute/ComputeJobResult;->getNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    .line 82
    .local v2, "nid":Ljava/util/UUID;
    invoke-interface {v3}, Lorg/apache/ignite/compute/ComputeJobResult;->getException()Lorg/apache/ignite/IgniteException;

    move-result-object v4

    .line 84
    .local v4, "unhandledEx":Lorg/apache/ignite/IgniteException;
    if-nez v4, :cond_1

    .line 85
    invoke-virtual {p0, p1, v1, v2}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTask;->reduceJobResult(Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;Ljava/util/UUID;)V

    goto :goto_0

    .line 88
    :cond_1
    instance-of v5, v4, Lorg/apache/ignite/cluster/ClusterGroupEmptyException;

    if-nez v5, :cond_0

    .line 89
    invoke-virtual {p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->unhandledEx()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 94
    .end local v1    # "jobRes":Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;
    .end local v2    # "nid":Ljava/util/UUID;
    .end local v3    # "res":Lorg/apache/ignite/compute/ComputeJobResult;
    .end local v4    # "unhandledEx":Lorg/apache/ignite/IgniteException;
    :cond_2
    return-object p1
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
    .line 35
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTask;->reduce0(Ljava/util/List;)Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;

    move-result-object v0

    return-object v0
.end method

.method protected reduce0(Ljava/util/List;)Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;)",
            "Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 67
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    new-instance v0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTask;->reduce(Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;Ljava/util/List;)Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;

    move-result-object v0

    return-object v0
.end method

.method protected reduceJobResult(Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;Ljava/util/UUID;)V
    .locals 4
    .param p1, "taskRes"    # Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;
    .param p2, "jobRes"    # Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;
    .param p3, "nid"    # Ljava/util/UUID;

    .prologue
    .line 106
    invoke-virtual {p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->gridNames()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->gridName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->topologyVersions()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->topologyVersion()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-virtual {p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->taskMonitoringEnabled()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->taskMonitoringEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->errorCounts()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->errorCount()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-virtual {p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->events()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->events()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->events()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    :cond_0
    invoke-virtual {p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->eventsEx()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->eventsEx()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->eventsEx()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_1
    invoke-virtual {p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->caches()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    invoke-virtual {p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->caches()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->caches()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_2
    invoke-virtual {p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->cachesEx()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 124
    invoke-virtual {p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->cachesEx()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->cachesEx()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_3
    invoke-virtual {p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->igfss()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 127
    invoke-virtual {p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->igfss()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->igfss()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_4
    invoke-virtual {p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->igfsEndpoints()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 130
    invoke-virtual {p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->igfsEndpoints()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->igfsEndpoints()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_5
    invoke-virtual {p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->igfssEx()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 133
    invoke-virtual {p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->igfssEx()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->igfssEx()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_6
    return-void
.end method
