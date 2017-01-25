.class public Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;
.super Ljava/lang/Object;
.source "GridJobMetricsSnapshot.java"


# instance fields
.field private activeJobs:I

.field private cancelJobs:I

.field private cpuLoad:D

.field private execTime:J

.field private finished:I

.field private maxExecTime:J

.field private maxWaitTime:J

.field private passiveJobs:I

.field private rejectJobs:I

.field private started:I

.field private final ts:J

.field private waitTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->ts:J

    return-void
.end method


# virtual methods
.method public getActiveJobs()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->activeJobs:I

    return v0
.end method

.method public getCancelJobs()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->cancelJobs:I

    return v0
.end method

.method public getCpuLoad()D
    .locals 2

    .prologue
    .line 213
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->cpuLoad:D

    return-wide v0
.end method

.method public getExecutionTime()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->execTime:J

    return-wide v0
.end method

.method public getFinishedJobs()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->finished:I

    return v0
.end method

.method public getMaximumExecutionTime()J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->maxExecTime:J

    return-wide v0
.end method

.method public getMaximumWaitTime()J
    .locals 2

    .prologue
    .line 164
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->maxWaitTime:J

    return-wide v0
.end method

.method public getPassiveJobs()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->passiveJobs:I

    return v0
.end method

.method public getRejectJobs()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->rejectJobs:I

    return v0
.end method

.method public getStartedJobs()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->started:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->ts:J

    return-wide v0
.end method

.method public getWaitTime()J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->waitTime:J

    return-wide v0
.end method

.method public setActiveJobs(I)V
    .locals 0
    .param p1, "activeJobs"    # I

    .prologue
    .line 73
    iput p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->activeJobs:I

    .line 74
    return-void
.end method

.method public setCancelJobs(I)V
    .locals 0
    .param p1, "cancelJobs"    # I

    .prologue
    .line 101
    iput p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->cancelJobs:I

    .line 102
    return-void
.end method

.method public setCpuLoad(D)V
    .locals 1
    .param p1, "cpuLoad"    # D

    .prologue
    .line 220
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->cpuLoad:D

    .line 221
    return-void
.end method

.method public setExecutionTime(J)V
    .locals 1
    .param p1, "execTime"    # J

    .prologue
    .line 129
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->execTime:J

    .line 130
    return-void
.end method

.method public setFinishedJobs(I)V
    .locals 0
    .param p1, "finished"    # I

    .prologue
    .line 192
    iput p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->finished:I

    .line 193
    return-void
.end method

.method public setMaximumExecutionTime(J)V
    .locals 1
    .param p1, "maxExecTime"    # J

    .prologue
    .line 157
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->maxExecTime:J

    .line 158
    return-void
.end method

.method public setMaximumWaitTime(J)V
    .locals 1
    .param p1, "maxWaitTime"    # J

    .prologue
    .line 171
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->maxWaitTime:J

    .line 172
    return-void
.end method

.method public setPassiveJobs(I)V
    .locals 0
    .param p1, "passiveJobs"    # I

    .prologue
    .line 87
    iput p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->passiveJobs:I

    .line 88
    return-void
.end method

.method public setRejectJobs(I)V
    .locals 0
    .param p1, "rejectJobs"    # I

    .prologue
    .line 115
    iput p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->rejectJobs:I

    .line 116
    return-void
.end method

.method public setStartedJobs(I)V
    .locals 0
    .param p1, "started"    # I

    .prologue
    .line 206
    iput p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->started:I

    .line 207
    return-void
.end method

.method public setWaitTime(J)V
    .locals 1
    .param p1, "waitTime"    # J

    .prologue
    .line 143
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->waitTime:J

    .line 144
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    const-class v0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
