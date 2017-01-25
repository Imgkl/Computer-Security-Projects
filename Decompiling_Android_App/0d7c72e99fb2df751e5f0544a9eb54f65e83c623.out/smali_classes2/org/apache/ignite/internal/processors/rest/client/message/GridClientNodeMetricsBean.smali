.class public Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;
.super Ljava/lang/Object;
.source "GridClientNodeMetricsBean.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J


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
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->lastUpdateTime:J

    .line 33
    iput v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxActiveJobs:I

    .line 36
    iput v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curActiveJobs:I

    .line 39
    iput v3, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgActiveJobs:F

    .line 42
    iput v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxWaitingJobs:I

    .line 45
    iput v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curWaitingJobs:I

    .line 48
    iput v3, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgWaitingJobs:F

    .line 51
    iput v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxRejectedJobs:I

    .line 54
    iput v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curRejectedJobs:I

    .line 57
    iput v3, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgRejectedJobs:F

    .line 60
    iput v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxCancelledJobs:I

    .line 63
    iput v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curCancelledJobs:I

    .line 66
    iput v3, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgCancelledJobs:F

    .line 69
    iput v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalRejectedJobs:I

    .line 72
    iput v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalCancelledJobs:I

    .line 75
    iput v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalExecutedJobs:I

    .line 78
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxJobWaitTime:J

    .line 81
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curJobWaitTime:J

    .line 84
    iput-wide v4, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgJobWaitTime:D

    .line 87
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxJobExecTime:J

    .line 90
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curJobExecTime:J

    .line 93
    iput-wide v4, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgJobExecTime:D

    .line 96
    iput v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalExecTasks:I

    .line 99
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalIdleTime:J

    .line 102
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curIdleTime:J

    .line 105
    iput v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->availProcs:I

    .line 108
    iput-wide v4, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->load:D

    .line 111
    iput-wide v4, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgLoad:D

    .line 114
    iput-wide v4, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->gcLoad:D

    .line 117
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapInit:J

    .line 120
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapUsed:J

    .line 123
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapCommitted:J

    .line 126
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapMax:J

    .line 129
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapInit:J

    .line 132
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapUsed:J

    .line 135
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapCommitted:J

    .line 138
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapMax:J

    .line 141
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->upTime:J

    .line 144
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->startTime:J

    .line 147
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nodeStartTime:J

    .line 150
    iput v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->threadCnt:I

    .line 153
    iput v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->peakThreadCnt:I

    .line 156
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->startedThreadCnt:J

    .line 159
    iput v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->daemonThreadCnt:I

    .line 162
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->fileSysFreeSpace:J

    .line 165
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->fileSysTotalSpace:J

    .line 168
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->fileSysUsableSpace:J

    .line 171
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->lastDataVer:J

    .line 174
    iput v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->sentMsgsCnt:I

    .line 177
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->sentBytesCnt:J

    .line 180
    iput v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->rcvdMsgsCnt:I

    .line 183
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->rcvdBytesCnt:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1237
    if-ne p0, p1, :cond_1

    .line 1245
    :cond_0
    :goto_0
    return v1

    .line 1240
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 1241
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 1243
    check-cast v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;

    .line 1245
    .local v0, "other":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;
    iget v3, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->availProcs:I

    iget v4, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->availProcs:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curActiveJobs:I

    iget v4, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curActiveJobs:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curCancelledJobs:I

    iget v4, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curCancelledJobs:I

    if-ne v3, v4, :cond_4

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curIdleTime:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curIdleTime:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curJobExecTime:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curJobExecTime:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curJobWaitTime:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curJobWaitTime:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget v3, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curRejectedJobs:I

    iget v4, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curRejectedJobs:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curWaitingJobs:I

    iget v4, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curWaitingJobs:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->daemonThreadCnt:I

    iget v4, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->daemonThreadCnt:I

    if-ne v3, v4, :cond_4

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapCommitted:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapCommitted:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapInit:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapInit:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapMax:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapMax:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapUsed:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapUsed:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget v3, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxActiveJobs:I

    iget v4, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxActiveJobs:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxCancelledJobs:I

    iget v4, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxCancelledJobs:I

    if-ne v3, v4, :cond_4

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxJobExecTime:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxJobExecTime:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxJobWaitTime:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxJobWaitTime:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget v3, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxRejectedJobs:I

    iget v4, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxRejectedJobs:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxWaitingJobs:I

    iget v4, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxWaitingJobs:I

    if-ne v3, v4, :cond_4

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapCommitted:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapCommitted:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapInit:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapInit:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapMax:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapMax:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapUsed:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapUsed:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget v3, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->peakThreadCnt:I

    iget v4, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->peakThreadCnt:I

    if-ne v3, v4, :cond_4

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->startTime:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->startTime:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nodeStartTime:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nodeStartTime:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->startedThreadCnt:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->startedThreadCnt:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget v3, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->threadCnt:I

    iget v4, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->threadCnt:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalCancelledJobs:I

    iget v4, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalCancelledJobs:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalExecutedJobs:I

    iget v4, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalExecutedJobs:I

    if-ne v3, v4, :cond_4

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalIdleTime:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalIdleTime:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget v3, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalRejectedJobs:I

    iget v4, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalRejectedJobs:I

    if-ne v3, v4, :cond_4

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->fileSysFreeSpace:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->fileSysFreeSpace:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->fileSysTotalSpace:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->fileSysTotalSpace:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->fileSysUsableSpace:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->fileSysUsableSpace:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget v3, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalExecTasks:I

    iget v4, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalExecTasks:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->sentMsgsCnt:I

    iget v4, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->sentMsgsCnt:I

    if-ne v3, v4, :cond_4

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->sentBytesCnt:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->sentBytesCnt:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget v3, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->rcvdMsgsCnt:I

    iget v4, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->rcvdMsgsCnt:I

    if-ne v3, v4, :cond_4

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->rcvdBytesCnt:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->rcvdBytesCnt:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->upTime:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->upTime:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto/16 :goto_0
.end method

.method public getAverageActiveJobs()F
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgActiveJobs:F

    return v0
.end method

.method public getAverageCancelledJobs()F
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgCancelledJobs:F

    return v0
.end method

.method public getAverageCpuLoad()D
    .locals 2

    .prologue
    .line 686
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgLoad:D

    return-wide v0
.end method

.method public getAverageJobExecuteTime()D
    .locals 2

    .prologue
    .line 553
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgJobExecTime:D

    return-wide v0
.end method

.method public getAverageJobWaitTime()D
    .locals 2

    .prologue
    .line 499
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgJobWaitTime:D

    return-wide v0
.end method

.method public getAverageRejectedJobs()F
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgRejectedJobs:F

    return v0
.end method

.method public getAverageWaitingJobs()F
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgWaitingJobs:F

    return v0
.end method

.method public getBusyTimePercentage()F
    .locals 2

    .prologue
    .line 629
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getIdleTimePercentage()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getCurrentActiveJobs()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curActiveJobs:I

    return v0
.end method

.method public getCurrentCancelledJobs()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curCancelledJobs:I

    return v0
.end method

.method public getCurrentCpuLoad()D
    .locals 2

    .prologue
    .line 676
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->load:D

    return-wide v0
.end method

.method public getCurrentDaemonThreadCount()I
    .locals 1

    .prologue
    .line 912
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->daemonThreadCnt:I

    return v0
.end method

.method public getCurrentGcCpuLoad()D
    .locals 2

    .prologue
    .line 695
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->gcLoad:D

    return-wide v0
.end method

.method public getCurrentIdleTime()J
    .locals 2

    .prologue
    .line 610
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curIdleTime:J

    return-wide v0
.end method

.method public getCurrentJobExecuteTime()J
    .locals 2

    .prologue
    .line 535
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curJobExecTime:J

    return-wide v0
.end method

.method public getCurrentJobWaitTime()J
    .locals 2

    .prologue
    .line 481
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curJobWaitTime:J

    return-wide v0
.end method

.method public getCurrentRejectedJobs()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curRejectedJobs:I

    return v0
.end method

.method public getCurrentThreadCount()I
    .locals 1

    .prologue
    .line 877
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->threadCnt:I

    return v0
.end method

.method public getCurrentWaitingJobs()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curWaitingJobs:I

    return v0
.end method

.method public getFileSystemFreeSpace()J
    .locals 2

    .prologue
    .line 921
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->fileSysFreeSpace:J

    return-wide v0
.end method

.method public getFileSystemTotalSpace()J
    .locals 2

    .prologue
    .line 930
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->fileSysTotalSpace:J

    return-wide v0
.end method

.method public getFileSystemUsableSpace()J
    .locals 2

    .prologue
    .line 939
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->fileSysUsableSpace:J

    return-wide v0
.end method

.method public getHeapMemoryCommitted()J
    .locals 2

    .prologue
    .line 740
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapCommitted:J

    return-wide v0
.end method

.method public getHeapMemoryInitialized()J
    .locals 2

    .prologue
    .line 706
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapInit:J

    return-wide v0
.end method

.method public getHeapMemoryMaximum()J
    .locals 2

    .prologue
    .line 763
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapMax:J

    return-wide v0
.end method

.method public getHeapMemoryUsed()J
    .locals 2

    .prologue
    .line 724
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapUsed:J

    return-wide v0
.end method

.method public getIdleTimePercentage()F
    .locals 4

    .prologue
    .line 639
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getTotalIdleTime()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getUpTime()J

    move-result-wide v2

    long-to-float v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public getLastDataVersion()J
    .locals 2

    .prologue
    .line 949
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->lastDataVer:J

    return-wide v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .prologue
    .line 191
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->lastUpdateTime:J

    return-wide v0
.end method

.method public getMaximumActiveJobs()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxActiveJobs:I

    return v0
.end method

.method public getMaximumCancelledJobs()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxCancelledJobs:I

    return v0
.end method

.method public getMaximumJobExecuteTime()J
    .locals 2

    .prologue
    .line 517
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxJobExecTime:J

    return-wide v0
.end method

.method public getMaximumJobWaitTime()J
    .locals 2

    .prologue
    .line 463
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxJobWaitTime:J

    return-wide v0
.end method

.method public getMaximumRejectedJobs()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxRejectedJobs:I

    return v0
.end method

.method public getMaximumThreadCount()I
    .locals 1

    .prologue
    .line 890
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->peakThreadCnt:I

    return v0
.end method

.method public getMaximumWaitingJobs()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxWaitingJobs:I

    return v0
.end method

.method public getNodeStartTime()J
    .locals 2

    .prologue
    .line 867
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nodeStartTime:J

    return-wide v0
.end method

.method public getNonHeapMemoryCommitted()J
    .locals 2

    .prologue
    .line 813
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapCommitted:J

    return-wide v0
.end method

.method public getNonHeapMemoryInitialized()J
    .locals 2

    .prologue
    .line 780
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapInit:J

    return-wide v0
.end method

.method public getNonHeapMemoryMaximum()J
    .locals 2

    .prologue
    .line 836
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapMax:J

    return-wide v0
.end method

.method public getNonHeapMemoryUsed()J
    .locals 2

    .prologue
    .line 797
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapUsed:J

    return-wide v0
.end method

.method public getReceivedBytesCount()J
    .locals 2

    .prologue
    .line 1218
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->rcvdBytesCnt:J

    return-wide v0
.end method

.method public getReceivedMessagesCount()I
    .locals 1

    .prologue
    .line 1200
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->rcvdMsgsCnt:I

    return v0
.end method

.method public getSentBytesCount()J
    .locals 2

    .prologue
    .line 1182
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->sentBytesCnt:J

    return-wide v0
.end method

.method public getSentMessagesCount()I
    .locals 1

    .prologue
    .line 1164
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->sentMsgsCnt:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 856
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->startTime:J

    return-wide v0
.end method

.method public getTotalBusyTime()J
    .locals 4

    .prologue
    .line 587
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getUpTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getTotalIdleTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalCancelledJobs()I
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalCancelledJobs:I

    return v0
.end method

.method public getTotalCpus()I
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->availProcs:I

    return v0
.end method

.method public getTotalExecutedJobs()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalExecutedJobs:I

    return v0
.end method

.method public getTotalExecutedTasks()I
    .locals 1

    .prologue
    .line 571
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalExecTasks:I

    return v0
.end method

.method public getTotalIdleTime()J
    .locals 2

    .prologue
    .line 594
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalIdleTime:J

    return-wide v0
.end method

.method public getTotalRejectedJobs()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalRejectedJobs:I

    return v0
.end method

.method public getTotalStartedThreadCount()J
    .locals 2

    .prologue
    .line 903
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->startedThreadCnt:J

    return-wide v0
.end method

.method public getUpTime()J
    .locals 2

    .prologue
    .line 845
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->upTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1232
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1407
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->lastUpdateTime:J

    .line 1408
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxActiveJobs:I

    .line 1409
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curActiveJobs:I

    .line 1410
    invoke-interface {p1}, Ljava/io/ObjectInput;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgActiveJobs:F

    .line 1411
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxWaitingJobs:I

    .line 1412
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curWaitingJobs:I

    .line 1413
    invoke-interface {p1}, Ljava/io/ObjectInput;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgWaitingJobs:F

    .line 1414
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxRejectedJobs:I

    .line 1415
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curRejectedJobs:I

    .line 1416
    invoke-interface {p1}, Ljava/io/ObjectInput;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgRejectedJobs:F

    .line 1417
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxCancelledJobs:I

    .line 1418
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curCancelledJobs:I

    .line 1419
    invoke-interface {p1}, Ljava/io/ObjectInput;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgCancelledJobs:F

    .line 1420
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalRejectedJobs:I

    .line 1421
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalCancelledJobs:I

    .line 1422
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalExecutedJobs:I

    .line 1423
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxJobWaitTime:J

    .line 1424
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curJobWaitTime:J

    .line 1425
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgJobWaitTime:D

    .line 1426
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxJobExecTime:J

    .line 1427
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curJobExecTime:J

    .line 1428
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgJobExecTime:D

    .line 1429
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalExecTasks:I

    .line 1430
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalIdleTime:J

    .line 1431
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curIdleTime:J

    .line 1432
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->availProcs:I

    .line 1433
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->load:D

    .line 1434
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgLoad:D

    .line 1435
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->gcLoad:D

    .line 1436
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapInit:J

    .line 1437
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapUsed:J

    .line 1438
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapCommitted:J

    .line 1439
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapMax:J

    .line 1440
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapInit:J

    .line 1441
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapUsed:J

    .line 1442
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapCommitted:J

    .line 1443
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapMax:J

    .line 1444
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->upTime:J

    .line 1445
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->startTime:J

    .line 1446
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nodeStartTime:J

    .line 1447
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->threadCnt:I

    .line 1448
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->peakThreadCnt:I

    .line 1449
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->startedThreadCnt:J

    .line 1450
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->daemonThreadCnt:I

    .line 1451
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->fileSysFreeSpace:J

    .line 1452
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->fileSysTotalSpace:J

    .line 1453
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->fileSysUsableSpace:J

    .line 1454
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->lastDataVer:J

    .line 1455
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->sentMsgsCnt:I

    .line 1456
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->sentBytesCnt:J

    .line 1457
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->rcvdMsgsCnt:I

    .line 1458
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->rcvdBytesCnt:J

    .line 1459
    return-void
.end method

.method public setAverageActiveJobs(F)V
    .locals 0
    .param p1, "avgActiveJobs"    # F

    .prologue
    .line 254
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgActiveJobs:F

    .line 255
    return-void
.end method

.method public setAverageCancelledJobs(F)V
    .locals 0
    .param p1, "avgCancelledJobs"    # F

    .prologue
    .line 418
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgCancelledJobs:F

    .line 419
    return-void
.end method

.method public setAverageCpuLoad(D)V
    .locals 1
    .param p1, "avgLoad"    # D

    .prologue
    .line 976
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgLoad:D

    .line 977
    return-void
.end method

.method public setAverageJobExecuteTime(D)V
    .locals 1
    .param p1, "avgJobExecTime"    # D

    .prologue
    .line 562
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgJobExecTime:D

    .line 563
    return-void
.end method

.method public setAverageJobWaitTime(D)V
    .locals 1
    .param p1, "avgJobWaitTime"    # D

    .prologue
    .line 508
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgJobWaitTime:D

    .line 509
    return-void
.end method

.method public setAverageRejectedJobs(F)V
    .locals 0
    .param p1, "avgRejectedJobs"    # F

    .prologue
    .line 350
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgRejectedJobs:F

    .line 351
    return-void
.end method

.method public setAverageWaitingJobs(F)V
    .locals 0
    .param p1, "avgWaitingJobs"    # F

    .prologue
    .line 308
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgWaitingJobs:F

    .line 309
    return-void
.end method

.method public setCurrentActiveJobs(I)V
    .locals 0
    .param p1, "curActiveJobs"    # I

    .prologue
    .line 236
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curActiveJobs:I

    .line 237
    return-void
.end method

.method public setCurrentCancelledJobs(I)V
    .locals 0
    .param p1, "curCancelledJobs"    # I

    .prologue
    .line 400
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curCancelledJobs:I

    .line 401
    return-void
.end method

.method public setCurrentCpuLoad(D)V
    .locals 1
    .param p1, "load"    # D

    .prologue
    .line 967
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->load:D

    .line 968
    return-void
.end method

.method public setCurrentDaemonThreadCount(I)V
    .locals 0
    .param p1, "daemonThreadCnt"    # I

    .prologue
    .line 1120
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->daemonThreadCnt:I

    .line 1121
    return-void
.end method

.method public setCurrentGcCpuLoad(D)V
    .locals 1
    .param p1, "gcLoad"    # D

    .prologue
    .line 985
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->gcLoad:D

    .line 986
    return-void
.end method

.method public setCurrentIdleTime(J)V
    .locals 1
    .param p1, "curIdleTime"    # J

    .prologue
    .line 619
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curIdleTime:J

    .line 620
    return-void
.end method

.method public setCurrentJobExecuteTime(J)V
    .locals 1
    .param p1, "curJobExecTime"    # J

    .prologue
    .line 544
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curJobExecTime:J

    .line 545
    return-void
.end method

.method public setCurrentJobWaitTime(J)V
    .locals 1
    .param p1, "curJobWaitTime"    # J

    .prologue
    .line 490
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curJobWaitTime:J

    .line 491
    return-void
.end method

.method public setCurrentRejectedJobs(I)V
    .locals 0
    .param p1, "curRejectedJobs"    # I

    .prologue
    .line 336
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curRejectedJobs:I

    .line 337
    return-void
.end method

.method public setCurrentThreadCount(I)V
    .locals 0
    .param p1, "threadCnt"    # I

    .prologue
    .line 1093
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->threadCnt:I

    .line 1094
    return-void
.end method

.method public setCurrentWaitingJobs(I)V
    .locals 0
    .param p1, "curWaitingJobs"    # I

    .prologue
    .line 290
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curWaitingJobs:I

    .line 291
    return-void
.end method

.method public setFileSystemFreeSpace(J)V
    .locals 1
    .param p1, "fileSysFreeSpace"    # J

    .prologue
    .line 1129
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->fileSysFreeSpace:J

    .line 1130
    return-void
.end method

.method public setFileSystemTotalSpace(J)V
    .locals 1
    .param p1, "fileSysTotalSpace"    # J

    .prologue
    .line 1138
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->fileSysTotalSpace:J

    .line 1139
    return-void
.end method

.method public setFileSystemUsableSpace(J)V
    .locals 1
    .param p1, "fileSysUsableSpace"    # J

    .prologue
    .line 1148
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->fileSysUsableSpace:J

    .line 1149
    return-void
.end method

.method public setHeapMemoryCommitted(J)V
    .locals 1
    .param p1, "heapCommitted"    # J

    .prologue
    .line 1012
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapCommitted:J

    .line 1013
    return-void
.end method

.method public setHeapMemoryInitialized(J)V
    .locals 1
    .param p1, "heapInit"    # J

    .prologue
    .line 994
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapInit:J

    .line 995
    return-void
.end method

.method public setHeapMemoryMaximum(J)V
    .locals 1
    .param p1, "heapMax"    # J

    .prologue
    .line 1021
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapMax:J

    .line 1022
    return-void
.end method

.method public setHeapMemoryUsed(J)V
    .locals 1
    .param p1, "heapUsed"    # J

    .prologue
    .line 1003
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapUsed:J

    .line 1004
    return-void
.end method

.method public setLastDataVersion(J)V
    .locals 1
    .param p1, "lastDataVer"    # J

    .prologue
    .line 1155
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->lastDataVer:J

    .line 1156
    return-void
.end method

.method public setLastUpdateTime(J)V
    .locals 1
    .param p1, "lastUpdateTime"    # J

    .prologue
    .line 200
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->lastUpdateTime:J

    .line 201
    return-void
.end method

.method public setMaximumActiveJobs(I)V
    .locals 0
    .param p1, "maxActiveJobs"    # I

    .prologue
    .line 218
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxActiveJobs:I

    .line 219
    return-void
.end method

.method public setMaximumCancelledJobs(I)V
    .locals 0
    .param p1, "maxCancelledJobs"    # I

    .prologue
    .line 382
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxCancelledJobs:I

    .line 383
    return-void
.end method

.method public setMaximumJobExecuteTime(J)V
    .locals 1
    .param p1, "maxJobExecTime"    # J

    .prologue
    .line 526
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxJobExecTime:J

    .line 527
    return-void
.end method

.method public setMaximumJobWaitTime(J)V
    .locals 1
    .param p1, "maxJobWaitTime"    # J

    .prologue
    .line 472
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxJobWaitTime:J

    .line 473
    return-void
.end method

.method public setMaximumRejectedJobs(I)V
    .locals 0
    .param p1, "maxRejectedJobs"    # I

    .prologue
    .line 322
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxRejectedJobs:I

    .line 323
    return-void
.end method

.method public setMaximumThreadCount(I)V
    .locals 0
    .param p1, "peakThreadCnt"    # I

    .prologue
    .line 1102
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->peakThreadCnt:I

    .line 1103
    return-void
.end method

.method public setMaximumWaitingJobs(I)V
    .locals 0
    .param p1, "maxWaitingJobs"    # I

    .prologue
    .line 272
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxWaitingJobs:I

    .line 273
    return-void
.end method

.method public setNodeStartTime(J)V
    .locals 1
    .param p1, "nodeStartTime"    # J

    .prologue
    .line 1084
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nodeStartTime:J

    .line 1085
    return-void
.end method

.method public setNonHeapMemoryCommitted(J)V
    .locals 1
    .param p1, "nonHeapCommitted"    # J

    .prologue
    .line 1048
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapCommitted:J

    .line 1049
    return-void
.end method

.method public setNonHeapMemoryInitialized(J)V
    .locals 1
    .param p1, "nonHeapInit"    # J

    .prologue
    .line 1030
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapInit:J

    .line 1031
    return-void
.end method

.method public setNonHeapMemoryMaximum(J)V
    .locals 1
    .param p1, "nonHeapMax"    # J

    .prologue
    .line 1057
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapMax:J

    .line 1058
    return-void
.end method

.method public setNonHeapMemoryUsed(J)V
    .locals 1
    .param p1, "nonHeapUsed"    # J

    .prologue
    .line 1039
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapUsed:J

    .line 1040
    return-void
.end method

.method public setReceivedBytesCount(J)V
    .locals 1
    .param p1, "rcvdBytesCnt"    # J

    .prologue
    .line 1227
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->rcvdBytesCnt:J

    .line 1228
    return-void
.end method

.method public setReceivedMessagesCount(I)V
    .locals 0
    .param p1, "rcvdMsgsCnt"    # I

    .prologue
    .line 1209
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->rcvdMsgsCnt:I

    .line 1210
    return-void
.end method

.method public setSentBytesCount(J)V
    .locals 1
    .param p1, "sentBytesCnt"    # J

    .prologue
    .line 1191
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->sentBytesCnt:J

    .line 1192
    return-void
.end method

.method public setSentMessagesCount(I)V
    .locals 0
    .param p1, "sentMsgsCnt"    # I

    .prologue
    .line 1173
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->sentMsgsCnt:I

    .line 1174
    return-void
.end method

.method public setStartTime(J)V
    .locals 1
    .param p1, "startTime"    # J

    .prologue
    .line 1075
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->startTime:J

    .line 1076
    return-void
.end method

.method public setTotalCancelledJobs(I)V
    .locals 0
    .param p1, "totalCancelledJobs"    # I

    .prologue
    .line 454
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalCancelledJobs:I

    .line 455
    return-void
.end method

.method public setTotalCpus(I)V
    .locals 0
    .param p1, "availProcs"    # I

    .prologue
    .line 958
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->availProcs:I

    .line 959
    return-void
.end method

.method public setTotalExecutedJobs(I)V
    .locals 0
    .param p1, "totalExecutedJobs"    # I

    .prologue
    .line 436
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalExecutedJobs:I

    .line 437
    return-void
.end method

.method public setTotalExecutedTasks(I)V
    .locals 0
    .param p1, "totalExecTasks"    # I

    .prologue
    .line 580
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalExecTasks:I

    .line 581
    return-void
.end method

.method public setTotalIdleTime(J)V
    .locals 1
    .param p1, "totalIdleTime"    # J

    .prologue
    .line 603
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalIdleTime:J

    .line 604
    return-void
.end method

.method public setTotalRejectedJobs(I)V
    .locals 0
    .param p1, "totalRejectedJobs"    # I

    .prologue
    .line 364
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalRejectedJobs:I

    .line 365
    return-void
.end method

.method public setTotalStartedThreadCount(J)V
    .locals 1
    .param p1, "startedThreadCnt"    # J

    .prologue
    .line 1111
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->startedThreadCnt:J

    .line 1112
    return-void
.end method

.method public setUpTime(J)V
    .locals 1
    .param p1, "upTime"    # J

    .prologue
    .line 1066
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->upTime:J

    .line 1067
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridClientNodeMetricsBean [lastUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->lastUpdateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxActiveJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxActiveJobs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", curActiveJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curActiveJobs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgActiveJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgActiveJobs:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxWaitingJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxWaitingJobs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", curWaitingJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curWaitingJobs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgWaitingJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgWaitingJobs:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxRejectedJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxRejectedJobs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", curRejectedJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curRejectedJobs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgRejectedJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgRejectedJobs:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxCancelledJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxCancelledJobs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", curCancelledJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curCancelledJobs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgCancelledJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgCancelledJobs:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalRejectedJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalRejectedJobs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalCancelledJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalCancelledJobs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalExecutedJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalExecutedJobs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxJobWaitTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxJobWaitTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", curJobWaitTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curJobWaitTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgJobWaitTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgJobWaitTime:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxJobExecTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxJobExecTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", curJobExecTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curJobExecTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgJobExecTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgJobExecTime:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalExecTasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalExecTasks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalIdleTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalIdleTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", curIdleTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curIdleTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", availProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->availProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", load="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->load:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgLoad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgLoad:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gcLoad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->gcLoad:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", heapInit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapInit:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", heapUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapUsed:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", heapCommitted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapCommitted:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", heapMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapMax:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nonHeapInit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapInit:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nonHeapUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapUsed:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nonHeapCommitted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapCommitted:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nonHeapMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapMax:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", upTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->upTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->startTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nodeStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nodeStartTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", threadCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->threadCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", peakThreadCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->peakThreadCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startedThreadCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->startedThreadCnt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", daemonThreadCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->daemonThreadCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileSysFreeSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->fileSysFreeSpace:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileSysTotalSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->fileSysTotalSpace:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileSysUsableSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->fileSysUsableSpace:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastDataVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->lastDataVer:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sentMsgsCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->sentMsgsCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sentBytesCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->sentBytesCnt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rcvdMsgsCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->rcvdMsgsCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rcvdBytesCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->rcvdBytesCnt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1351
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->lastUpdateTime:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1352
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxActiveJobs:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1353
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curActiveJobs:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1354
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgActiveJobs:F

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeFloat(F)V

    .line 1355
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxWaitingJobs:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1356
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curWaitingJobs:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1357
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgWaitingJobs:F

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeFloat(F)V

    .line 1358
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxRejectedJobs:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1359
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curRejectedJobs:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1360
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgRejectedJobs:F

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeFloat(F)V

    .line 1361
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxCancelledJobs:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1362
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curCancelledJobs:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1363
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgCancelledJobs:F

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeFloat(F)V

    .line 1364
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalRejectedJobs:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1365
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalCancelledJobs:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1366
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalExecutedJobs:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1367
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxJobWaitTime:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1368
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curJobWaitTime:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1369
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgJobWaitTime:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 1370
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->maxJobExecTime:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1371
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curJobExecTime:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1372
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgJobExecTime:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 1373
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalExecTasks:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1374
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->totalIdleTime:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1375
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->curIdleTime:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1376
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->availProcs:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1377
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->load:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 1378
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->avgLoad:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 1379
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->gcLoad:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 1380
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapInit:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1381
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapUsed:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1382
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapCommitted:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1383
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->heapMax:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1384
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapInit:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1385
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapUsed:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1386
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapCommitted:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1387
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nonHeapMax:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1388
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->upTime:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1389
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->startTime:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1390
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->nodeStartTime:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1391
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->threadCnt:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1392
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->peakThreadCnt:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1393
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->startedThreadCnt:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1394
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->daemonThreadCnt:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1395
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->fileSysFreeSpace:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1396
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->fileSysTotalSpace:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1397
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->fileSysUsableSpace:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1398
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->lastDataVer:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1399
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->sentMsgsCnt:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1400
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->sentBytesCnt:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1401
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->rcvdMsgsCnt:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1402
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->rcvdBytesCnt:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1403
    return-void
.end method
