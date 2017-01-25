.class Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$1;
.super Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$BusyRunnable;
.source "GridServiceProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->onEvent(Lorg/apache/ignite/events/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;

.field final synthetic val$evt:Lorg/apache/ignite/events/Event;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;Lorg/apache/ignite/events/Event;)V
    .locals 2

    .prologue
    .line 1040
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$1;->val$evt:Lorg/apache/ignite/events/Event;

    iget-object v0, p1, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$BusyRunnable;-><init>(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;)V

    return-void
.end method


# virtual methods
.method public run0()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1042
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$1;->val$evt:Lorg/apache/ignite/events/Event;

    check-cast v7, Lorg/apache/ignite/events/DiscoveryEvent;

    invoke-virtual {v7}, Lorg/apache/ignite/events/DiscoveryEvent;->topologyVersion()J

    move-result-wide v8

    .line 1044
    .local v8, "topVer":J
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;

    iget-object v7, v7, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$2800(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->nodes(J)Ljava/util/Collection;

    move-result-object v7

    const/4 v10, 0x0

    invoke-static {v7, v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->oldest(Ljava/util/Collection;Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    .line 1046
    .local v5, "oldest":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1047
    new-instance v6, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 1049
    .local v6, "retries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;>;"
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;

    iget-object v7, v7, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$2900(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->enabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1050
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;

    iget-object v7, v7, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$3000(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v7

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->ignoreOwnership(Z)V

    .line 1053
    :cond_0
    :try_start_0
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;

    iget-object v7, v7, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$1900(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-result-object v7

    const/4 v10, 0x0

    new-array v10, v10, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v7, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->entrySetx([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/cache/Cache$Entry;

    .line 1054
    .local v1, "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentKey;

    if-eqz v7, :cond_1

    .line 1057
    invoke-interface {v1}, Ljavax/cache/Cache$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1060
    .local v0, "dep":Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;
    :try_start_1
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;

    iget-object v7, v7, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->svcName:Ljava/lang/ThreadLocal;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$1000(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Ljava/lang/ThreadLocal;

    move-result-object v7

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->configuration()Lorg/apache/ignite/services/ServiceConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/ignite/services/ServiceConfiguration;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1062
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;

    iget-object v7, v7, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$3100(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v7

    const-string v10, "ignite-sys-cache"

    invoke-virtual {v7, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityReadyFuture(J)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 1065
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;

    iget-object v7, v7, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # invokes: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->reassign(Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;J)V
    invoke-static {v7, v0, v8, v9}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$2300(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;J)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1067
    :catch_0
    move-exception v2

    .line 1068
    .local v2, "ex":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    instance-of v7, v1, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    if-nez v7, :cond_2

    .line 1069
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;

    iget-object v7, v7, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$3200(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to do service reassignment (will retry): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->configuration()Lorg/apache/ignite/services/ServiceConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/ignite/services/ServiceConfiguration;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v2, v10}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1072
    :cond_2
    invoke-interface {v6, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1077
    .end local v0    # "dep":Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;
    .end local v1    # "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v2    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;

    iget-object v10, v10, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v10}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$3300(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->enabled()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1078
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;

    iget-object v10, v10, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v10}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$3400(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v10

    invoke-virtual {v10, v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->ignoreOwnership(Z)V

    :cond_3
    throw v7

    .line 1077
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;

    iget-object v7, v7, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$3300(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->enabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1078
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;

    iget-object v7, v7, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$3400(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v7

    invoke-virtual {v7, v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->ignoreOwnership(Z)V

    .line 1081
    :cond_5
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1082
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;

    # invokes: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->onReassignmentFailed(JLjava/util/Collection;)V
    invoke-static {v7, v8, v9, v6}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->access$3500(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;JLjava/util/Collection;)V

    .line 1086
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "retries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;>;"
    :cond_6
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;

    iget-object v7, v7, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$1900(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-result-object v7

    new-array v10, v12, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v7, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->primaryEntrySetx([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/cache/Cache$Entry;

    .line 1087
    .restart local v1    # "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;

    if-eqz v7, :cond_7

    .line 1090
    invoke-interface {v1}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;->name()Ljava/lang/String;

    move-result-object v4

    .line 1093
    .local v4, "name":Ljava/lang/String;
    :try_start_3
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;

    iget-object v7, v7, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$1900(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-result-object v7

    new-instance v10, Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentKey;

    invoke-direct {v10, v4}, Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_7

    .line 1094
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;

    iget-object v7, v7, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$3600(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1095
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;

    iget-object v7, v7, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$3700(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Removed zombie assignments: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v1}, Ljavax/cache/Cache$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1097
    :cond_8
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;

    iget-object v7, v7, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$1900(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-result-object v7

    invoke-interface {v1}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v7, v10, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->remove(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1100
    :catch_1
    move-exception v2

    .line 1101
    .restart local v2    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;

    iget-object v7, v7, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$3800(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to clean up zombie assignments for service: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10, v2}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1104
    .end local v1    # "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v2    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    .end local v4    # "name":Ljava/lang/String;
    :cond_9
    return-void
.end method
