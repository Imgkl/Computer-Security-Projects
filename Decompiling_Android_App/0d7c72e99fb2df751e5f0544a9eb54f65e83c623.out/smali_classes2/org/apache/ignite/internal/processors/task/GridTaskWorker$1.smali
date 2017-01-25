.class Lorg/apache/ignite/internal/processors/task/GridTaskWorker$1;
.super Ljava/lang/Object;
.source "GridTaskWorker.java"

# interfaces
.implements Lorg/apache/ignite/compute/ComputeTaskContinuousMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/task/GridTaskWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)V
    .locals 0

    .prologue
    .line 141
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker$1;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$1;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public send(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/compute/ComputeJob;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker$1;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker.1;"
    .local p1, "jobs":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/compute/ComputeJob;>;"
    :try_start_0
    const-string v4, "jobs"

    invoke-static {p1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    new-instance v4, Lorg/apache/ignite/IgniteException;

    const-string v5, "Empty jobs collection passed to send(...) method."

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v4

    throw v4

    .line 182
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$1;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->access$300(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->loadBalancing()Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$1;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->access$100(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)Lorg/apache/ignite/internal/GridTaskSessionImpl;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$1;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    # invokes: Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getTaskTopology()Ljava/util/List;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->access$200(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;->getLoadBalancer(Lorg/apache/ignite/internal/GridTaskSessionImpl;Ljava/util/List;)Lorg/apache/ignite/compute/ComputeLoadBalancer;

    move-result-object v0

    .line 184
    .local v0, "balancer":Lorg/apache/ignite/compute/ComputeLoadBalancer;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/compute/ComputeJob;

    .line 185
    .local v3, "job":Lorg/apache/ignite/compute/ComputeJob;
    if-nez v3, :cond_1

    .line 186
    new-instance v4, Lorg/apache/ignite/IgniteException;

    const-string v5, "Null job passed to send(...) method."

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 188
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$1;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    const/4 v5, 0x0

    invoke-interface {v0, v3, v5}, Lorg/apache/ignite/compute/ComputeLoadBalancer;->getBalancedNode(Lorg/apache/ignite/compute/ComputeJob;Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    # invokes: Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->processMappedJobs(Ljava/util/Map;)V
    invoke-static {v4, v5}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->access$000(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;Ljava/util/Map;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 194
    .end local v3    # "job":Lorg/apache/ignite/compute/ComputeJob;
    :cond_2
    return-void
.end method

.method public send(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Lorg/apache/ignite/compute/ComputeJob;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker$1;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker.1;"
    .local p1, "mappedJobs":Ljava/util/Map;, "Ljava/util/Map<+Lorg/apache/ignite/compute/ComputeJob;Lorg/apache/ignite/cluster/ClusterNode;>;"
    :try_start_0
    const-string v1, "mappedJobs"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$1;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    # invokes: Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->processMappedJobs(Ljava/util/Map;)V
    invoke-static {v1, p1}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->access$000(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public send(Lorg/apache/ignite/compute/ComputeJob;)V
    .locals 1
    .param p1, "job"    # Lorg/apache/ignite/compute/ComputeJob;

    .prologue
    .line 169
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker$1;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker.1;"
    const-string v0, "job"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$1;->send(Ljava/util/Collection;)V

    .line 172
    return-void
.end method

.method public send(Lorg/apache/ignite/compute/ComputeJob;Lorg/apache/ignite/cluster/ClusterNode;)V
    .locals 3
    .param p1, "job"    # Lorg/apache/ignite/compute/ComputeJob;
    .param p2, "node"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 145
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker$1;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker.1;"
    :try_start_0
    const-string v1, "job"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    const-string v1, "node"

    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$1;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    # invokes: Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->processMappedJobs(Ljava/util/Map;)V
    invoke-static {v1, v2}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->access$000(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method
