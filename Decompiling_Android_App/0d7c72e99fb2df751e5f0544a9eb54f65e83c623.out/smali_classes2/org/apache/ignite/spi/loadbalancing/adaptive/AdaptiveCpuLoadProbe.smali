.class public Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveCpuLoadProbe;
.super Ljava/lang/Object;
.source "AdaptiveCpuLoadProbe.java"

# interfaces
.implements Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadProbe;


# instance fields
.field private procCoefficient:D

.field private useAvg:Z

.field private useProcs:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveCpuLoadProbe;->useAvg:Z

    .line 70
    iput-boolean v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveCpuLoadProbe;->useProcs:Z

    .line 79
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveCpuLoadProbe;->procCoefficient:D

    .line 86
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 2
    .param p1, "useAvg"    # Z
    .param p2, "useProcs"    # Z

    .prologue
    const/4 v0, 0x1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveCpuLoadProbe;->useAvg:Z

    .line 70
    iput-boolean v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveCpuLoadProbe;->useProcs:Z

    .line 79
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveCpuLoadProbe;->procCoefficient:D

    .line 102
    iput-boolean p1, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveCpuLoadProbe;->useAvg:Z

    .line 103
    iput-boolean p2, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveCpuLoadProbe;->useProcs:Z

    .line 104
    return-void
.end method

.method public constructor <init>(ZZD)V
    .locals 3
    .param p1, "useAvg"    # Z
    .param p2, "useProcs"    # Z
    .param p3, "procCoefficient"    # D

    .prologue
    const/4 v0, 0x1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveCpuLoadProbe;->useAvg:Z

    .line 70
    iput-boolean v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveCpuLoadProbe;->useProcs:Z

    .line 79
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveCpuLoadProbe;->procCoefficient:D

    .line 127
    iput-boolean p1, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveCpuLoadProbe;->useAvg:Z

    .line 128
    iput-boolean p2, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveCpuLoadProbe;->useProcs:Z

    .line 129
    iput-wide p3, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveCpuLoadProbe;->procCoefficient:D

    .line 130
    return-void
.end method


# virtual methods
.method public getLoad(Lorg/apache/ignite/cluster/ClusterNode;I)D
    .locals 12
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "jobsSentSinceLastUpdate"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 217
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v4

    .line 219
    .local v4, "metrics":Lorg/apache/ignite/cluster/ClusterMetrics;
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 221
    .local v0, "k":D
    iget-boolean v8, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveCpuLoadProbe;->useProcs:Z

    if-eqz v8, :cond_0

    .line 222
    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalCpus()I

    move-result v5

    .line 224
    .local v5, "procs":I
    const/4 v8, 0x1

    if-le v5, v8, :cond_0

    .line 225
    int-to-double v8, v5

    iget-wide v10, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveCpuLoadProbe;->procCoefficient:D

    mul-double v0, v8, v10

    .line 228
    .end local v5    # "procs":I
    :cond_0
    iget-boolean v8, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveCpuLoadProbe;->useAvg:Z

    if-eqz v8, :cond_2

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterMetrics;->getAverageCpuLoad()D

    move-result-wide v8

    :goto_0
    div-double v2, v8, v0

    .line 230
    .local v2, "load":D
    cmpg-double v8, v2, v6

    if-gez v8, :cond_1

    move-wide v2, v6

    .end local v2    # "load":D
    :cond_1
    return-wide v2

    .line 228
    :cond_2
    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentCpuLoad()D

    move-result-wide v8

    goto :goto_0
.end method

.method public getProcessorCoefficient()D
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveCpuLoadProbe;->procCoefficient:D

    return-wide v0
.end method

.method public isUseAverage()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveCpuLoadProbe;->useAvg:Z

    return v0
.end method

.method public isUseProcessors()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveCpuLoadProbe;->useProcs:Z

    return v0
.end method

.method public setProcessorCoefficient(D)V
    .locals 3
    .param p1, "procCoefficient"    # D

    .prologue
    .line 210
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "procCoefficient > 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 212
    iput-wide p1, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveCpuLoadProbe;->procCoefficient:D

    .line 213
    return-void

    .line 210
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUseAverage(Z)V
    .locals 0
    .param p1, "useAvg"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveCpuLoadProbe;->useAvg:Z

    .line 149
    return-void
.end method

.method public setUseProcessors(Z)V
    .locals 0
    .param p1, "useProcs"    # Z

    .prologue
    .line 180
    iput-boolean p1, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveCpuLoadProbe;->useProcs:Z

    .line 181
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    const-class v0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveCpuLoadProbe;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
