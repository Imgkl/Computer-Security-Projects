.class public Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;
.super Ljava/lang/Object;
.source "ClusterLocalNodeMetricsMXBeanImpl.java"

# interfaces
.implements Lorg/apache/ignite/mxbean/ClusterLocalNodeMetricsMXBean;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final node:Lorg/apache/ignite/cluster/ClusterNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/cluster/ClusterNode;)V
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-boolean v0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    .line 38
    return-void
.end method


# virtual methods
.method public getAverageActiveJobs()F
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getAverageActiveJobs()F

    move-result v0

    return v0
.end method

.method public getAverageCancelledJobs()F
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getAverageCancelledJobs()F

    move-result v0

    return v0
.end method

.method public getAverageCpuLoad()D
    .locals 4

    .prologue
    .line 237
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getAverageCpuLoad()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getAverageJobExecuteTime()D
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getAverageJobExecuteTime()D

    move-result-wide v0

    return-wide v0
.end method

.method public getAverageJobWaitTime()D
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getAverageJobWaitTime()D

    move-result-wide v0

    return-wide v0
.end method

.method public getAverageRejectedJobs()F
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getAverageRejectedJobs()F

    move-result v0

    return v0
.end method

.method public getAverageWaitingJobs()F
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getAverageWaitingJobs()F

    move-result v0

    return v0
.end method

.method public getBusyTimePercentage()F
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getBusyTimePercentage()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getCurrentActiveJobs()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentActiveJobs()I

    move-result v0

    return v0
.end method

.method public getCurrentCancelledJobs()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentCancelledJobs()I

    move-result v0

    return v0
.end method

.method public getCurrentCpuLoad()D
    .locals 4

    .prologue
    .line 232
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentCpuLoad()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getCurrentDaemonThreadCount()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentDaemonThreadCount()I

    move-result v0

    return v0
.end method

.method public getCurrentGcCpuLoad()D
    .locals 4

    .prologue
    .line 242
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentGcCpuLoad()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getCurrentIdleTime()J
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentIdleTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentJobExecuteTime()J
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentJobExecuteTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentJobWaitTime()J
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentJobWaitTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentRejectedJobs()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentRejectedJobs()I

    move-result v0

    return v0
.end method

.method public getCurrentThreadCount()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentThreadCount()I

    move-result v0

    return v0
.end method

.method public getCurrentWaitingJobs()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentWaitingJobs()I

    move-result v0

    return v0
.end method

.method public getHeapMemoryCommitted()J
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getHeapMemoryCommitted()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeapMemoryInitialized()J
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getHeapMemoryInitialized()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeapMemoryMaximum()J
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getHeapMemoryMaximum()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeapMemoryTotal()J
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getHeapMemoryTotal()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeapMemoryUsed()J
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getHeapMemoryUsed()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIdleTimePercentage()F
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getIdleTimePercentage()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getLastDataVersion()J
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getLastDataVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getLastUpdateTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaximumActiveJobs()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getMaximumActiveJobs()I

    move-result v0

    return v0
.end method

.method public getMaximumCancelledJobs()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getMaximumCancelledJobs()I

    move-result v0

    return v0
.end method

.method public getMaximumJobExecuteTime()J
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getMaximumJobExecuteTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaximumJobWaitTime()J
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getMaximumJobWaitTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaximumRejectedJobs()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getMaximumRejectedJobs()I

    move-result v0

    return v0
.end method

.method public getMaximumThreadCount()I
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getMaximumThreadCount()I

    move-result v0

    return v0
.end method

.method public getMaximumWaitingJobs()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getMaximumWaitingJobs()I

    move-result v0

    return v0
.end method

.method public getNodeStartTime()J
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getNodeStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNonHeapMemoryCommitted()J
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getNonHeapMemoryCommitted()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNonHeapMemoryInitialized()J
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getNonHeapMemoryInitialized()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNonHeapMemoryMaximum()J
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getNonHeapMemoryMaximum()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNonHeapMemoryTotal()J
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getNonHeapMemoryTotal()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNonHeapMemoryUsed()J
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getNonHeapMemoryUsed()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutboundMessagesQueueSize()I
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getOutboundMessagesQueueSize()I

    move-result v0

    return v0
.end method

.method public getReceivedBytesCount()J
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getReceivedBytesCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReceivedMessagesCount()I
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getReceivedMessagesCount()I

    move-result v0

    return v0
.end method

.method public getSentBytesCount()J
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getSentBytesCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSentMessagesCount()I
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getSentMessagesCount()I

    move-result v0

    return v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalBusyTime()J
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalBusyTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalCancelledJobs()I
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalCancelledJobs()I

    move-result v0

    return v0
.end method

.method public getTotalCpus()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalCpus()I

    move-result v0

    return v0
.end method

.method public getTotalExecutedJobs()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalExecutedJobs()I

    move-result v0

    return v0
.end method

.method public getTotalExecutedTasks()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalExecutedTasks()I

    move-result v0

    return v0
.end method

.method public getTotalIdleTime()J
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalIdleTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalNodes()I
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalNodes()I

    move-result v0

    return v0
.end method

.method public getTotalRejectedJobs()I
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalRejectedJobs()I

    move-result v0

    return v0
.end method

.method public getTotalStartedThreadCount()J
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalStartedThreadCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUpTime()J
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getUpTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    const-class v0, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
