.class public Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;
.super Lorg/apache/ignite/internal/visor/VisorJob;
.source "VisorNodeDataCollectorJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorJob",
        "<",
        "Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;",
        "Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;Z)V
    .locals 0
    .param p1, "arg"    # Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;
    .param p2, "debug"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/VisorJob;-><init>(Ljava/lang/Object;Z)V

    .line 53
    return-void
.end method


# virtual methods
.method protected caches(Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;)V
    .locals 12
    .param p1, "res"    # Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;
    .param p2, "arg"    # Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;

    .prologue
    .line 119
    :try_start_0
    iget-object v8, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v8}, Lorg/apache/ignite/internal/IgniteEx;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v4

    .line 121
    .local v4, "cfg":Lorg/apache/ignite/configuration/IgniteConfiguration;
    iget-object v8, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v8}, Lorg/apache/ignite/internal/IgniteEx;->context()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v2

    .line 123
    .local v2, "cacheProc":Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->cacheNames()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 124
    .local v1, "cacheName":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;->systemCaches()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->isSystemCache(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v4, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->isIgfsCache(Lorg/apache/ignite/configuration/IgniteConfiguration;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 125
    :cond_1
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 128
    .local v6, "start0":J
    :try_start_1
    iget-object v8, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;->sample()I

    move-result v9

    invoke-static {v8, v1, v9}, Lorg/apache/ignite/internal/visor/cache/VisorCache;->from(Lorg/apache/ignite/Ignite;Ljava/lang/String;I)Lorg/apache/ignite/internal/visor/cache/VisorCache;

    move-result-object v0

    .line 130
    .local v0, "cache":Lorg/apache/ignite/internal/visor/cache/VisorCache;
    if-eqz v0, :cond_2

    .line 131
    invoke-virtual {p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->caches()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :cond_2
    :try_start_2
    iget-boolean v8, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->debug:Z

    if-eqz v8, :cond_0

    .line 135
    iget-object v8, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v8}, Lorg/apache/ignite/internal/IgniteEx;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Collected cache: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v8, v9, v10, v6, v7}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->log(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/lang/Class;J)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 140
    .end local v0    # "cache":Lorg/apache/ignite/internal/visor/cache/VisorCache;
    .end local v1    # "cacheName":Ljava/lang/String;
    .end local v2    # "cacheProc":Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;
    .end local v4    # "cfg":Lorg/apache/ignite/configuration/IgniteConfiguration;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "start0":J
    :catch_0
    move-exception v3

    .line 141
    .local v3, "cachesEx":Ljava/lang/Throwable;
    invoke-virtual {p1, v3}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->cachesEx(Ljava/lang/Throwable;)V

    .line 143
    .end local v3    # "cachesEx":Ljava/lang/Throwable;
    :cond_3
    return-void

    .line 134
    .restart local v1    # "cacheName":Ljava/lang/String;
    .restart local v2    # "cacheProc":Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;
    .restart local v4    # "cfg":Lorg/apache/ignite/configuration/IgniteConfiguration;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "start0":J
    :catchall_0
    move-exception v8

    :try_start_3
    iget-boolean v9, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->debug:Z

    if-eqz v9, :cond_4

    .line 135
    iget-object v9, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v9}, Lorg/apache/ignite/internal/IgniteEx;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Collected cache: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v9, v10, v11, v6, v7}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->log(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/lang/Class;J)J

    :cond_4
    throw v8
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method protected events(Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;)V
    .locals 8
    .param p1, "res"    # Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;
    .param p2, "arg"    # Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;

    .prologue
    .line 77
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-static {v5}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->checkExplicitTaskMonitoring(Lorg/apache/ignite/Ignite;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 78
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->taskMonitoringEnabled(Z)V

    .line 104
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;->eventsOrderKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;->eventsThrottleCounterKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;->taskMonitoringEnabled()Z

    move-result v7

    invoke-virtual {p0, p1, v5, v6, v7}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->events0(Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 109
    :goto_1
    return-void

    .line 81
    :cond_1
    invoke-virtual {p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;->taskMonitoringEnabled()Z

    move-result v5

    invoke-virtual {p1, v5}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->taskMonitoringEnabled(Z)V

    .line 83
    invoke-virtual {p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;->taskMonitoringEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    iget-object v5, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v5}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->nodeLocalMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    .line 86
    .local v4, "storage":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;>;"
    const-string v5, "VISOR_COMPUTE_MONITORING_KEY"

    invoke-interface {v4, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;

    .line 88
    .local v1, "holder":Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;
    if-nez v1, :cond_2

    .line 89
    new-instance v2, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;

    invoke-direct {v2}, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;-><init>()V

    .line 91
    .local v2, "holderNew":Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;
    const-string v5, "VISOR_COMPUTE_MONITORING_KEY"

    invoke-interface {v4, v5, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;

    .line 93
    .local v3, "holderOld":Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;
    if-nez v3, :cond_3

    move-object v1, v2

    .line 97
    .end local v2    # "holderNew":Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;
    .end local v3    # "holderOld":Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;
    :cond_2
    :goto_2
    iget-object v5, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;->eventsOrderKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->startCollect(Lorg/apache/ignite/internal/IgniteEx;Ljava/lang/String;)V

    .line 100
    iget-object v5, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    sget-object v6, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->VISOR_TASK_EVTS:[I

    invoke-interface {v5, v6}, Lorg/apache/ignite/internal/IgniteEx;->allEventsUserRecordable([I)Z

    move-result v5

    invoke-virtual {p1, v5}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->taskMonitoringEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    .end local v1    # "holder":Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;
    .end local v4    # "storage":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;>;"
    :catch_0
    move-exception v0

    .line 107
    .local v0, "eventsEx":Ljava/lang/Throwable;
    invoke-virtual {p1, v0}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->eventsEx(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v0    # "eventsEx":Ljava/lang/Throwable;
    .restart local v1    # "holder":Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;
    .restart local v2    # "holderNew":Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;
    .restart local v3    # "holderOld":Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;
    .restart local v4    # "storage":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;>;"
    :cond_3
    move-object v1, v3

    .line 93
    goto :goto_2
.end method

.method protected events0(Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "res"    # Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;
    .param p2, "evtOrderKey"    # Ljava/lang/String;
    .param p3, "evtThrottleCntrKey"    # Ljava/lang/String;
    .param p4, "all"    # Z

    .prologue
    .line 65
    invoke-virtual {p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->events()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-static {v1, p2, p3, p4}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->collectEvents(Lorg/apache/ignite/Ignite;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 66
    return-void
.end method

.method protected igfs(Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;)V
    .locals 17
    .param p1, "res"    # Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;

    .prologue
    .line 152
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v9}, Lorg/apache/ignite/internal/IgniteEx;->context()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/internal/GridKernalContext;->igfs()Lorg/apache/ignite/internal/processors/igfs/IgfsProcessorAdapter;

    move-result-object v7

    .line 154
    .local v7, "igfsProc":Lorg/apache/ignite/internal/processors/igfs/IgfsProcessorAdapter;
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessorAdapter;->igfss()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/IgniteFileSystem;

    .line 155
    .local v6, "igfs":Lorg/apache/ignite/IgniteFileSystem;
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    .line 158
    .local v10, "start0":J
    :try_start_1
    invoke-interface {v6}, Lorg/apache/ignite/IgniteFileSystem;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessorAdapter;->endpoints(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 160
    .local v2, "endPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;>;"
    if-eqz v2, :cond_4

    .line 161
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;

    .line 162
    .local v3, "ep":Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;
    invoke-interface {v3}, Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;->isManagement()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 163
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->igfsEndpoints()Ljava/util/Collection;

    move-result-object v9

    new-instance v12, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsEndpoint;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteFileSystem;->name()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v14}, Lorg/apache/ignite/internal/IgniteEx;->name()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3}, Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;->getHost()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3}, Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;->getPort()I

    move-result v16

    invoke-direct/range {v12 .. v16}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsEndpoint;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v9, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 170
    .end local v2    # "endPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;>;"
    .end local v3    # "ep":Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v9

    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->debug:Z

    if-eqz v12, :cond_2

    .line 171
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v12}, Lorg/apache/ignite/internal/IgniteEx;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Collected IGFS: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v6}, Lorg/apache/ignite/IgniteFileSystem;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-static {v12, v13, v14, v10, v11}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->log(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/lang/Class;J)J

    :cond_2
    throw v9
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 175
    .end local v6    # "igfs":Lorg/apache/ignite/IgniteFileSystem;
    .end local v7    # "igfsProc":Lorg/apache/ignite/internal/processors/igfs/IgfsProcessorAdapter;
    .end local v10    # "start0":J
    :catch_0
    move-exception v8

    .line 176
    .local v8, "igfssEx":Ljava/lang/Throwable;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->igfssEx(Ljava/lang/Throwable;)V

    .line 178
    .end local v8    # "igfssEx":Ljava/lang/Throwable;
    :cond_3
    return-void

    .line 167
    .restart local v2    # "endPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;>;"
    .restart local v6    # "igfs":Lorg/apache/ignite/IgniteFileSystem;
    .restart local v7    # "igfsProc":Lorg/apache/ignite/internal/processors/igfs/IgfsProcessorAdapter;
    .restart local v10    # "start0":J
    :cond_4
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->igfss()Ljava/util/Collection;

    move-result-object v9

    invoke-static {v6}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfs;->from(Lorg/apache/ignite/IgniteFileSystem;)Lorg/apache/ignite/internal/visor/igfs/VisorIgfs;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->debug:Z

    if-eqz v9, :cond_0

    .line 171
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v9}, Lorg/apache/ignite/internal/IgniteEx;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Collected IGFS: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v6}, Lorg/apache/ignite/IgniteFileSystem;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-static {v9, v12, v13, v10, v11}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->log(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/lang/Class;J)J
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method

.method protected bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 41
    check-cast p1, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->run(Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;)Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;

    move-result-object v0

    return-object v0
.end method

.method protected run(Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;)Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;
    .locals 5
    .param p1, "res"    # Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;
    .param p2, "arg"    # Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;

    .prologue
    .line 194
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteEx;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->gridName(Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->topologyVersion()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->topologyVersion(J)V

    .line 198
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    .line 200
    .local v0, "start0":J
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->events(Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;)V

    .line 202
    iget-boolean v2, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->debug:Z

    if-eqz v2, :cond_0

    .line 203
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteEx;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    const-string v3, "Collected events"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v2, v3, v4, v0, v1}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->log(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/lang/Class;J)J

    move-result-wide v0

    .line 205
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->caches(Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;)V

    .line 207
    iget-boolean v2, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->debug:Z

    if-eqz v2, :cond_1

    .line 208
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteEx;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    const-string v3, "Collected caches"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v2, v3, v4, v0, v1}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->log(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/lang/Class;J)J

    move-result-wide v0

    .line 210
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->igfs(Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;)V

    .line 212
    iget-boolean v2, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->debug:Z

    if-eqz v2, :cond_2

    .line 213
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteEx;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    const-string v3, "Collected igfs"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v2, v3, v4, v0, v1}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->log(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/lang/Class;J)J

    .line 215
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteEx;->context()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->exceptionRegistry()Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;->errorCount()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->errorCount(J)V

    .line 217
    return-object p1
.end method

.method protected run(Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;)Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;
    .locals 1
    .param p1, "arg"    # Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;

    .prologue
    .line 182
    new-instance v0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;->run(Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskArg;)Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    const-class v0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJob;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
