.class public Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;
.super Lorg/apache/ignite/internal/managers/GridManagerAdapter;
.source "GridLoadBalancerManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/managers/GridManagerAdapter",
        "<",
        "Lorg/apache/ignite/spi/loadbalancing/LoadBalancingSpi;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 40
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getLoadBalancingSpi()[Lorg/apache/ignite/spi/loadbalancing/LoadBalancingSpi;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/managers/GridManagerAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;[Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getBalancedNode(Lorg/apache/ignite/internal/GridTaskSessionImpl;Ljava/util/List;Lorg/apache/ignite/compute/ComputeJob;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/GridTaskSessionImpl;
    .param p3, "job"    # Lorg/apache/ignite/compute/ComputeJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/GridTaskSessionImpl;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Lorg/apache/ignite/compute/ComputeJob;",
            ")",
            "Lorg/apache/ignite/cluster/ClusterNode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "top":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 69
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 72
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getLoadBalancingSpi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;->getSpi(Ljava/lang/String;)Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/loadbalancing/LoadBalancingSpi;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/ignite/spi/loadbalancing/LoadBalancingSpi;->getBalancedNode(Lorg/apache/ignite/compute/ComputeTaskSession;Ljava/util/List;Lorg/apache/ignite/compute/ComputeJob;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalancer(Lorg/apache/ignite/internal/GridTaskSessionImpl;Ljava/util/List;)Lorg/apache/ignite/compute/ComputeLoadBalancer;
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/GridTaskSessionImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/GridTaskSessionImpl;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/compute/ComputeLoadBalancer;"
        }
    .end annotation

    .prologue
    .line 82
    .local p2, "top":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 85
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager$1;-><init>(Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;Lorg/apache/ignite/internal/GridTaskSessionImpl;Ljava/util/List;)V

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
    .line 45
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;->startSpi()V

    .line 47
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;->startInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 49
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
    .line 53
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;->stopSpi()V

    .line 55
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;->stopInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method
