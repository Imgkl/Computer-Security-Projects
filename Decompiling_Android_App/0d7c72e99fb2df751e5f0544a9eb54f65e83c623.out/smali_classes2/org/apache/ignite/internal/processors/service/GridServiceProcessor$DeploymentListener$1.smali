.class Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$1;
.super Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$BusyRunnable;
.source "GridServiceProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->onUpdated(Ljava/lang/Iterable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;

.field final synthetic val$deps:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;Ljava/lang/Iterable;)V
    .locals 2

    .prologue
    .line 906
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$1;->val$deps:Ljava/lang/Iterable;

    iget-object v0, p1, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$BusyRunnable;-><init>(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;)V

    return-void
.end method


# virtual methods
.method public run0()V
    .locals 14

    .prologue
    .line 908
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$1;->val$deps:Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/cache/event/CacheEntryEvent;

    .line 909
    .local v2, "e":Ljavax/cache/event/CacheEntryEvent;, "Ljavax/cache/event/CacheEntryEvent<**>;"
    invoke-virtual {v2}, Ljavax/cache/event/CacheEntryEvent;->getKey()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentKey;

    if-eqz v9, :cond_0

    .line 912
    invoke-virtual {v2}, Ljavax/cache/event/CacheEntryEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;

    .line 914
    .local v1, "dep":Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;
    if-eqz v1, :cond_1

    .line 915
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->svcName:Ljava/lang/ThreadLocal;
    invoke-static {v9}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$1000(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Ljava/lang/ThreadLocal;

    move-result-object v9

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->configuration()Lorg/apache/ignite/services/ServiceConfiguration;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/ignite/services/ServiceConfiguration;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 918
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v9}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$1100(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersion()J

    move-result-wide v10

    .line 920
    .local v10, "topVer":J
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v9}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$1200(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->nodes(J)Ljava/util/Collection;

    move-result-object v9

    const/4 v12, 0x0

    invoke-static {v9, v12}, Lorg/apache/ignite/internal/util/typedef/internal/U;->oldest(Ljava/util/Collection;Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v8

    .line 922
    .local v8, "oldest":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v8}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 923
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;

    # invokes: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->onDeployment(Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;J)V
    invoke-static {v9, v1, v10, v11}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->access$1300(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;J)V

    goto :goto_0

    .line 927
    .end local v8    # "oldest":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v10    # "topVer":J
    :cond_1
    invoke-virtual {v2}, Ljavax/cache/event/CacheEntryEvent;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentKey;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentKey;->name()Ljava/lang/String;

    move-result-object v7

    .line 929
    .local v7, "name":Ljava/lang/String;
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->svcName:Ljava/lang/ThreadLocal;
    invoke-static {v9}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$1000(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Ljava/lang/ThreadLocal;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 933
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->locSvcs:Ljava/util/Map;
    invoke-static {v9}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$1400(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Ljava/util/Map;

    move-result-object v12

    monitor-enter v12

    .line 934
    :try_start_0
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->locSvcs:Ljava/util/Map;
    invoke-static {v9}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$1400(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 935
    .local v0, "ctxs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;>;"
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    if-eqz v0, :cond_2

    .line 938
    monitor-enter v0

    .line 939
    :try_start_1
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v12

    # invokes: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cancel(Ljava/lang/Iterable;I)V
    invoke-static {v9, v0, v12}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$1500(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;Ljava/lang/Iterable;I)V

    .line 940
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 944
    :cond_2
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->depFuts:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v9}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$1600(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 946
    .local v4, "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<*>;"
    if-eqz v4, :cond_3

    .line 947
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    .line 950
    :cond_3
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->undepFuts:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v9}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$1700(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<*>;"
    check-cast v4, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 952
    .restart local v4    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<*>;"
    if-eqz v4, :cond_4

    .line 953
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    .line 955
    :cond_4
    new-instance v6, Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;-><init>(Ljava/lang/String;)V

    .line 958
    .local v6, "key":Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    invoke-static {v9}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$1900(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->cache()Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/internal/processors/cache/GridCache;->affinity()Lorg/apache/ignite/cache/affinity/Affinity;

    move-result-object v9

    iget-object v12, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;

    iget-object v12, v12, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v12}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$1800(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v12

    invoke-interface {v9, v12, v6}, Lorg/apache/ignite/cache/affinity/Affinity;->isPrimary(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 960
    :try_start_2
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    invoke-static {v9}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$1900(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-result-object v9

    const/4 v12, 0x0

    new-array v12, v12, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v9, v6, v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->remove(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 962
    :catch_0
    move-exception v3

    .line 963
    .local v3, "ex":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$1;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v9}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$2000(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to remove assignments for undeployed service: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12, v3}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 935
    .end local v0    # "ctxs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;>;"
    .end local v3    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    .end local v4    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<*>;"
    .end local v6    # "key":Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;
    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v9

    .line 940
    .restart local v0    # "ctxs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;>;"
    :catchall_1
    move-exception v9

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v9

    .line 968
    .end local v0    # "ctxs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;>;"
    .end local v1    # "dep":Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;
    .end local v2    # "e":Ljavax/cache/event/CacheEntryEvent;, "Ljavax/cache/event/CacheEntryEvent<**>;"
    .end local v7    # "name":Ljava/lang/String;
    :cond_5
    return-void
.end method
