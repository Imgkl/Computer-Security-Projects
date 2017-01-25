.class public Lorg/apache/ignite/internal/managers/failover/GridFailoverManager;
.super Lorg/apache/ignite/internal/managers/GridManagerAdapter;
.source "GridFailoverManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/managers/GridManagerAdapter",
        "<",
        "Lorg/apache/ignite/spi/failover/FailoverSpi;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 37
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getFailoverSpi()[Lorg/apache/ignite/spi/failover/FailoverSpi;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/managers/GridManagerAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;[Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 38
    return-void
.end method


# virtual methods
.method public failover(Lorg/apache/ignite/internal/GridTaskSessionImpl;Lorg/apache/ignite/compute/ComputeJobResult;Ljava/util/List;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 3
    .param p1, "taskSes"    # Lorg/apache/ignite/internal/GridTaskSessionImpl;
    .param p2, "jobRes"    # Lorg/apache/ignite/compute/ComputeJobResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/GridTaskSessionImpl;",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/cluster/ClusterNode;"
        }
    .end annotation

    .prologue
    .line 63
    .local p3, "top":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getFailoverSpi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/managers/failover/GridFailoverManager;->getSpi(Ljava/lang/String;)Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/failover/FailoverSpi;

    new-instance v1, Lorg/apache/ignite/internal/managers/failover/GridFailoverContextImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/failover/GridFailoverManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->loadBalancing()Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lorg/apache/ignite/internal/managers/failover/GridFailoverContextImpl;-><init>(Lorg/apache/ignite/internal/GridTaskSessionImpl;Lorg/apache/ignite/compute/ComputeJobResult;Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;)V

    invoke-interface {v0, v1, p3}, Lorg/apache/ignite/spi/failover/FailoverSpi;->failover(Lorg/apache/ignite/spi/failover/FailoverContext;Ljava/util/List;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    return-object v0
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/failover/GridFailoverManager;->startSpi()V

    .line 44
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/failover/GridFailoverManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/failover/GridFailoverManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/failover/GridFailoverManager;->startInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method

.method public stop(Z)V
    .locals 2
    .param p1, "cancel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/failover/GridFailoverManager;->stopSpi()V

    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/failover/GridFailoverManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/failover/GridFailoverManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/failover/GridFailoverManager;->stopInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method
