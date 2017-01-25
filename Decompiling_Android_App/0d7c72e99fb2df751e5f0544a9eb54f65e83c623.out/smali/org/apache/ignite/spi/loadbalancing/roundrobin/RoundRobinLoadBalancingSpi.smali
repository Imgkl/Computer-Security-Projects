.class public Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;
.super Lorg/apache/ignite/spi/IgniteSpiAdapter;
.source "RoundRobinLoadBalancingSpi.java"

# interfaces
.implements Lorg/apache/ignite/spi/loadbalancing/LoadBalancingSpi;
.implements Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpiMBean;


# annotations
.annotation runtime Lorg/apache/ignite/spi/IgniteSpiMultipleInstancesSupport;
    value = true
.end annotation


# instance fields
.field private balancer:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;

.field private isPerTask:Z

.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field

.field private final lsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

.field private final perTaskBalancers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;-><init>()V

    .line 176
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->perTaskBalancers:Ljava/util/Map;

    .line 180
    new-instance v0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi$1;-><init>(Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->lsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->perTaskBalancers:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public getBalancedNode(Lorg/apache/ignite/compute/ComputeTaskSession;Ljava/util/List;Lorg/apache/ignite/compute/ComputeJob;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 3
    .param p1, "ses"    # Lorg/apache/ignite/compute/ComputeTaskSession;
    .param p3, "job"    # Lorg/apache/ignite/compute/ComputeJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/compute/ComputeTaskSession;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Lorg/apache/ignite/compute/ComputeJob;",
            ")",
            "Lorg/apache/ignite/cluster/ClusterNode;"
        }
    .end annotation

    .prologue
    .line 280
    .local p2, "top":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    const-string v1, "ses"

    const-string/jumbo v2, "top"

    invoke-static {p1, v1, p2, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    iget-boolean v1, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->isPerTask:Z

    if-eqz v1, :cond_1

    .line 285
    iget-object v1, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->perTaskBalancers:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/ignite/compute/ComputeTaskSession;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;

    .line 287
    .local v0, "taskBalancer":Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;
    if-nez v0, :cond_0

    .line 288
    iget-object v1, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->perTaskBalancers:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/ignite/compute/ComputeTaskSession;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    new-instance v0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;

    .end local v0    # "taskBalancer":Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;
    invoke-direct {v0}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;-><init>()V

    .restart local v0    # "taskBalancer":Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_0
    invoke-virtual {v0, p2}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;->getBalancedNode(Ljava/util/List;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    .line 293
    .end local v0    # "taskBalancer":Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->balancer:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;

    invoke-virtual {v1, p2}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->getBalancedNode(Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    goto :goto_0
.end method

.method getNodeIds(Lorg/apache/ignite/compute/ComputeTaskSession;)Ljava/util/List;
    .locals 6
    .param p1, "ses"    # Lorg/apache/ignite/compute/ComputeTaskSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/compute/ComputeTaskSession;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    iget-boolean v4, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->isPerTask:Z

    if-eqz v4, :cond_2

    .line 304
    iget-object v4, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->perTaskBalancers:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/ignite/compute/ComputeTaskSession;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;

    .line 306
    .local v0, "balancer":Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;
    if-nez v0, :cond_1

    .line 307
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 318
    .end local v0    # "balancer":Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;
    :cond_0
    :goto_0
    return-object v2

    .line 309
    .restart local v0    # "balancer":Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    invoke-virtual {v0}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;->getNodes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/cluster/ClusterNode;

    .line 312
    .local v3, "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 318
    .end local v0    # "balancer":Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    .end local v3    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_2
    iget-object v4, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->balancer:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;

    invoke-virtual {v4}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->getNodeIds()Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public isPerTask()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->isPerTask:Z

    return v0
.end method

.method protected onContextDestroyed0()V
    .locals 2

    .prologue
    .line 266
    iget-boolean v1, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->isPerTask:Z

    if-nez v1, :cond_1

    .line 267
    iget-object v1, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->balancer:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->balancer:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;

    invoke-virtual {v1}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->onContextDestroyed()V

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v0

    .line 273
    .local v0, "spiCtx":Lorg/apache/ignite/spi/IgniteSpiContext;
    if-eqz v0, :cond_0

    .line 274
    iget-object v1, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->lsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    invoke-interface {v0, v1}, Lorg/apache/ignite/spi/IgniteSpiContext;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;)Z

    goto :goto_0
.end method

.method protected onContextInitialized0(Lorg/apache/ignite/spi/IgniteSpiContext;)V
    .locals 3
    .param p1, "spiCtx"    # Lorg/apache/ignite/spi/IgniteSpiContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 251
    iget-boolean v0, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->isPerTask:Z

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->balancer:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->onContextInitialized(Lorg/apache/ignite/spi/IgniteSpiContext;)V

    .line 262
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v0

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    invoke-interface {v0, v1}, Lorg/apache/ignite/spi/IgniteSpiContext;->isEventRecordable([I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    new-instance v0, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required event types are disabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridEventName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridEventName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridEventName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->lsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/spi/IgniteSpiContext;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)V

    goto :goto_0

    .line 254
    :array_0
    .array-data 4
        0x16
        0x15
        0x28
    .end array-data

    .line 260
    :array_1
    .array-data 4
        0x16
        0x15
        0x28
    .end array-data
.end method

.method public setPerTask(Z)V
    .locals 0
    .param p1, "isPerTask"    # Z
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 217
    iput-boolean p1, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->isPerTask:Z

    .line 218
    return-void
.end method

.method public spiStart(Ljava/lang/String;)V
    .locals 3
    .param p1, "gridName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->startStopwatch()V

    .line 224
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "isPerTask"

    iget-boolean v2, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->isPerTask:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 227
    :cond_0
    const-class v0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpiMBean;

    invoke-virtual {p0, p1, p0, v0}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->registerMBean(Ljava/lang/String;Lorg/apache/ignite/spi/IgniteSpiManagementMBean;Ljava/lang/Class;)V

    .line 229
    new-instance v0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;

    iget-object v1, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {v0, v1}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;-><init>(Lorg/apache/ignite/IgniteLogger;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->balancer:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;

    .line 232
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->startInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 234
    :cond_1
    return-void
.end method

.method public spiStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->balancer:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;

    .line 240
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->perTaskBalancers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 242
    invoke-virtual {p0}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->unregisterMBean()V

    .line 245
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;->stopInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 247
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    const-class v0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
