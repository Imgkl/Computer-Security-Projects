.class public Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;
.super Ljava/lang/Object;
.source "GridJobMetrics.java"


# instance fields
.field private avgActiveJobs:F

.field private avgCancelledJobs:F

.field private avgJobExecTime:D

.field private avgJobWaitTime:D

.field private avgRejectedJobs:F

.field private avgWaitingJobs:F

.field private cpuLoadAvg:D

.field private curActiveJobs:I

.field private curCancelledJobs:I

.field private curIdleTime:J

.field private curJobExecTime:J

.field private curJobWaitTime:J

.field private curRejectedJobs:I

.field private curWaitingJobs:I

.field private maxActiveJobs:I

.field private maxCancelledJobs:I

.field private maxJobExecTime:J

.field private maxJobWaitTime:J

.field private maxRejectedJobs:I

.field private maxWaitingJobs:I

.field private totalCancelledJobs:I

.field private totalExecutedJobs:I

.field private totalIdleTime:J

.field private totalRejectedJobs:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAverageActiveJobs()F
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->avgActiveJobs:F

    return v0
.end method

.method public getAverageCancelledJobs()F
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->avgCancelledJobs:F

    return v0
.end method

.method public getAverageCpuLoad()D
    .locals 2

    .prologue
    .line 273
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->cpuLoadAvg:D

    return-wide v0
.end method

.method public getAverageJobExecuteTime()D
    .locals 2

    .prologue
    .line 246
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->avgJobExecTime:D

    return-wide v0
.end method

.method public getAverageJobWaitTime()D
    .locals 2

    .prologue
    .line 221
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->avgJobWaitTime:D

    return-wide v0
.end method

.method public getAverageRejectedJobs()F
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->avgRejectedJobs:F

    return v0
.end method

.method public getAverageWaitingJobs()F
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->avgWaitingJobs:F

    return v0
.end method

.method public getCurrentActiveJobs()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->curActiveJobs:I

    return v0
.end method

.method public getCurrentCancelledJobs()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->curCancelledJobs:I

    return v0
.end method

.method public getCurrentIdleTime()J
    .locals 2

    .prologue
    .line 264
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->curIdleTime:J

    return-wide v0
.end method

.method public getCurrentJobExecuteTime()J
    .locals 2

    .prologue
    .line 237
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->curJobExecTime:J

    return-wide v0
.end method

.method public getCurrentJobWaitTime()J
    .locals 2

    .prologue
    .line 214
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->curJobWaitTime:J

    return-wide v0
.end method

.method public getCurrentRejectedJobs()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->curRejectedJobs:I

    return v0
.end method

.method public getCurrentWaitingJobs()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->curWaitingJobs:I

    return v0
.end method

.method public getMaximumActiveJobs()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->maxActiveJobs:I

    return v0
.end method

.method public getMaximumCancelledJobs()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->maxCancelledJobs:I

    return v0
.end method

.method public getMaximumJobExecuteTime()J
    .locals 2

    .prologue
    .line 228
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->maxJobExecTime:J

    return-wide v0
.end method

.method public getMaximumJobWaitTime()J
    .locals 2

    .prologue
    .line 207
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->maxJobWaitTime:J

    return-wide v0
.end method

.method public getMaximumRejectedJobs()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->maxRejectedJobs:I

    return v0
.end method

.method public getMaximumWaitingJobs()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->maxWaitingJobs:I

    return v0
.end method

.method public getTotalCancelledJobs()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->totalCancelledJobs:I

    return v0
.end method

.method public getTotalExecutedJobs()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->totalExecutedJobs:I

    return v0
.end method

.method public getTotalIdleTime()J
    .locals 2

    .prologue
    .line 255
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->totalIdleTime:J

    return-wide v0
.end method

.method public getTotalRejectedJobs()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->totalRejectedJobs:I

    return v0
.end method

.method setAverageActiveJobs(F)V
    .locals 0
    .param p1, "avgActiveJobs"    # F

    .prologue
    .line 294
    iput p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->avgActiveJobs:F

    .line 295
    return-void
.end method

.method setAverageCancelledJobs(F)V
    .locals 0
    .param p1, "avgCancelledJobs"    # F

    .prologue
    .line 336
    iput p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->avgCancelledJobs:F

    .line 337
    return-void
.end method

.method setAverageCpuLoad(D)V
    .locals 1
    .param p1, "cpuLoadAvg"    # D

    .prologue
    .line 441
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->cpuLoadAvg:D

    .line 442
    return-void
.end method

.method setAverageJobExecutionTime(D)V
    .locals 1
    .param p1, "avgJobExecTime"    # D

    .prologue
    .line 420
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->avgJobExecTime:D

    .line 421
    return-void
.end method

.method setAverageJobWaitTime(D)V
    .locals 1
    .param p1, "avgJobWaitTime"    # D

    .prologue
    .line 399
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->avgJobWaitTime:D

    .line 400
    return-void
.end method

.method setAverageRejectedJobs(F)V
    .locals 0
    .param p1, "avgRejectedJobs"    # F

    .prologue
    .line 357
    iput p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->avgRejectedJobs:F

    .line 358
    return-void
.end method

.method setAverageWaitingJobs(F)V
    .locals 0
    .param p1, "avgWaitingJobs"    # F

    .prologue
    .line 315
    iput p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->avgWaitingJobs:F

    .line 316
    return-void
.end method

.method setCurrentActiveJobs(I)V
    .locals 0
    .param p1, "curActiveJobs"    # I

    .prologue
    .line 287
    iput p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->curActiveJobs:I

    .line 288
    return-void
.end method

.method setCurrentCancelledJobs(I)V
    .locals 0
    .param p1, "curCancelledJobs"    # I

    .prologue
    .line 329
    iput p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->curCancelledJobs:I

    .line 330
    return-void
.end method

.method setCurrentIdleTime(J)V
    .locals 1
    .param p1, "curIdleTime"    # J

    .prologue
    .line 434
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->curIdleTime:J

    .line 435
    return-void
.end method

.method setCurrentJobExecutionTime(J)V
    .locals 1
    .param p1, "curJobExecTime"    # J

    .prologue
    .line 413
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->curJobExecTime:J

    .line 414
    return-void
.end method

.method setCurrentJobWaitTime(J)V
    .locals 1
    .param p1, "curJobWaitTime"    # J

    .prologue
    .line 392
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->curJobWaitTime:J

    .line 393
    return-void
.end method

.method setCurrentRejectedJobs(I)V
    .locals 0
    .param p1, "curRejectedJobs"    # I

    .prologue
    .line 350
    iput p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->curRejectedJobs:I

    .line 351
    return-void
.end method

.method setCurrentWaitingJobs(I)V
    .locals 0
    .param p1, "curWaitingJobs"    # I

    .prologue
    .line 308
    iput p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->curWaitingJobs:I

    .line 309
    return-void
.end method

.method setMaxJobExecutionTime(J)V
    .locals 1
    .param p1, "maxJobExecTime"    # J

    .prologue
    .line 406
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->maxJobExecTime:J

    .line 407
    return-void
.end method

.method setMaximumActiveJobs(I)V
    .locals 0
    .param p1, "maxActiveJobs"    # I

    .prologue
    .line 280
    iput p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->maxActiveJobs:I

    .line 281
    return-void
.end method

.method setMaximumCancelledJobs(I)V
    .locals 0
    .param p1, "maxCancelledJobs"    # I

    .prologue
    .line 322
    iput p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->maxCancelledJobs:I

    .line 323
    return-void
.end method

.method setMaximumJobWaitTime(J)V
    .locals 1
    .param p1, "maxJobWaitTime"    # J

    .prologue
    .line 385
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->maxJobWaitTime:J

    .line 386
    return-void
.end method

.method setMaximumRejectedJobs(I)V
    .locals 0
    .param p1, "maxRejectedJobs"    # I

    .prologue
    .line 343
    iput p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->maxRejectedJobs:I

    .line 344
    return-void
.end method

.method setMaximumWaitingJobs(I)V
    .locals 0
    .param p1, "maxWaitingJobs"    # I

    .prologue
    .line 301
    iput p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->maxWaitingJobs:I

    .line 302
    return-void
.end method

.method setTotalCancelledJobs(I)V
    .locals 0
    .param p1, "totalCancelledJobs"    # I

    .prologue
    .line 371
    iput p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->totalCancelledJobs:I

    .line 372
    return-void
.end method

.method setTotalExecutedJobs(I)V
    .locals 0
    .param p1, "totalExecutedJobs"    # I

    .prologue
    .line 378
    iput p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->totalExecutedJobs:I

    .line 379
    return-void
.end method

.method setTotalIdleTime(J)V
    .locals 1
    .param p1, "totalIdleTime"    # J

    .prologue
    .line 427
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->totalIdleTime:J

    .line 428
    return-void
.end method

.method setTotalRejectedJobs(I)V
    .locals 0
    .param p1, "totalRejectedJobs"    # I

    .prologue
    .line 364
    iput p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->totalRejectedJobs:I

    .line 365
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    const-class v0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
