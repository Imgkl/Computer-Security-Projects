.class public Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveProcessingTimeLoadProbe;
.super Ljava/lang/Object;
.source "AdaptiveProcessingTimeLoadProbe.java"

# interfaces
.implements Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadProbe;


# instance fields
.field private useAvg:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveProcessingTimeLoadProbe;->useAvg:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "useAvg"    # Z

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveProcessingTimeLoadProbe;->useAvg:Z

    .line 62
    iput-boolean p1, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveProcessingTimeLoadProbe;->useAvg:Z

    .line 63
    return-void
.end method


# virtual methods
.method public getLoad(Lorg/apache/ignite/cluster/ClusterNode;I)D
    .locals 10
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "jobsSentSinceLastUpdate"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 86
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v2

    .line 88
    .local v2, "metrics":Lorg/apache/ignite/cluster/ClusterMetrics;
    iget-boolean v3, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveProcessingTimeLoadProbe;->useAvg:Z

    if-eqz v3, :cond_1

    .line 89
    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getAverageJobExecuteTime()D

    move-result-wide v6

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getAverageJobWaitTime()D

    move-result-wide v8

    add-double v0, v6, v8

    .line 93
    .local v0, "load":D
    cmpl-double v3, v0, v4

    if-lez v3, :cond_1

    move-wide v4, v0

    .line 99
    :cond_0
    :goto_0
    return-wide v4

    .line 97
    .end local v0    # "load":D
    :cond_1
    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentJobExecuteTime()J

    move-result-wide v6

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentJobWaitTime()J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-double v0, v6

    .line 99
    .restart local v0    # "load":D
    cmpg-double v3, v0, v4

    if-ltz v3, :cond_0

    move-wide v4, v0

    goto :goto_0
.end method

.method public isUseAverage()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveProcessingTimeLoadProbe;->useAvg:Z

    return v0
.end method

.method public setUseAverage(Z)V
    .locals 0
    .param p1, "useAvg"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveProcessingTimeLoadProbe;->useAvg:Z

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-class v0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveProcessingTimeLoadProbe;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
