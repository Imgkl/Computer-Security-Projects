.class public Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;
.super Ljava/lang/Object;
.source "GridClientNodeMetricsAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/GridClientNodeMetrics;


# static fields
.field private static final serialVersionUID:J = 0x7f274e0860df154fL


# instance fields
.field private availProcs:I

.field private avgActiveJobs:F

.field private avgCancelledJobs:F

.field private avgJobExecTime:D

.field private avgJobWaitTime:D

.field private avgLoad:D

.field private avgRejectedJobs:F

.field private avgWaitingJobs:F

.field private curActiveJobs:I

.field private curCancelledJobs:I

.field private curIdleTime:J

.field private curJobExecTime:J

.field private curJobWaitTime:J

.field private curRejectedJobs:I

.field private curWaitingJobs:I

.field private daemonThreadCnt:I

.field private fileSysFreeSpace:J

.field private fileSysTotalSpace:J

.field private fileSysUsableSpace:J

.field private gcLoad:D

.field private heapCommitted:J

.field private heapInit:J

.field private heapMax:J

.field private heapUsed:J

.field private lastDataVer:J

.field private lastUpdateTime:J

.field private load:D

.field private maxActiveJobs:I

.field private maxCancelledJobs:I

.field private maxJobExecTime:J

.field private maxJobWaitTime:J

.field private maxRejectedJobs:I

.field private maxWaitingJobs:I

.field private nodeStartTime:J

.field private nonHeapCommitted:J

.field private nonHeapInit:J

.field private nonHeapMax:J

.field private nonHeapUsed:J

.field private peakThreadCnt:I

.field private rcvdBytesCnt:J

.field private rcvdMsgsCnt:I

.field private sentBytesCnt:J

.field private sentMsgsCnt:I

.field private startTime:J

.field private startedThreadCnt:J

.field private threadCnt:I

.field private totalCancelledJobs:I

.field private totalExecTasks:I

.field private totalExecutedJobs:I

.field private totalIdleTime:J

.field private totalRejectedJobs:I

.field private upTime:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const/4 v2, -0x1

    const-wide/16 v0, -0x1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->lastUpdateTime:J

    .line 33
    iput v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->maxActiveJobs:I

    .line 36
    iput v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->curActiveJobs:I

    .line 39
    iput v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->avgActiveJobs:F

    .line 42
    iput v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->maxWaitingJobs:I

    .line 45
    iput v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->curWaitingJobs:I

    .line 48
    iput v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->avgWaitingJobs:F

    .line 51
    iput v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->maxRejectedJobs:I

    .line 54
    iput v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->curRejectedJobs:I

    .line 57
    iput v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->avgRejectedJobs:F

    .line 60
    iput v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->maxCancelledJobs:I

    .line 63
    iput v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->curCancelledJobs:I

    .line 66
    iput v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->avgCancelledJobs:F

    .line 69
    iput v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->totalRejectedJobs:I

    .line 72
    iput v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->totalCancelledJobs:I

    .line 75
    iput v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->totalExecutedJobs:I

    .line 78
    iput-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->maxJobWaitTime:J

    .line 81
    iput-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->curJobWaitTime:J

    .line 84
    iput-wide v4, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->avgJobWaitTime:D

    .line 87
    iput-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->maxJobExecTime:J

    .line 90
    iput-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->curJobExecTime:J

    .line 93
    iput-wide v4, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->avgJobExecTime:D

    .line 96
    iput v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->totalExecTasks:I

    .line 99
    iput-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->totalIdleTime:J

    .line 102
    iput-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->curIdleTime:J

    .line 105
    iput v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->availProcs:I

    .line 108
    iput-wide v4, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->load:D

    .line 111
    iput-wide v4, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->avgLoad:D

    .line 114
    iput-wide v4, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->gcLoad:D

    .line 117
    iput-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->heapInit:J

    .line 120
    iput-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->heapUsed:J

    .line 123
    iput-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->heapCommitted:J

    .line 126
    iput-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->heapMax:J

    .line 129
    iput-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->nonHeapInit:J

    .line 132
    iput-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->nonHeapUsed:J

    .line 135
    iput-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->nonHeapCommitted:J

    .line 138
    iput-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->nonHeapMax:J

    .line 141
    iput-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->upTime:J

    .line 144
    iput-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->startTime:J

    .line 147
    iput-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->nodeStartTime:J

    .line 150
    iput v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->threadCnt:I

    .line 153
    iput v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->peakThreadCnt:I

    .line 156
    iput-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->startedThreadCnt:J

    .line 159
    iput v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->daemonThreadCnt:I

    .line 162
    iput-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->fileSysFreeSpace:J

    .line 165
    iput-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->fileSysTotalSpace:J

    .line 168
    iput-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->fileSysUsableSpace:J

    .line 171
    iput-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->lastDataVer:J

    .line 174
    iput v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->sentMsgsCnt:I

    .line 177
    iput-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->sentBytesCnt:J

    .line 180
    iput v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->rcvdMsgsCnt:I

    .line 183
    iput-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->rcvdBytesCnt:J

    return-void
.end method


# virtual methods
.method public getAverageActiveJobs()F
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->avgActiveJobs:F

    return v0
.end method

.method public getAverageCancelledJobs()F
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->avgCancelledJobs:F

    return v0
.end method

.method public getAverageCpuLoad()D
    .locals 2

    .prologue
    .line 562
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->avgLoad:D

    return-wide v0
.end method

.method public getAverageJobExecuteTime()D
    .locals 2

    .prologue
    .line 481
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->avgJobExecTime:D

    return-wide v0
.end method

.method public getAverageJobWaitTime()D
    .locals 2

    .prologue
    .line 439
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->avgJobWaitTime:D

    return-wide v0
.end method

.method public getAverageRejectedJobs()F
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->avgRejectedJobs:F

    return v0
.end method

.method public getAverageWaitingJobs()F
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->avgWaitingJobs:F

    return v0
.end method

.method public getBusyTimePercentage()F
    .locals 2

    .prologue
    .line 542
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->getIdleTimePercentage()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getCurrentActiveJobs()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->curActiveJobs:I

    return v0
.end method

.method public getCurrentCancelledJobs()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->curCancelledJobs:I

    return v0
.end method

.method public getCurrentCpuLoad()D
    .locals 2

    .prologue
    .line 557
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->load:D

    return-wide v0
.end method

.method public getCurrentDaemonThreadCount()I
    .locals 1

    .prologue
    .line 642
    iget v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->daemonThreadCnt:I

    return v0
.end method

.method public getCurrentGcCpuLoad()D
    .locals 2

    .prologue
    .line 567
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->gcLoad:D

    return-wide v0
.end method

.method public getCurrentIdleTime()J
    .locals 2

    .prologue
    .line 528
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->curIdleTime:J

    return-wide v0
.end method

.method public getCurrentJobExecuteTime()J
    .locals 2

    .prologue
    .line 467
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->curJobExecTime:J

    return-wide v0
.end method

.method public getCurrentJobWaitTime()J
    .locals 2

    .prologue
    .line 425
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->curJobWaitTime:J

    return-wide v0
.end method

.method public getCurrentRejectedJobs()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->curRejectedJobs:I

    return v0
.end method

.method public getCurrentThreadCount()I
    .locals 1

    .prologue
    .line 627
    iget v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->threadCnt:I

    return v0
.end method

.method public getCurrentWaitingJobs()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->curWaitingJobs:I

    return v0
.end method

.method public getFileSystemFreeSpace()J
    .locals 2

    .prologue
    .line 647
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->fileSysFreeSpace:J

    return-wide v0
.end method

.method public getFileSystemTotalSpace()J
    .locals 2

    .prologue
    .line 652
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->fileSysTotalSpace:J

    return-wide v0
.end method

.method public getFileSystemUsableSpace()J
    .locals 2

    .prologue
    .line 657
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->fileSysUsableSpace:J

    return-wide v0
.end method

.method public getHeapMemoryCommitted()J
    .locals 2

    .prologue
    .line 582
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->heapCommitted:J

    return-wide v0
.end method

.method public getHeapMemoryInitialized()J
    .locals 2

    .prologue
    .line 572
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->heapInit:J

    return-wide v0
.end method

.method public getHeapMemoryMaximum()J
    .locals 2

    .prologue
    .line 587
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->heapMax:J

    return-wide v0
.end method

.method public getHeapMemoryUsed()J
    .locals 2

    .prologue
    .line 577
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->heapUsed:J

    return-wide v0
.end method

.method public getIdleTimePercentage()F
    .locals 4

    .prologue
    .line 547
    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->getTotalIdleTime()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->getUpTime()J

    move-result-wide v2

    long-to-float v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public getLastDataVersion()J
    .locals 2

    .prologue
    .line 662
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->lastDataVer:J

    return-wide v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .prologue
    .line 187
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->lastUpdateTime:J

    return-wide v0
.end method

.method public getMaximumActiveJobs()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->maxActiveJobs:I

    return v0
.end method

.method public getMaximumCancelledJobs()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->maxCancelledJobs:I

    return v0
.end method

.method public getMaximumJobExecuteTime()J
    .locals 2

    .prologue
    .line 453
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->maxJobExecTime:J

    return-wide v0
.end method

.method public getMaximumJobWaitTime()J
    .locals 2

    .prologue
    .line 411
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->maxJobWaitTime:J

    return-wide v0
.end method

.method public getMaximumRejectedJobs()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->maxRejectedJobs:I

    return v0
.end method

.method public getMaximumThreadCount()I
    .locals 1

    .prologue
    .line 632
    iget v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->peakThreadCnt:I

    return v0
.end method

.method public getMaximumWaitingJobs()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->maxWaitingJobs:I

    return v0
.end method

.method public getNodeStartTime()J
    .locals 2

    .prologue
    .line 622
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->nodeStartTime:J

    return-wide v0
.end method

.method public getNonHeapMemoryCommitted()J
    .locals 2

    .prologue
    .line 602
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->nonHeapCommitted:J

    return-wide v0
.end method

.method public getNonHeapMemoryInitialized()J
    .locals 2

    .prologue
    .line 592
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->nonHeapInit:J

    return-wide v0
.end method

.method public getNonHeapMemoryMaximum()J
    .locals 2

    .prologue
    .line 607
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->nonHeapMax:J

    return-wide v0
.end method

.method public getNonHeapMemoryUsed()J
    .locals 2

    .prologue
    .line 597
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->nonHeapUsed:J

    return-wide v0
.end method

.method public getReceivedBytesCount()J
    .locals 2

    .prologue
    .line 917
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->rcvdBytesCnt:J

    return-wide v0
.end method

.method public getReceivedMessagesCount()I
    .locals 1

    .prologue
    .line 903
    iget v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->rcvdMsgsCnt:I

    return v0
.end method

.method public getSentBytesCount()J
    .locals 2

    .prologue
    .line 889
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->sentBytesCnt:J

    return-wide v0
.end method

.method public getSentMessagesCount()I
    .locals 1

    .prologue
    .line 875
    iget v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->sentMsgsCnt:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 617
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->startTime:J

    return-wide v0
.end method

.method public getTotalBusyTime()J
    .locals 4

    .prologue
    .line 509
    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->getUpTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->getTotalIdleTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalCancelledJobs()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->totalCancelledJobs:I

    return v0
.end method

.method public getTotalCpus()I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->availProcs:I

    return v0
.end method

.method public getTotalExecutedJobs()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->totalExecutedJobs:I

    return v0
.end method

.method public getTotalExecutedTasks()I
    .locals 1

    .prologue
    .line 495
    iget v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->totalExecTasks:I

    return v0
.end method

.method public getTotalIdleTime()J
    .locals 2

    .prologue
    .line 514
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->totalIdleTime:J

    return-wide v0
.end method

.method public getTotalRejectedJobs()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->totalRejectedJobs:I

    return v0
.end method

.method public getTotalStartedThreadCount()J
    .locals 2

    .prologue
    .line 637
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->startedThreadCnt:J

    return-wide v0
.end method

.method public getUpTime()J
    .locals 2

    .prologue
    .line 612
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->upTime:J

    return-wide v0
.end method

.method public setAverageActiveJobs(F)V
    .locals 0
    .param p1, "avgActiveJobs"    # F

    .prologue
    .line 238
    iput p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->avgActiveJobs:F

    .line 239
    return-void
.end method

.method public setAverageCancelledJobs(F)V
    .locals 0
    .param p1, "avgCancelledJobs"    # F

    .prologue
    .line 378
    iput p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->avgCancelledJobs:F

    .line 379
    return-void
.end method

.method public setAverageCpuLoad(D)V
    .locals 1
    .param p1, "avgLoad"    # D

    .prologue
    .line 689
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->avgLoad:D

    .line 690
    return-void
.end method

.method public setAverageJobExecuteTime(D)V
    .locals 1
    .param p1, "avgJobExecTime"    # D

    .prologue
    .line 490
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->avgJobExecTime:D

    .line 491
    return-void
.end method

.method public setAverageJobWaitTime(D)V
    .locals 1
    .param p1, "avgJobWaitTime"    # D

    .prologue
    .line 448
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->avgJobWaitTime:D

    .line 449
    return-void
.end method

.method public setAverageRejectedJobs(F)V
    .locals 0
    .param p1, "avgRejectedJobs"    # F

    .prologue
    .line 322
    iput p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->avgRejectedJobs:F

    .line 323
    return-void
.end method

.method public setAverageWaitingJobs(F)V
    .locals 0
    .param p1, "avgWaitingJobs"    # F

    .prologue
    .line 280
    iput p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->avgWaitingJobs:F

    .line 281
    return-void
.end method

.method public setCurrentActiveJobs(I)V
    .locals 0
    .param p1, "curActiveJobs"    # I

    .prologue
    .line 224
    iput p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->curActiveJobs:I

    .line 225
    return-void
.end method

.method public setCurrentCancelledJobs(I)V
    .locals 0
    .param p1, "curCancelledJobs"    # I

    .prologue
    .line 364
    iput p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->curCancelledJobs:I

    .line 365
    return-void
.end method

.method public setCurrentCpuLoad(D)V
    .locals 1
    .param p1, "load"    # D

    .prologue
    .line 680
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->load:D

    .line 681
    return-void
.end method

.method public setCurrentDaemonThreadCount(I)V
    .locals 0
    .param p1, "daemonThreadCnt"    # I

    .prologue
    .line 833
    iput p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->daemonThreadCnt:I

    .line 834
    return-void
.end method

.method public setCurrentGcCpuLoad(D)V
    .locals 1
    .param p1, "gcLoad"    # D

    .prologue
    .line 698
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->gcLoad:D

    .line 699
    return-void
.end method

.method public setCurrentIdleTime(J)V
    .locals 1
    .param p1, "curIdleTime"    # J

    .prologue
    .line 537
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->curIdleTime:J

    .line 538
    return-void
.end method

.method public setCurrentJobExecuteTime(J)V
    .locals 1
    .param p1, "curJobExecTime"    # J

    .prologue
    .line 476
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->curJobExecTime:J

    .line 477
    return-void
.end method

.method public setCurrentJobWaitTime(J)V
    .locals 1
    .param p1, "curJobWaitTime"    # J

    .prologue
    .line 434
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->curJobWaitTime:J

    .line 435
    return-void
.end method

.method public setCurrentRejectedJobs(I)V
    .locals 0
    .param p1, "curRejectedJobs"    # I

    .prologue
    .line 308
    iput p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->curRejectedJobs:I

    .line 309
    return-void
.end method

.method public setCurrentThreadCount(I)V
    .locals 0
    .param p1, "threadCnt"    # I

    .prologue
    .line 806
    iput p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->threadCnt:I

    .line 807
    return-void
.end method

.method public setCurrentWaitingJobs(I)V
    .locals 0
    .param p1, "curWaitingJobs"    # I

    .prologue
    .line 266
    iput p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->curWaitingJobs:I

    .line 267
    return-void
.end method

.method public setFileSystemFreeSpace(J)V
    .locals 1
    .param p1, "fileSysFreeSpace"    # J

    .prologue
    .line 842
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->fileSysFreeSpace:J

    .line 843
    return-void
.end method

.method public setFileSystemTotalSpace(J)V
    .locals 1
    .param p1, "fileSysTotalSpace"    # J

    .prologue
    .line 851
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->fileSysTotalSpace:J

    .line 852
    return-void
.end method

.method public setFileSystemUsableSpace(J)V
    .locals 1
    .param p1, "fileSysUsableSpace"    # J

    .prologue
    .line 861
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->fileSysUsableSpace:J

    .line 862
    return-void
.end method

.method public setHeapMemoryCommitted(J)V
    .locals 1
    .param p1, "heapCommitted"    # J

    .prologue
    .line 725
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->heapCommitted:J

    .line 726
    return-void
.end method

.method public setHeapMemoryInitialized(J)V
    .locals 1
    .param p1, "heapInit"    # J

    .prologue
    .line 707
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->heapInit:J

    .line 708
    return-void
.end method

.method public setHeapMemoryMaximum(J)V
    .locals 1
    .param p1, "heapMax"    # J

    .prologue
    .line 734
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->heapMax:J

    .line 735
    return-void
.end method

.method public setHeapMemoryUsed(J)V
    .locals 1
    .param p1, "heapUsed"    # J

    .prologue
    .line 716
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->heapUsed:J

    .line 717
    return-void
.end method

.method public setLastDataVersion(J)V
    .locals 1
    .param p1, "lastDataVer"    # J

    .prologue
    .line 870
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->lastDataVer:J

    .line 871
    return-void
.end method

.method public setLastUpdateTime(J)V
    .locals 1
    .param p1, "lastUpdateTime"    # J

    .prologue
    .line 196
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->lastUpdateTime:J

    .line 197
    return-void
.end method

.method public setMaximumActiveJobs(I)V
    .locals 0
    .param p1, "maxActiveJobs"    # I

    .prologue
    .line 210
    iput p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->maxActiveJobs:I

    .line 211
    return-void
.end method

.method public setMaximumCancelledJobs(I)V
    .locals 0
    .param p1, "maxCancelledJobs"    # I

    .prologue
    .line 350
    iput p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->maxCancelledJobs:I

    .line 351
    return-void
.end method

.method public setMaximumJobExecuteTime(J)V
    .locals 1
    .param p1, "maxJobExecTime"    # J

    .prologue
    .line 462
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->maxJobExecTime:J

    .line 463
    return-void
.end method

.method public setMaximumJobWaitTime(J)V
    .locals 1
    .param p1, "maxJobWaitTime"    # J

    .prologue
    .line 420
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->maxJobWaitTime:J

    .line 421
    return-void
.end method

.method public setMaximumRejectedJobs(I)V
    .locals 0
    .param p1, "maxRejectedJobs"    # I

    .prologue
    .line 294
    iput p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->maxRejectedJobs:I

    .line 295
    return-void
.end method

.method public setMaximumThreadCount(I)V
    .locals 0
    .param p1, "peakThreadCnt"    # I

    .prologue
    .line 815
    iput p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->peakThreadCnt:I

    .line 816
    return-void
.end method

.method public setMaximumWaitingJobs(I)V
    .locals 0
    .param p1, "maxWaitingJobs"    # I

    .prologue
    .line 252
    iput p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->maxWaitingJobs:I

    .line 253
    return-void
.end method

.method public setNodeStartTime(J)V
    .locals 1
    .param p1, "nodeStartTime"    # J

    .prologue
    .line 797
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->nodeStartTime:J

    .line 798
    return-void
.end method

.method public setNonHeapMemoryCommitted(J)V
    .locals 1
    .param p1, "nonHeapCommitted"    # J

    .prologue
    .line 761
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->nonHeapCommitted:J

    .line 762
    return-void
.end method

.method public setNonHeapMemoryInitialized(J)V
    .locals 1
    .param p1, "nonHeapInit"    # J

    .prologue
    .line 743
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->nonHeapInit:J

    .line 744
    return-void
.end method

.method public setNonHeapMemoryMaximum(J)V
    .locals 1
    .param p1, "nonHeapMax"    # J

    .prologue
    .line 770
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->nonHeapMax:J

    .line 771
    return-void
.end method

.method public setNonHeapMemoryUsed(J)V
    .locals 1
    .param p1, "nonHeapUsed"    # J

    .prologue
    .line 752
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->nonHeapUsed:J

    .line 753
    return-void
.end method

.method public setReceivedBytesCount(J)V
    .locals 1
    .param p1, "rcvdBytesCnt"    # J

    .prologue
    .line 926
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->rcvdBytesCnt:J

    .line 927
    return-void
.end method

.method public setReceivedMessagesCount(I)V
    .locals 0
    .param p1, "rcvdMsgsCnt"    # I

    .prologue
    .line 912
    iput p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->rcvdMsgsCnt:I

    .line 913
    return-void
.end method

.method public setSentBytesCount(J)V
    .locals 1
    .param p1, "sentBytesCnt"    # J

    .prologue
    .line 898
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->sentBytesCnt:J

    .line 899
    return-void
.end method

.method public setSentMessagesCount(I)V
    .locals 0
    .param p1, "sentMsgsCnt"    # I

    .prologue
    .line 884
    iput p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->sentMsgsCnt:I

    .line 885
    return-void
.end method

.method public setStartTime(J)V
    .locals 1
    .param p1, "startTime"    # J

    .prologue
    .line 788
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->startTime:J

    .line 789
    return-void
.end method

.method public setTotalCancelledJobs(I)V
    .locals 0
    .param p1, "totalCancelledJobs"    # I

    .prologue
    .line 406
    iput p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->totalCancelledJobs:I

    .line 407
    return-void
.end method

.method public setTotalCpus(I)V
    .locals 0
    .param p1, "availProcs"    # I

    .prologue
    .line 671
    iput p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->availProcs:I

    .line 672
    return-void
.end method

.method public setTotalExecutedJobs(I)V
    .locals 0
    .param p1, "totalExecutedJobs"    # I

    .prologue
    .line 392
    iput p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->totalExecutedJobs:I

    .line 393
    return-void
.end method

.method public setTotalExecutedTasks(I)V
    .locals 0
    .param p1, "totalExecTasks"    # I

    .prologue
    .line 504
    iput p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->totalExecTasks:I

    .line 505
    return-void
.end method

.method public setTotalIdleTime(J)V
    .locals 1
    .param p1, "totalIdleTime"    # J

    .prologue
    .line 523
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->totalIdleTime:J

    .line 524
    return-void
.end method

.method public setTotalRejectedJobs(I)V
    .locals 0
    .param p1, "totalRejectedJobs"    # I

    .prologue
    .line 336
    iput p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->totalRejectedJobs:I

    .line 337
    return-void
.end method

.method public setTotalStartedThreadCount(J)V
    .locals 1
    .param p1, "startedThreadCnt"    # J

    .prologue
    .line 824
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->startedThreadCnt:J

    .line 825
    return-void
.end method

.method public setUpTime(J)V
    .locals 1
    .param p1, "upTime"    # J

    .prologue
    .line 779
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->upTime:J

    .line 780
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridClientNodeMetricsAdapter [lastUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->lastUpdateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxActiveJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->maxActiveJobs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", curActiveJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->curActiveJobs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgActiveJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->avgActiveJobs:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxWaitingJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->maxWaitingJobs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", curWaitingJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->curWaitingJobs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgWaitingJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->avgWaitingJobs:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxRejectedJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->maxRejectedJobs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", curRejectedJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->curRejectedJobs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgRejectedJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->avgRejectedJobs:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxCancelledJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->maxCancelledJobs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", curCancelledJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->curCancelledJobs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgCancelledJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->avgCancelledJobs:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalRejectedJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->totalRejectedJobs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalCancelledJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->totalCancelledJobs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalExecutedJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->totalExecutedJobs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxJobWaitTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->maxJobWaitTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", curJobWaitTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->curJobWaitTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgJobWaitTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->avgJobWaitTime:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxJobExecTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->maxJobExecTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", curJobExecTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->curJobExecTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgJobExecTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->avgJobExecTime:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalExecTasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->totalExecTasks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalIdleTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->totalIdleTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", curIdleTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->curIdleTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", availProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->availProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", load="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->load:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgLoad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->avgLoad:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gcLoad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->gcLoad:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", heapInit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->heapInit:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", heapUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->heapUsed:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", heapCommitted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->heapCommitted:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", heapMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->heapMax:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nonHeapInit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->nonHeapInit:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nonHeapUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->nonHeapUsed:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nonHeapCommitted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->nonHeapCommitted:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nonHeapMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->nonHeapMax:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", upTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->upTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->startTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nodeStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->nodeStartTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", threadCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->threadCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", peakThreadCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->peakThreadCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startedThreadCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->startedThreadCnt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", daemonThreadCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->daemonThreadCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileSysFreeSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->fileSysFreeSpace:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileSysTotalSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->fileSysTotalSpace:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileSysUsableSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->fileSysUsableSpace:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastDataVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->lastDataVer:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sentMsgsCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->sentMsgsCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sentBytesCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->sentBytesCnt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rcvdMsgsCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->rcvdMsgsCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rcvdBytesCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->rcvdBytesCnt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
