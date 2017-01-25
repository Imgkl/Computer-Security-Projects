.class public Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;
.super Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandlerAdapter;
.source "GridTopologyCommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler$2;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final SUPPORTED_COMMANDS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    const-class v0, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;->$assertionsDisabled:Z

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    sget-object v3, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->TOPOLOGY:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v3, v0, v2

    sget-object v2, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->NODE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sealList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;->SUPPORTED_COMMANDS:Ljava/util/Collection;

    return-void

    :cond_0
    move v0, v2

    .line 43
    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandlerAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;Ljava/lang/Iterable;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;
    .param p1, "x1"    # Ljava/lang/Iterable;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;->containsIp(Ljava/lang/Iterable;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private attribute(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "attrName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 301
    .local p3, "dfltVal":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p2}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 303
    .local v0, "attr":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .end local p3    # "dfltVal":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object p3

    .restart local p3    # "dfltVal":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object p3, v0

    goto :goto_0
.end method

.method private containsIp(Ljava/lang/Iterable;Ljava/lang/String;)Z
    .locals 3
    .param p2, "ip"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "addrs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    .local v0, "addr":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    const/4 v2, 0x1

    .line 153
    .end local v0    # "addr":Ljava/lang/String;
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 148
    .restart local v0    # "addr":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private createNodeBean(Lorg/apache/ignite/cluster/ClusterNode;ZZ)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;
    .locals 14
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "mtr"    # Z
    .param p3, "attr"    # Z

    .prologue
    .line 165
    sget-boolean v12, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;->$assertionsDisabled:Z

    if-nez v12, :cond_0

    if-nez p1, :cond_0

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 167
    :cond_0
    new-instance v11, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;

    invoke-direct {v11}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;-><init>()V

    .line 169
    .local v11, "nodeBean":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->setNodeId(Ljava/util/UUID;)V

    .line 170
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->consistentId()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->setConsistentId(Ljava/lang/Object;)V

    .line 171
    const-string v12, "org.apache.ignite.rest.tcp.port"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {p0, p1, v12, v13}, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;->attribute(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->setTcpPort(I)V

    .line 173
    const-string v12, "org.apache.ignite.rest.tcp.addrs"

    invoke-interface {p1, v12}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-static {v12}, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;->nonEmptyList(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->setTcpAddresses(Ljava/util/Collection;)V

    .line 174
    const-string v12, "org.apache.ignite.rest.tcp.host.names"

    invoke-interface {p1, v12}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-static {v12}, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;->nonEmptyList(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->setTcpHostNames(Ljava/util/Collection;)V

    .line 176
    const-string v12, "org.apache.ignite.cache"

    invoke-interface {p1, v12}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;

    .line 178
    .local v4, "caches":[Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 179
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 181
    .local v3, "cacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, v4

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_3

    aget-object v2, v0, v7

    .line 182
    .local v2, "cacheAttr":Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;
    iget-object v12, p0, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v12}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v12

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->systemCache(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 181
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 186
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/ignite/cache/CacheMode;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 188
    :cond_2
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/ignite/cache/CacheMode;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->setDefaultCacheMode(Ljava/lang/String;)V

    goto :goto_1

    .line 191
    .end local v2    # "cacheAttr":Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;
    :cond_3
    invoke-virtual {v11, v3}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->setCaches(Ljava/util/Map;)V

    .line 194
    .end local v0    # "arr$":[Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;
    .end local v3    # "cacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_4
    if-eqz p2, :cond_5

    .line 195
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v9

    .line 197
    .local v9, "metrics":Lorg/apache/ignite/cluster/ClusterMetrics;
    new-instance v10, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;

    invoke-direct {v10}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;-><init>()V

    .line 199
    .local v10, "metricsBean":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getStartTime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setStartTime(J)V

    .line 200
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getAverageActiveJobs()F

    move-result v12

    invoke-virtual {v10, v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setAverageActiveJobs(F)V

    .line 201
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getAverageCancelledJobs()F

    move-result v12

    invoke-virtual {v10, v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setAverageCancelledJobs(F)V

    .line 202
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getAverageCpuLoad()D

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setAverageCpuLoad(D)V

    .line 203
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getAverageJobExecuteTime()D

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setAverageJobExecuteTime(D)V

    .line 204
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getAverageJobWaitTime()D

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setAverageJobWaitTime(D)V

    .line 205
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getAverageRejectedJobs()F

    move-result v12

    invoke-virtual {v10, v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setAverageRejectedJobs(F)V

    .line 206
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getAverageWaitingJobs()F

    move-result v12

    invoke-virtual {v10, v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setAverageWaitingJobs(F)V

    .line 207
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentActiveJobs()I

    move-result v12

    invoke-virtual {v10, v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setCurrentActiveJobs(I)V

    .line 208
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentCancelledJobs()I

    move-result v12

    invoke-virtual {v10, v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setCurrentCancelledJobs(I)V

    .line 209
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentCpuLoad()D

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setCurrentCpuLoad(D)V

    .line 210
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentGcCpuLoad()D

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setCurrentGcCpuLoad(D)V

    .line 211
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentDaemonThreadCount()I

    move-result v12

    invoke-virtual {v10, v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setCurrentDaemonThreadCount(I)V

    .line 212
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentIdleTime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setCurrentIdleTime(J)V

    .line 213
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentJobExecuteTime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setCurrentJobExecuteTime(J)V

    .line 214
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentJobWaitTime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setCurrentJobWaitTime(J)V

    .line 215
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentRejectedJobs()I

    move-result v12

    invoke-virtual {v10, v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setCurrentRejectedJobs(I)V

    .line 216
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentThreadCount()I

    move-result v12

    invoke-virtual {v10, v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setCurrentThreadCount(I)V

    .line 217
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentWaitingJobs()I

    move-result v12

    invoke-virtual {v10, v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setCurrentWaitingJobs(I)V

    .line 218
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getHeapMemoryCommitted()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setHeapMemoryCommitted(J)V

    .line 219
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getHeapMemoryInitialized()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setHeapMemoryInitialized(J)V

    .line 220
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getHeapMemoryMaximum()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setHeapMemoryMaximum(J)V

    .line 221
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getHeapMemoryUsed()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setHeapMemoryUsed(J)V

    .line 222
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getLastDataVersion()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setLastDataVersion(J)V

    .line 223
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getLastUpdateTime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setLastUpdateTime(J)V

    .line 224
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getMaximumActiveJobs()I

    move-result v12

    invoke-virtual {v10, v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setMaximumActiveJobs(I)V

    .line 225
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getMaximumCancelledJobs()I

    move-result v12

    invoke-virtual {v10, v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setMaximumCancelledJobs(I)V

    .line 226
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getMaximumJobExecuteTime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setMaximumJobExecuteTime(J)V

    .line 227
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getMaximumJobWaitTime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setMaximumJobWaitTime(J)V

    .line 228
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getMaximumRejectedJobs()I

    move-result v12

    invoke-virtual {v10, v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setMaximumRejectedJobs(I)V

    .line 229
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getMaximumThreadCount()I

    move-result v12

    invoke-virtual {v10, v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setMaximumThreadCount(I)V

    .line 230
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getMaximumWaitingJobs()I

    move-result v12

    invoke-virtual {v10, v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setMaximumWaitingJobs(I)V

    .line 231
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getNodeStartTime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setNodeStartTime(J)V

    .line 232
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getNonHeapMemoryCommitted()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setNonHeapMemoryCommitted(J)V

    .line 233
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getNonHeapMemoryInitialized()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setNonHeapMemoryInitialized(J)V

    .line 234
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getNonHeapMemoryMaximum()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setNonHeapMemoryMaximum(J)V

    .line 235
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getNonHeapMemoryUsed()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setNonHeapMemoryUsed(J)V

    .line 236
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getStartTime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setStartTime(J)V

    .line 237
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalCancelledJobs()I

    move-result v12

    invoke-virtual {v10, v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setTotalCancelledJobs(I)V

    .line 238
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalCpus()I

    move-result v12

    invoke-virtual {v10, v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setTotalCpus(I)V

    .line 239
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalExecutedJobs()I

    move-result v12

    invoke-virtual {v10, v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setTotalExecutedJobs(I)V

    .line 240
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalIdleTime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setTotalIdleTime(J)V

    .line 241
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalRejectedJobs()I

    move-result v12

    invoke-virtual {v10, v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setTotalRejectedJobs(I)V

    .line 242
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalStartedThreadCount()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setTotalStartedThreadCount(J)V

    .line 243
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalExecutedTasks()I

    move-result v12

    invoke-virtual {v10, v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setTotalExecutedTasks(I)V

    .line 244
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getSentMessagesCount()I

    move-result v12

    invoke-virtual {v10, v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setSentMessagesCount(I)V

    .line 245
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getSentBytesCount()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setSentBytesCount(J)V

    .line 246
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getReceivedMessagesCount()I

    move-result v12

    invoke-virtual {v10, v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setReceivedMessagesCount(I)V

    .line 247
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getReceivedBytesCount()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setReceivedBytesCount(J)V

    .line 248
    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterMetrics;->getUpTime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->setUpTime(J)V

    .line 250
    invoke-virtual {v11, v10}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->setMetrics(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;)V

    .line 253
    .end local v9    # "metrics":Lorg/apache/ignite/cluster/ClusterMetrics;
    .end local v10    # "metricsBean":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;
    :cond_5
    if-eqz p3, :cond_b

    .line 254
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->attributes()Ljava/util/Map;

    move-result-object v12

    invoke-direct {v1, v12}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 256
    .local v1, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v12, "org.apache.ignite.cache"

    invoke-interface {v1, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v12, "org.apache.ignite.tx"

    invoke-interface {v1, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v12, "org.apache.ignite.security.subject"

    invoke-interface {v1, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v12, "org.apache.ignite.security.cred"

    invoke-interface {v1, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_6
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 262
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 264
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "org.apache.ignite."

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_7

    .line 265
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 270
    :cond_7
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 271
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->isEnum()Z

    move-result v12

    if-nez v12, :cond_8

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Ljava/net/InetAddress;

    if-eqz v12, :cond_9

    .line 272
    :cond_8
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 273
    :cond_9
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->isArray()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 274
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 278
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_a
    invoke-virtual {v11, v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->setAttributes(Ljava/util/Map;)V

    .line 281
    .end local v1    # "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_b
    return-object v11
.end method

.method private getRegisteredPort(Ljava/lang/Class;I)I
    .locals 4
    .param p2, "def"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/internal/processors/rest/GridRestProtocol;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, "protoCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/ignite/internal/processors/rest/GridRestProtocol;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->ports()Lorg/apache/ignite/internal/processors/port/GridPortProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->records()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/port/GridPortRecord;

    .line 315
    .local v1, "r":Lorg/apache/ignite/internal/processors/port/GridPortRecord;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/port/GridPortRecord;->protocol()Lorg/apache/ignite/spi/IgnitePortProtocol;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/spi/IgnitePortProtocol;->TCP:Lorg/apache/ignite/spi/IgnitePortProtocol;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/port/GridPortRecord;->clazz()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/port/GridPortRecord;->port()I

    move-result p2

    .line 319
    .end local v1    # "r":Lorg/apache/ignite/internal/processors/port/GridPortRecord;
    .end local p2    # "def":I
    :cond_1
    return p2
.end method

.method private static nonEmptyList(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, "col":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    .end local p0    # "col":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_0
    return-object p0
.end method


# virtual methods
.method public handleAsync(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 16
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    sget-boolean v11, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;->$assertionsDisabled:Z

    if-nez v11, :cond_0

    move-object/from16 v0, p1

    instance-of v11, v0, Lorg/apache/ignite/internal/processors/rest/request/GridRestTopologyRequest;

    if-nez v11, :cond_0

    new-instance v11, Ljava/lang/AssertionError;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid command for topology handler: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v11

    .line 63
    :cond_0
    sget-boolean v11, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;->$assertionsDisabled:Z

    if-nez v11, :cond_1

    sget-object v11, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;->SUPPORTED_COMMANDS:Ljava/util/Collection;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->command()Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 65
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v11}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 66
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Handling topology REST request: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v8, p1

    .line 68
    check-cast v8, Lorg/apache/ignite/internal/processors/rest/request/GridRestTopologyRequest;

    .line 70
    .local v8, "req0":Lorg/apache/ignite/internal/processors/rest/request/GridRestTopologyRequest;
    new-instance v9, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;

    invoke-direct {v9}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;-><init>()V

    .line 72
    .local v9, "res":Lorg/apache/ignite/internal/processors/rest/GridRestResponse;
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/rest/request/GridRestTopologyRequest;->includeMetrics()Z

    move-result v6

    .line 73
    .local v6, "mtr":Z
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/rest/request/GridRestTopologyRequest;->includeAttributes()Z

    move-result v2

    .line 75
    .local v2, "attr":Z
    sget-object v11, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler$2;->$SwitchMap$org$apache$ignite$internal$processors$rest$GridRestCommand:[I

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->command()Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 128
    sget-boolean v11, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;->$assertionsDisabled:Z

    if-nez v11, :cond_4

    new-instance v11, Ljava/lang/AssertionError;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid command for topology handler: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v11

    .line 77
    :pswitch_0
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v12}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->allNodes()Ljava/util/Collection;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v13}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->daemonNodes()Ljava/util/Collection;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lorg/apache/ignite/internal/util/typedef/F;->concat(ZLjava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 80
    .local v1, "allNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    .local v10, "top":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/cluster/ClusterNode;

    .line 84
    .local v7, "node":Lorg/apache/ignite/cluster/ClusterNode;
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6, v2}, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;->createNodeBean(Lorg/apache/ignite/cluster/ClusterNode;ZZ)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    .end local v7    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_3
    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->setResponse(Ljava/lang/Object;)V

    .line 131
    .end local v1    # "allNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v10    # "top":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;>;"
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v11}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 132
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Handled topology REST request [res="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", req="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x5d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 134
    :cond_5
    new-instance v11, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v11, v9}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    :goto_2
    return-object v11

    .line 92
    :pswitch_1
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/rest/request/GridRestTopologyRequest;->nodeId()Ljava/util/UUID;

    move-result-object v4

    .line 94
    .local v4, "id":Ljava/util/UUID;
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/rest/request/GridRestTopologyRequest;->nodeIp()Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, "ip":Ljava/lang/String;
    if-nez v4, :cond_6

    if-nez v5, :cond_6

    .line 97
    new-instance v11, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    new-instance v12, Lorg/apache/ignite/IgniteCheckedException;

    const-string v13, "Failed to handle request (either id or ip should be specified)."

    invoke-direct {v12, v13}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v12}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 102
    :cond_6
    if-eqz v4, :cond_8

    .line 104
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v11}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v11

    invoke-virtual {v11, v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->alive(Ljava/util/UUID;)Z

    .line 106
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v11}, Lorg/apache/ignite/internal/GridKernalContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v11

    invoke-interface {v11, v4}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    .line 108
    .restart local v7    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v5, :cond_7

    if-eqz v7, :cond_7

    invoke-interface {v7}, Lorg/apache/ignite/cluster/ClusterNode;->addresses()Ljava/util/Collection;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v5}, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;->containsIp(Ljava/lang/Iterable;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 109
    const/4 v7, 0x0

    .line 119
    :cond_7
    :goto_3
    if-eqz v7, :cond_9

    .line 120
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6, v2}, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;->createNodeBean(Lorg/apache/ignite/cluster/ClusterNode;ZZ)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->setResponse(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 112
    .end local v7    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v11}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->allNodes()Ljava/util/Collection;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    new-array v13, v13, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v14, 0x0

    new-instance v15, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v5}, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler$1;-><init>(Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;Ljava/lang/String;)V

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Lorg/apache/ignite/internal/util/typedef/F;->find(Ljava/lang/Iterable;Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/cluster/ClusterNode;

    .restart local v7    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    goto :goto_3

    .line 122
    :cond_9
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->setResponse(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public supportedCommands()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestCommand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;->SUPPORTED_COMMANDS:Ljava/util/Collection;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    const-class v0, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
