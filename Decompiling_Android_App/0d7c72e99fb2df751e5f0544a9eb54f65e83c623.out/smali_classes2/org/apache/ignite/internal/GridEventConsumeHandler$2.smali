.class Lorg/apache/ignite/internal/GridEventConsumeHandler$2;
.super Ljava/lang/Object;
.source "GridEventConsumeHandler.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/GridEventConsumeHandler;->register(Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/GridEventConsumeHandler;

.field final synthetic val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

.field final synthetic val$loc:Z

.field final synthetic val$nodeId:Ljava/util/UUID;

.field final synthetic val$routineId:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/GridEventConsumeHandler;ZLjava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/UUID;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$2;->this$0:Lorg/apache/ignite/internal/GridEventConsumeHandler;

    iput-boolean p2, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$2;->val$loc:Z

    iput-object p3, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$2;->val$nodeId:Ljava/util/UUID;

    iput-object p4, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$2;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    iput-object p5, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$2;->val$routineId:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 12
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$2;->this$0:Lorg/apache/ignite/internal/GridEventConsumeHandler;

    # getter for: Lorg/apache/ignite/internal/GridEventConsumeHandler;->filter:Lorg/apache/ignite/lang/IgnitePredicate;
    invoke-static {v0}, Lorg/apache/ignite/internal/GridEventConsumeHandler;->access$000(Lorg/apache/ignite/internal/GridEventConsumeHandler;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$2;->this$0:Lorg/apache/ignite/internal/GridEventConsumeHandler;

    # getter for: Lorg/apache/ignite/internal/GridEventConsumeHandler;->filter:Lorg/apache/ignite/lang/IgnitePredicate;
    invoke-static {v0}, Lorg/apache/ignite/internal/GridEventConsumeHandler;->access$000(Lorg/apache/ignite/internal/GridEventConsumeHandler;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    :cond_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$2;->val$loc:Z

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$2;->this$0:Lorg/apache/ignite/internal/GridEventConsumeHandler;

    # getter for: Lorg/apache/ignite/internal/GridEventConsumeHandler;->cb:Lorg/apache/ignite/lang/IgniteBiPredicate;
    invoke-static {v0}, Lorg/apache/ignite/internal/GridEventConsumeHandler;->access$100(Lorg/apache/ignite/internal/GridEventConsumeHandler;)Lorg/apache/ignite/lang/IgniteBiPredicate;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$2;->val$nodeId:Ljava/util/UUID;

    invoke-interface {v0, v1, p1}, Lorg/apache/ignite/lang/IgniteBiPredicate;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$2;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->continuous()Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$2;->val$routineId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->stopRoutine(Ljava/util/UUID;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 168
    .end local p1    # "evt":Lorg/apache/ignite/events/Event;
    :cond_1
    :goto_0
    return-void

    .line 137
    .restart local p1    # "evt":Lorg/apache/ignite/events/Event;
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$2;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v9

    .line 139
    .local v9, "disco":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
    iget-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$2;->val$nodeId:Ljava/util/UUID;

    invoke-virtual {v9, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v11

    .line 141
    .local v11, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v11, :cond_1

    .line 143
    :try_start_0
    new-instance v3, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;

    invoke-direct {v3, p1}, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;-><init>(Lorg/apache/ignite/events/Event;)V

    .line 145
    .local v3, "wrapper":Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;
    instance-of v0, p1, Lorg/apache/ignite/events/CacheEvent;

    if-eqz v0, :cond_3

    .line 146
    check-cast p1, Lorg/apache/ignite/events/CacheEvent;

    .end local p1    # "evt":Lorg/apache/ignite/events/Event;
    invoke-virtual {p1}, Lorg/apache/ignite/events/CacheEvent;->cacheName()Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, "cacheName":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$2;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v9, v11, v7}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cacheNode(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$2;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->p2pMarshal(Lorg/apache/ignite/marshaller/Marshaller;)V

    .line 151
    # setter for: Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->cacheName:Ljava/lang/String;
    invoke-static {v3, v7}, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->access$202(Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$2;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v8

    .line 156
    .local v8, "depMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;
    invoke-virtual {v8, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->prepare(Lorg/apache/ignite/internal/processors/cache/GridCacheDeployable;)V

    .line 160
    .end local v7    # "cacheName":Ljava/lang/String;
    .end local v8    # "depMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$2;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->continuous()Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$2;->val$nodeId:Ljava/util/UUID;

    iget-object v2, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$2;->val$routineId:Ljava/util/UUID;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->addNotification(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/Object;Ljava/lang/Object;ZZ)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    .end local v3    # "wrapper":Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;
    :catch_0
    move-exception v10

    .line 163
    .local v10, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$2;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/GridKernalContext;->log(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send event notification to node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$2;->val$nodeId:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
