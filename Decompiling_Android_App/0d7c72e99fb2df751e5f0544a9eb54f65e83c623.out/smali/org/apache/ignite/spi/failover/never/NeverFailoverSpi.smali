.class public Lorg/apache/ignite/spi/failover/never/NeverFailoverSpi;
.super Lorg/apache/ignite/spi/IgniteSpiAdapter;
.source "NeverFailoverSpi.java"

# interfaces
.implements Lorg/apache/ignite/spi/failover/FailoverSpi;
.implements Lorg/apache/ignite/spi/failover/never/NeverFailoverSpiMBean;


# annotations
.annotation runtime Lorg/apache/ignite/spi/IgniteSpiMultipleInstancesSupport;
    value = true
.end annotation


# instance fields
.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public failover(Lorg/apache/ignite/spi/failover/FailoverContext;Ljava/util/List;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 3
    .param p1, "ctx"    # Lorg/apache/ignite/spi/failover/FailoverContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/spi/failover/FailoverContext;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/cluster/ClusterNode;"
        }
    .end annotation

    .prologue
    .line 92
    .local p2, "top":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v0, p0, Lorg/apache/ignite/spi/failover/never/NeverFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning \'null\' node for failed job (failover will not happen) [job="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getJobResult()Lorg/apache/ignite/compute/ComputeJobResult;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/compute/ComputeJobResult;->getJob()Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getTaskSession()Lorg/apache/ignite/compute/ComputeTaskSession;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/compute/ComputeTaskSession;->getTaskName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getTaskSession()Lorg/apache/ignite/compute/ComputeTaskSession;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/compute/ComputeTaskSession;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public spiStart(Ljava/lang/String;)V
    .locals 2
    .param p1, "gridName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/apache/ignite/spi/failover/never/NeverFailoverSpi;->startStopwatch()V

    .line 74
    const-class v0, Lorg/apache/ignite/spi/failover/never/NeverFailoverSpiMBean;

    invoke-virtual {p0, p1, p0, v0}, Lorg/apache/ignite/spi/failover/never/NeverFailoverSpi;->registerMBean(Ljava/lang/String;Lorg/apache/ignite/spi/IgniteSpiManagementMBean;Ljava/lang/Class;)V

    .line 77
    iget-object v0, p0, Lorg/apache/ignite/spi/failover/never/NeverFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lorg/apache/ignite/spi/failover/never/NeverFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/failover/never/NeverFailoverSpi;->startInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 79
    :cond_0
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
    .line 83
    invoke-virtual {p0}, Lorg/apache/ignite/spi/failover/never/NeverFailoverSpi;->unregisterMBean()V

    .line 86
    iget-object v0, p0, Lorg/apache/ignite/spi/failover/never/NeverFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/apache/ignite/spi/failover/never/NeverFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/failover/never/NeverFailoverSpi;->stopInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 88
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-class v0, Lorg/apache/ignite/spi/failover/never/NeverFailoverSpi;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
