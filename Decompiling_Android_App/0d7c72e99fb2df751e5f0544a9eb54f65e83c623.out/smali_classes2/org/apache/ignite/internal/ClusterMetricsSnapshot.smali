.class public Lorg/apache/ignite/internal/ClusterMetricsSnapshot;
.super Ljava/lang/Object;
.source "ClusterMetricsSnapshot.java"

# interfaces
.implements Lorg/apache/ignite/cluster/ClusterMetrics;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final METRICS_SIZE:I = 0x140


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

.field private gcLoad:D

.field private heapCommitted:J

.field private heapInit:J

.field private heapMax:J

.field private heapTotal:J

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

.field private nonHeapTotal:J

.field private nonHeapUsed:J

.field private outMesQueueSize:I

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

.field private totalNodes:I

.field private totalRejectedJobs:I

.field private upTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const/4 v2, -0x1

    const-wide/16 v0, -0x1

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->lastUpdateTime:J

    .line 95
    iput v2, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxActiveJobs:I

    .line 98
    iput v2, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curActiveJobs:I

    .line 101
    iput v3, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgActiveJobs:F

    .line 104
    iput v2, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxWaitingJobs:I

    .line 107
    iput v2, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curWaitingJobs:I

    .line 110
    iput v3, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgWaitingJobs:F

    .line 113
    iput v2, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxRejectedJobs:I

    .line 116
    iput v2, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curRejectedJobs:I

    .line 119
    iput v3, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgRejectedJobs:F

    .line 122
    iput v2, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxCancelledJobs:I

    .line 125
    iput v2, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curCancelledJobs:I

    .line 128
    iput v3, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgCancelledJobs:F

    .line 131
    iput v2, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalRejectedJobs:I

    .line 134
    iput v2, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalCancelledJobs:I

    .line 137
    iput v2, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalExecutedJobs:I

    .line 140
    iput-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxJobWaitTime:J

    .line 143
    iput-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curJobWaitTime:J

    .line 146
    iput-wide v4, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgJobWaitTime:D

    .line 149
    iput-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxJobExecTime:J

    .line 152
    iput-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curJobExecTime:J

    .line 155
    iput-wide v4, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgJobExecTime:D

    .line 158
    iput v2, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalExecTasks:I

    .line 161
    iput-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalIdleTime:J

    .line 164
    iput-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curIdleTime:J

    .line 167
    iput v2, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->availProcs:I

    .line 170
    iput-wide v4, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->load:D

    .line 173
    iput-wide v4, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgLoad:D

    .line 176
    iput-wide v4, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->gcLoad:D

    .line 179
    iput-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapInit:J

    .line 182
    iput-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapUsed:J

    .line 185
    iput-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapCommitted:J

    .line 188
    iput-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapMax:J

    .line 191
    iput-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapTotal:J

    .line 194
    iput-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapInit:J

    .line 197
    iput-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapUsed:J

    .line 200
    iput-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapCommitted:J

    .line 203
    iput-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapMax:J

    .line 206
    iput-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapTotal:J

    .line 209
    iput-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->upTime:J

    .line 212
    iput-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->startTime:J

    .line 215
    iput-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nodeStartTime:J

    .line 218
    iput v2, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->threadCnt:I

    .line 221
    iput v2, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->peakThreadCnt:I

    .line 224
    iput-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->startedThreadCnt:J

    .line 227
    iput v2, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->daemonThreadCnt:I

    .line 230
    iput-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->lastDataVer:J

    .line 233
    iput v2, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->sentMsgsCnt:I

    .line 236
    iput-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->sentBytesCnt:J

    .line 239
    iput v2, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->rcvdMsgsCnt:I

    .line 242
    iput-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->rcvdBytesCnt:J

    .line 245
    iput v2, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->outMesQueueSize:I

    .line 248
    iput v2, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalNodes:I

    .line 255
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/cluster/ClusterGroup;)V
    .locals 12
    .param p1, "p"    # Lorg/apache/ignite/cluster/ClusterGroup;

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->lastUpdateTime:J

    .line 95
    const/4 v7, -0x1

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxActiveJobs:I

    .line 98
    const/4 v7, -0x1

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curActiveJobs:I

    .line 101
    const/high16 v7, -0x40800000    # -1.0f

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgActiveJobs:F

    .line 104
    const/4 v7, -0x1

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxWaitingJobs:I

    .line 107
    const/4 v7, -0x1

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curWaitingJobs:I

    .line 110
    const/high16 v7, -0x40800000    # -1.0f

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgWaitingJobs:F

    .line 113
    const/4 v7, -0x1

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxRejectedJobs:I

    .line 116
    const/4 v7, -0x1

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curRejectedJobs:I

    .line 119
    const/high16 v7, -0x40800000    # -1.0f

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgRejectedJobs:F

    .line 122
    const/4 v7, -0x1

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxCancelledJobs:I

    .line 125
    const/4 v7, -0x1

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curCancelledJobs:I

    .line 128
    const/high16 v7, -0x40800000    # -1.0f

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgCancelledJobs:F

    .line 131
    const/4 v7, -0x1

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalRejectedJobs:I

    .line 134
    const/4 v7, -0x1

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalCancelledJobs:I

    .line 137
    const/4 v7, -0x1

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalExecutedJobs:I

    .line 140
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxJobWaitTime:J

    .line 143
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curJobWaitTime:J

    .line 146
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgJobWaitTime:D

    .line 149
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxJobExecTime:J

    .line 152
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curJobExecTime:J

    .line 155
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgJobExecTime:D

    .line 158
    const/4 v7, -0x1

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalExecTasks:I

    .line 161
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalIdleTime:J

    .line 164
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curIdleTime:J

    .line 167
    const/4 v7, -0x1

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->availProcs:I

    .line 170
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->load:D

    .line 173
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgLoad:D

    .line 176
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->gcLoad:D

    .line 179
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapInit:J

    .line 182
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapUsed:J

    .line 185
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapCommitted:J

    .line 188
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapMax:J

    .line 191
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapTotal:J

    .line 194
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapInit:J

    .line 197
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapUsed:J

    .line 200
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapCommitted:J

    .line 203
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapMax:J

    .line 206
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapTotal:J

    .line 209
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->upTime:J

    .line 212
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->startTime:J

    .line 215
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nodeStartTime:J

    .line 218
    const/4 v7, -0x1

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->threadCnt:I

    .line 221
    const/4 v7, -0x1

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->peakThreadCnt:I

    .line 224
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->startedThreadCnt:J

    .line 227
    const/4 v7, -0x1

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->daemonThreadCnt:I

    .line 230
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->lastDataVer:J

    .line 233
    const/4 v7, -0x1

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->sentMsgsCnt:I

    .line 236
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->sentBytesCnt:J

    .line 239
    const/4 v7, -0x1

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->rcvdMsgsCnt:I

    .line 242
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->rcvdBytesCnt:J

    .line 245
    const/4 v7, -0x1

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->outMesQueueSize:I

    .line 248
    const/4 v7, -0x1

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalNodes:I

    .line 263
    sget-boolean v7, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 265
    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterGroup;->nodes()Ljava/util/Collection;

    move-result-object v4

    .line 267
    .local v4, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v6

    .line 269
    .local v6, "size":I
    const-wide v8, 0x7fffffffffffffffL

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curJobWaitTime:J

    .line 270
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->lastUpdateTime:J

    .line 271
    const/4 v7, 0x0

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxActiveJobs:I

    .line 272
    const/4 v7, 0x0

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curActiveJobs:I

    .line 273
    const/4 v7, 0x0

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgActiveJobs:F

    .line 274
    const/4 v7, 0x0

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxWaitingJobs:I

    .line 275
    const/4 v7, 0x0

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curWaitingJobs:I

    .line 276
    const/4 v7, 0x0

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgWaitingJobs:F

    .line 277
    const/4 v7, 0x0

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxRejectedJobs:I

    .line 278
    const/4 v7, 0x0

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curRejectedJobs:I

    .line 279
    const/4 v7, 0x0

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgRejectedJobs:F

    .line 280
    const/4 v7, 0x0

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxCancelledJobs:I

    .line 281
    const/4 v7, 0x0

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curCancelledJobs:I

    .line 282
    const/4 v7, 0x0

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgCancelledJobs:F

    .line 283
    const/4 v7, 0x0

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalRejectedJobs:I

    .line 284
    const/4 v7, 0x0

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalCancelledJobs:I

    .line 285
    const/4 v7, 0x0

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalExecutedJobs:I

    .line 286
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxJobWaitTime:J

    .line 287
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgJobWaitTime:D

    .line 288
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxJobExecTime:J

    .line 289
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curJobExecTime:J

    .line 290
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgJobExecTime:D

    .line 291
    const/4 v7, 0x0

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalExecTasks:I

    .line 292
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalIdleTime:J

    .line 293
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curIdleTime:J

    .line 294
    const/4 v7, 0x0

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->availProcs:I

    .line 295
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->load:D

    .line 296
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgLoad:D

    .line 297
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->gcLoad:D

    .line 298
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapInit:J

    .line 299
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapUsed:J

    .line 300
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapCommitted:J

    .line 301
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapMax:J

    .line 302
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapInit:J

    .line 303
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapUsed:J

    .line 304
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapCommitted:J

    .line 305
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapMax:J

    .line 306
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapTotal:J

    .line 307
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->upTime:J

    .line 308
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->startTime:J

    .line 309
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nodeStartTime:J

    .line 310
    const/4 v7, 0x0

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->threadCnt:I

    .line 311
    const/4 v7, 0x0

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->peakThreadCnt:I

    .line 312
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->startedThreadCnt:J

    .line 313
    const/4 v7, 0x0

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->daemonThreadCnt:I

    .line 314
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->lastDataVer:J

    .line 315
    const/4 v7, 0x0

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->sentMsgsCnt:I

    .line 316
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->sentBytesCnt:J

    .line 317
    const/4 v7, 0x0

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->rcvdMsgsCnt:I

    .line 318
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->rcvdBytesCnt:J

    .line 319
    const/4 v7, 0x0

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->outMesQueueSize:I

    .line 320
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapTotal:J

    .line 321
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v7

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalNodes:I

    .line 323
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/cluster/ClusterNode;

    .line 324
    .local v3, "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v1

    .line 326
    .local v1, "m":Lorg/apache/ignite/cluster/ClusterMetrics;
    iget-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->lastUpdateTime:J

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/cluster/ClusterMetrics;->getLastUpdateTime()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->lastUpdateTime:J

    .line 328
    iget v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curActiveJobs:I

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentActiveJobs()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curActiveJobs:I

    .line 329
    iget v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxActiveJobs:I

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentActiveJobs()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxActiveJobs:I

    .line 330
    iget v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgActiveJobs:F

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentActiveJobs()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgActiveJobs:F

    .line 331
    iget v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalExecutedJobs:I

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalExecutedJobs()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalExecutedJobs:I

    .line 333
    iget v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalExecTasks:I

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalExecutedTasks()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalExecTasks:I

    .line 335
    iget v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalCancelledJobs:I

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalCancelledJobs()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalCancelledJobs:I

    .line 336
    iget v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curCancelledJobs:I

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentCancelledJobs()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curCancelledJobs:I

    .line 337
    iget v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxCancelledJobs:I

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentCancelledJobs()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxCancelledJobs:I

    .line 338
    iget v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgCancelledJobs:F

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentCancelledJobs()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgCancelledJobs:F

    .line 340
    iget v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalRejectedJobs:I

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalRejectedJobs()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalRejectedJobs:I

    .line 341
    iget v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curRejectedJobs:I

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentRejectedJobs()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curRejectedJobs:I

    .line 342
    iget v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxRejectedJobs:I

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentRejectedJobs()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxRejectedJobs:I

    .line 343
    iget v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgRejectedJobs:F

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentRejectedJobs()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgRejectedJobs:F

    .line 345
    iget v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curWaitingJobs:I

    int-to-long v8, v7

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentJobWaitTime()J

    move-result-wide v10

    add-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curWaitingJobs:I

    .line 346
    iget v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxWaitingJobs:I

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentWaitingJobs()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxWaitingJobs:I

    .line 347
    iget v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgWaitingJobs:F

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentWaitingJobs()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgWaitingJobs:F

    .line 349
    iget-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxJobExecTime:J

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getMaximumJobExecuteTime()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxJobExecTime:J

    .line 350
    iget-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgJobExecTime:D

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getAverageJobExecuteTime()D

    move-result-wide v10

    add-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgJobExecTime:D

    .line 351
    iget-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curJobExecTime:J

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentJobExecuteTime()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curJobExecTime:J

    .line 353
    iget-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curJobWaitTime:J

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentJobWaitTime()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curJobWaitTime:J

    .line 354
    iget-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxJobWaitTime:J

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentJobWaitTime()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxJobWaitTime:J

    .line 355
    iget-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgJobWaitTime:D

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentJobWaitTime()J

    move-result-wide v10

    long-to-double v10, v10

    add-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgJobWaitTime:D

    .line 357
    iget v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->daemonThreadCnt:I

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentDaemonThreadCount()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->daemonThreadCnt:I

    .line 359
    iget v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->peakThreadCnt:I

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentThreadCount()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->peakThreadCnt:I

    .line 360
    iget v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->threadCnt:I

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentThreadCount()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->threadCnt:I

    .line 361
    iget-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->startedThreadCnt:J

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalStartedThreadCount()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->startedThreadCnt:J

    .line 363
    iget-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curIdleTime:J

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentIdleTime()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curIdleTime:J

    .line 364
    iget-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalIdleTime:J

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalIdleTime()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalIdleTime:J

    .line 366
    iget-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapCommitted:J

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getHeapMemoryCommitted()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapCommitted:J

    .line 368
    iget-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapUsed:J

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getHeapMemoryUsed()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapUsed:J

    .line 370
    iget-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapMax:J

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getHeapMemoryMaximum()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapMax:J

    .line 372
    iget-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapTotal:J

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getHeapMemoryTotal()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapTotal:J

    .line 374
    iget-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapInit:J

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getHeapMemoryInitialized()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapInit:J

    .line 376
    iget-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapCommitted:J

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getNonHeapMemoryCommitted()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapCommitted:J

    .line 378
    iget-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapUsed:J

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getNonHeapMemoryUsed()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapUsed:J

    .line 380
    iget-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapMax:J

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getNonHeapMemoryMaximum()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapMax:J

    .line 382
    iget-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapTotal:J

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getNonHeapMemoryTotal()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapTotal:J

    .line 384
    iget-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapInit:J

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getNonHeapMemoryInitialized()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapInit:J

    .line 386
    iget-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->upTime:J

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getUpTime()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->upTime:J

    .line 388
    iget-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->lastDataVer:J

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getLastDataVersion()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->lastDataVer:J

    .line 390
    iget v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->sentMsgsCnt:I

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getSentMessagesCount()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->sentMsgsCnt:I

    .line 391
    iget-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->sentBytesCnt:J

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getSentBytesCount()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->sentBytesCnt:J

    .line 392
    iget v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->rcvdMsgsCnt:I

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getReceivedMessagesCount()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->rcvdMsgsCnt:I

    .line 393
    iget-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->rcvdBytesCnt:J

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getReceivedBytesCount()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->rcvdBytesCnt:J

    .line 394
    iget v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->outMesQueueSize:I

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getOutboundMessagesQueueSize()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->outMesQueueSize:I

    .line 396
    iget-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgLoad:D

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentCpuLoad()D

    move-result-wide v10

    add-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgLoad:D

    goto/16 :goto_0

    .line 399
    .end local v1    # "m":Lorg/apache/ignite/cluster/ClusterMetrics;
    .end local v3    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_1
    iget-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curJobExecTime:J

    int-to-long v10, v6

    div-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curJobExecTime:J

    .line 401
    iget v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgActiveJobs:F

    int-to-float v8, v6

    div-float/2addr v7, v8

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgActiveJobs:F

    .line 402
    iget v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgCancelledJobs:F

    int-to-float v8, v6

    div-float/2addr v7, v8

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgCancelledJobs:F

    .line 403
    iget v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgRejectedJobs:F

    int-to-float v8, v6

    div-float/2addr v7, v8

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgRejectedJobs:F

    .line 404
    iget v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgWaitingJobs:F

    int-to-float v8, v6

    div-float/2addr v7, v8

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgWaitingJobs:F

    .line 405
    iget-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgJobExecTime:D

    int-to-double v10, v6

    div-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgJobExecTime:D

    .line 406
    iget-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgJobWaitTime:D

    int-to-double v10, v6

    div-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgJobWaitTime:D

    .line 407
    iget-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgLoad:D

    int-to-double v10, v6

    div-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgLoad:D

    .line 409
    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 410
    invoke-static {v4}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->oldest(Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v5

    .line 412
    .local v5, "oldestNodeMetrics":Lorg/apache/ignite/cluster/ClusterMetrics;
    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterMetrics;->getNodeStartTime()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nodeStartTime:J

    .line 413
    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterMetrics;->getStartTime()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->startTime:J

    .line 416
    .end local v5    # "oldestNodeMetrics":Lorg/apache/ignite/cluster/ClusterMetrics;
    :cond_2
    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->neighborhood(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v2

    .line 418
    .local v2, "neighborhood":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    invoke-static {v2}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->gcCpus(Ljava/util/Map;)I

    move-result v7

    int-to-double v8, v7

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->gcLoad:D

    .line 419
    invoke-static {v2}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->cpus(Ljava/util/Map;)I

    move-result v7

    int-to-double v8, v7

    iput-wide v8, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->load:D

    .line 420
    invoke-static {v2}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->cpuCnt(Ljava/util/Map;)I

    move-result v7

    iput v7, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->availProcs:I

    .line 421
    return-void
.end method

.method private static cpuCnt(Ljava/util/Map;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .line 1177
    .local p0, "neighborhood":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    const/4 v0, 0x0

    .line 1179
    .local v0, "cpus":I
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 1180
    .local v3, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    .line 1183
    .local v1, "first":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v1, :cond_0

    .line 1184
    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalCpus()I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 1187
    .end local v1    # "first":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v3    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_1
    return v0
.end method

.method private static cpus(Ljava/util/Map;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .line 1195
    .local p0, "neighborhood":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    const/4 v0, 0x0

    .line 1197
    .local v0, "cpus":I
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 1198
    .local v3, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    .line 1201
    .local v1, "first":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v1, :cond_0

    .line 1202
    int-to-double v4, v0

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentCpuLoad()D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-int v0, v4

    goto :goto_0

    .line 1205
    .end local v1    # "first":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v3    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_1
    return v0
.end method

.method public static deserialize([BI)Lorg/apache/ignite/cluster/ClusterMetrics;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "off"    # I

    .prologue
    .line 1324
    move v1, p1

    .line 1326
    .local v1, "start":I
    new-instance v0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;

    invoke-direct {v0}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;-><init>()V

    .line 1328
    .local v0, "metrics":Lorg/apache/ignite/internal/ClusterMetricsSnapshot;
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setLastUpdateTime(J)V

    .line 1330
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToInt([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setMaximumActiveJobs(I)V

    .line 1332
    add-int/lit8 p1, p1, 0x4

    .line 1334
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToInt([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setCurrentActiveJobs(I)V

    .line 1336
    add-int/lit8 p1, p1, 0x4

    .line 1338
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToFloat([BI)F

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setAverageActiveJobs(F)V

    .line 1340
    add-int/lit8 p1, p1, 0x4

    .line 1342
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToInt([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setMaximumWaitingJobs(I)V

    .line 1344
    add-int/lit8 p1, p1, 0x4

    .line 1346
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToInt([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setCurrentWaitingJobs(I)V

    .line 1348
    add-int/lit8 p1, p1, 0x4

    .line 1350
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToFloat([BI)F

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setAverageWaitingJobs(F)V

    .line 1352
    add-int/lit8 p1, p1, 0x4

    .line 1354
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToInt([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setMaximumRejectedJobs(I)V

    .line 1356
    add-int/lit8 p1, p1, 0x4

    .line 1358
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToInt([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setCurrentRejectedJobs(I)V

    .line 1360
    add-int/lit8 p1, p1, 0x4

    .line 1362
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToFloat([BI)F

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setAverageRejectedJobs(F)V

    .line 1364
    add-int/lit8 p1, p1, 0x4

    .line 1366
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToInt([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setMaximumCancelledJobs(I)V

    .line 1368
    add-int/lit8 p1, p1, 0x4

    .line 1370
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToInt([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setCurrentCancelledJobs(I)V

    .line 1372
    add-int/lit8 p1, p1, 0x4

    .line 1374
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToFloat([BI)F

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setAverageCancelledJobs(F)V

    .line 1376
    add-int/lit8 p1, p1, 0x4

    .line 1378
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToInt([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setTotalRejectedJobs(I)V

    .line 1380
    add-int/lit8 p1, p1, 0x4

    .line 1382
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToInt([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setTotalCancelledJobs(I)V

    .line 1384
    add-int/lit8 p1, p1, 0x4

    .line 1386
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToInt([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setTotalExecutedJobs(I)V

    .line 1388
    add-int/lit8 p1, p1, 0x4

    .line 1390
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setMaximumJobWaitTime(J)V

    .line 1392
    add-int/lit8 p1, p1, 0x8

    .line 1394
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setCurrentJobWaitTime(J)V

    .line 1396
    add-int/lit8 p1, p1, 0x8

    .line 1398
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToDouble([BI)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setAverageJobWaitTime(D)V

    .line 1400
    add-int/lit8 p1, p1, 0x8

    .line 1402
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setMaximumJobExecuteTime(J)V

    .line 1404
    add-int/lit8 p1, p1, 0x8

    .line 1406
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setCurrentJobExecuteTime(J)V

    .line 1408
    add-int/lit8 p1, p1, 0x8

    .line 1410
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToDouble([BI)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setAverageJobExecuteTime(D)V

    .line 1412
    add-int/lit8 p1, p1, 0x8

    .line 1414
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToInt([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setTotalExecutedTasks(I)V

    .line 1416
    add-int/lit8 p1, p1, 0x4

    .line 1418
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setCurrentIdleTime(J)V

    .line 1420
    add-int/lit8 p1, p1, 0x8

    .line 1422
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setTotalIdleTime(J)V

    .line 1424
    add-int/lit8 p1, p1, 0x8

    .line 1426
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToInt([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setAvailableProcessors(I)V

    .line 1428
    add-int/lit8 p1, p1, 0x4

    .line 1430
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToDouble([BI)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setCurrentCpuLoad(D)V

    .line 1432
    add-int/lit8 p1, p1, 0x8

    .line 1434
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToDouble([BI)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setAverageCpuLoad(D)V

    .line 1436
    add-int/lit8 p1, p1, 0x8

    .line 1438
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToDouble([BI)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setCurrentGcCpuLoad(D)V

    .line 1440
    add-int/lit8 p1, p1, 0x8

    .line 1442
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setHeapMemoryInitialized(J)V

    .line 1444
    add-int/lit8 p1, p1, 0x8

    .line 1446
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setHeapMemoryUsed(J)V

    .line 1448
    add-int/lit8 p1, p1, 0x8

    .line 1450
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setHeapMemoryCommitted(J)V

    .line 1452
    add-int/lit8 p1, p1, 0x8

    .line 1454
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setHeapMemoryMaximum(J)V

    .line 1456
    add-int/lit8 p1, p1, 0x8

    .line 1458
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setHeapMemoryTotal(J)V

    .line 1460
    add-int/lit8 p1, p1, 0x8

    .line 1462
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setNonHeapMemoryInitialized(J)V

    .line 1464
    add-int/lit8 p1, p1, 0x8

    .line 1466
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setNonHeapMemoryUsed(J)V

    .line 1468
    add-int/lit8 p1, p1, 0x8

    .line 1470
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setNonHeapMemoryCommitted(J)V

    .line 1472
    add-int/lit8 p1, p1, 0x8

    .line 1474
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setNonHeapMemoryMaximum(J)V

    .line 1476
    add-int/lit8 p1, p1, 0x8

    .line 1478
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setNonHeapMemoryTotal(J)V

    .line 1480
    add-int/lit8 p1, p1, 0x8

    .line 1482
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setStartTime(J)V

    .line 1484
    add-int/lit8 p1, p1, 0x8

    .line 1486
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setNodeStartTime(J)V

    .line 1488
    add-int/lit8 p1, p1, 0x8

    .line 1490
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setUpTime(J)V

    .line 1492
    add-int/lit8 p1, p1, 0x8

    .line 1494
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToInt([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setCurrentThreadCount(I)V

    .line 1496
    add-int/lit8 p1, p1, 0x4

    .line 1498
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToInt([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setMaximumThreadCount(I)V

    .line 1500
    add-int/lit8 p1, p1, 0x4

    .line 1502
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setTotalStartedThreadCount(J)V

    .line 1504
    add-int/lit8 p1, p1, 0x8

    .line 1506
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToInt([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setCurrentDaemonThreadCount(I)V

    .line 1508
    add-int/lit8 p1, p1, 0x4

    .line 1510
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setLastDataVersion(J)V

    .line 1512
    add-int/lit8 p1, p1, 0x8

    .line 1514
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToInt([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setSentMessagesCount(I)V

    .line 1516
    add-int/lit8 p1, p1, 0x4

    .line 1518
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setSentBytesCount(J)V

    .line 1520
    add-int/lit8 p1, p1, 0x8

    .line 1522
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToInt([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setReceivedMessagesCount(I)V

    .line 1524
    add-int/lit8 p1, p1, 0x4

    .line 1526
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setReceivedBytesCount(J)V

    .line 1528
    add-int/lit8 p1, p1, 0x8

    .line 1530
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToInt([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setOutboundMessagesQueueSize(I)V

    .line 1532
    add-int/lit8 p1, p1, 0x4

    .line 1534
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToInt([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setTotalNodes(I)V

    .line 1536
    add-int/lit8 p1, p1, 0x4

    .line 1538
    sget-boolean v2, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    sub-int v2, p1, v1

    const/16 v3, 0x140

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid metrics size [expected=320, actual="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-int v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1541
    :cond_0
    return-object v0
.end method

.method private static gcCpus(Ljava/util/Map;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .line 1213
    .local p0, "neighborhood":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    const/4 v0, 0x0

    .line 1215
    .local v0, "cpus":I
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 1216
    .local v3, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    .line 1219
    .local v1, "first":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v1, :cond_0

    .line 1220
    int-to-double v4, v0

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentGcCpuLoad()D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-int v0, v4

    goto :goto_0

    .line 1223
    .end local v1    # "first":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v3    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_1
    return v0
.end method

.method private static oldest(Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/cluster/ClusterNode;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1233
    .local p0, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    const-wide v2, 0x7fffffffffffffffL

    .line 1235
    .local v2, "min":J
    const/4 v4, 0x0

    .line 1237
    .local v4, "oldest":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    .line 1238
    .local v1, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-gez v5, :cond_0

    .line 1239
    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v2

    .line 1240
    move-object v4, v1

    goto :goto_0

    .line 1243
    .end local v1    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_1
    return-object v4
.end method

.method public static serialize([BILorg/apache/ignite/cluster/ClusterMetrics;)I
    .locals 4
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .param p2, "metrics"    # Lorg/apache/ignite/cluster/ClusterMetrics;

    .prologue
    .line 1255
    move v0, p1

    .line 1257
    .local v0, "start":I
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getMaximumActiveJobs()I

    move-result v1

    invoke-static {v1, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    move-result p1

    .line 1258
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentActiveJobs()I

    move-result v1

    invoke-static {v1, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    move-result p1

    .line 1259
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getAverageActiveJobs()F

    move-result v1

    invoke-static {v1, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->floatToBytes(F[BI)I

    move-result p1

    .line 1260
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getMaximumWaitingJobs()I

    move-result v1

    invoke-static {v1, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    move-result p1

    .line 1261
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentWaitingJobs()I

    move-result v1

    invoke-static {v1, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    move-result p1

    .line 1262
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getAverageWaitingJobs()F

    move-result v1

    invoke-static {v1, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->floatToBytes(F[BI)I

    move-result p1

    .line 1263
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getMaximumRejectedJobs()I

    move-result v1

    invoke-static {v1, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    move-result p1

    .line 1264
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentRejectedJobs()I

    move-result v1

    invoke-static {v1, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    move-result p1

    .line 1265
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getAverageRejectedJobs()F

    move-result v1

    invoke-static {v1, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->floatToBytes(F[BI)I

    move-result p1

    .line 1266
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getMaximumCancelledJobs()I

    move-result v1

    invoke-static {v1, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    move-result p1

    .line 1267
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentCancelledJobs()I

    move-result v1

    invoke-static {v1, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    move-result p1

    .line 1268
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getAverageCancelledJobs()F

    move-result v1

    invoke-static {v1, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->floatToBytes(F[BI)I

    move-result p1

    .line 1269
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalRejectedJobs()I

    move-result v1

    invoke-static {v1, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    move-result p1

    .line 1270
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalCancelledJobs()I

    move-result v1

    invoke-static {v1, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    move-result p1

    .line 1271
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalExecutedJobs()I

    move-result v1

    invoke-static {v1, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    move-result p1

    .line 1272
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getMaximumJobWaitTime()J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    move-result p1

    .line 1273
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentJobWaitTime()J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    move-result p1

    .line 1274
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getAverageJobWaitTime()D

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->doubleToBytes(D[BI)I

    move-result p1

    .line 1275
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getMaximumJobExecuteTime()J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    move-result p1

    .line 1276
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentJobExecuteTime()J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    move-result p1

    .line 1277
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getAverageJobExecuteTime()D

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->doubleToBytes(D[BI)I

    move-result p1

    .line 1278
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalExecutedTasks()I

    move-result v1

    invoke-static {v1, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    move-result p1

    .line 1279
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentIdleTime()J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    move-result p1

    .line 1280
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalIdleTime()J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    move-result p1

    .line 1281
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalCpus()I

    move-result v1

    invoke-static {v1, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    move-result p1

    .line 1282
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentCpuLoad()D

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->doubleToBytes(D[BI)I

    move-result p1

    .line 1283
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getAverageCpuLoad()D

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->doubleToBytes(D[BI)I

    move-result p1

    .line 1284
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentGcCpuLoad()D

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->doubleToBytes(D[BI)I

    move-result p1

    .line 1285
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getHeapMemoryInitialized()J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    move-result p1

    .line 1286
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getHeapMemoryUsed()J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    move-result p1

    .line 1287
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getHeapMemoryCommitted()J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    move-result p1

    .line 1288
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getHeapMemoryMaximum()J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    move-result p1

    .line 1289
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getHeapMemoryTotal()J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    move-result p1

    .line 1290
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getNonHeapMemoryInitialized()J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    move-result p1

    .line 1291
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getNonHeapMemoryUsed()J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    move-result p1

    .line 1292
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getNonHeapMemoryCommitted()J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    move-result p1

    .line 1293
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getNonHeapMemoryMaximum()J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    move-result p1

    .line 1294
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getNonHeapMemoryTotal()J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    move-result p1

    .line 1295
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getStartTime()J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    move-result p1

    .line 1296
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getNodeStartTime()J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    move-result p1

    .line 1297
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getUpTime()J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    move-result p1

    .line 1298
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentThreadCount()I

    move-result v1

    invoke-static {v1, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    move-result p1

    .line 1299
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getMaximumThreadCount()I

    move-result v1

    invoke-static {v1, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    move-result p1

    .line 1300
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalStartedThreadCount()J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    move-result p1

    .line 1301
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentDaemonThreadCount()I

    move-result v1

    invoke-static {v1, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    move-result p1

    .line 1302
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getLastDataVersion()J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    move-result p1

    .line 1303
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getSentMessagesCount()I

    move-result v1

    invoke-static {v1, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    move-result p1

    .line 1304
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getSentBytesCount()J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    move-result p1

    .line 1305
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getReceivedMessagesCount()I

    move-result v1

    invoke-static {v1, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    move-result p1

    .line 1306
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getReceivedBytesCount()J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    move-result p1

    .line 1307
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getOutboundMessagesQueueSize()I

    move-result v1

    invoke-static {v1, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    move-result p1

    .line 1308
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalNodes()I

    move-result v1

    invoke-static {v1, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    move-result p1

    .line 1310
    sget-boolean v1, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    sub-int v1, p1, v0

    const/16 v2, 0x140

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid metrics size [expected=320, actual="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1313
    :cond_0
    return p1
.end method


# virtual methods
.method public getAverageActiveJobs()F
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgActiveJobs:F

    return v0
.end method

.method public getAverageCancelledJobs()F
    .locals 1

    .prologue
    .line 622
    iget v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgCancelledJobs:F

    return v0
.end method

.method public getAverageCpuLoad()D
    .locals 2

    .prologue
    .line 815
    iget-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgLoad:D

    return-wide v0
.end method

.method public getAverageJobExecuteTime()D
    .locals 2

    .prologue
    .line 734
    iget-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgJobExecTime:D

    return-wide v0
.end method

.method public getAverageJobWaitTime()D
    .locals 2

    .prologue
    .line 692
    iget-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgJobWaitTime:D

    return-wide v0
.end method

.method public getAverageRejectedJobs()F
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgRejectedJobs:F

    return v0
.end method

.method public getAverageWaitingJobs()F
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgWaitingJobs:F

    return v0
.end method

.method public getBusyTimePercentage()F
    .locals 2

    .prologue
    .line 795
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->getIdleTimePercentage()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getCurrentActiveJobs()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curActiveJobs:I

    return v0
.end method

.method public getCurrentCancelledJobs()I
    .locals 1

    .prologue
    .line 608
    iget v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curCancelledJobs:I

    return v0
.end method

.method public getCurrentCpuLoad()D
    .locals 2

    .prologue
    .line 810
    iget-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->load:D

    return-wide v0
.end method

.method public getCurrentDaemonThreadCount()I
    .locals 1

    .prologue
    .line 900
    iget v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->daemonThreadCnt:I

    return v0
.end method

.method public getCurrentGcCpuLoad()D
    .locals 2

    .prologue
    .line 820
    iget-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->gcLoad:D

    return-wide v0
.end method

.method public getCurrentIdleTime()J
    .locals 2

    .prologue
    .line 781
    iget-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curIdleTime:J

    return-wide v0
.end method

.method public getCurrentJobExecuteTime()J
    .locals 2

    .prologue
    .line 720
    iget-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curJobExecTime:J

    return-wide v0
.end method

.method public getCurrentJobWaitTime()J
    .locals 2

    .prologue
    .line 678
    iget-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curJobWaitTime:J

    return-wide v0
.end method

.method public getCurrentRejectedJobs()I
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curRejectedJobs:I

    return v0
.end method

.method public getCurrentThreadCount()I
    .locals 1

    .prologue
    .line 885
    iget v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->threadCnt:I

    return v0
.end method

.method public getCurrentWaitingJobs()I
    .locals 1

    .prologue
    .line 518
    iget v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curWaitingJobs:I

    return v0
.end method

.method public getHeapMemoryCommitted()J
    .locals 2

    .prologue
    .line 835
    iget-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapCommitted:J

    return-wide v0
.end method

.method public getHeapMemoryInitialized()J
    .locals 2

    .prologue
    .line 825
    iget-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapInit:J

    return-wide v0
.end method

.method public getHeapMemoryMaximum()J
    .locals 2

    .prologue
    .line 840
    iget-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapMax:J

    return-wide v0
.end method

.method public getHeapMemoryTotal()J
    .locals 2

    .prologue
    .line 425
    iget-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapTotal:J

    return-wide v0
.end method

.method public getHeapMemoryUsed()J
    .locals 2

    .prologue
    .line 830
    iget-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapUsed:J

    return-wide v0
.end method

.method public getIdleTimePercentage()F
    .locals 4

    .prologue
    .line 800
    invoke-virtual {p0}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->getTotalIdleTime()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->getUpTime()J

    move-result-wide v2

    long-to-float v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public getLastDataVersion()J
    .locals 2

    .prologue
    .line 905
    iget-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->lastDataVer:J

    return-wide v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .prologue
    .line 448
    iget-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->lastUpdateTime:J

    return-wide v0
.end method

.method public getMaximumActiveJobs()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxActiveJobs:I

    return v0
.end method

.method public getMaximumCancelledJobs()I
    .locals 1

    .prologue
    .line 594
    iget v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxCancelledJobs:I

    return v0
.end method

.method public getMaximumJobExecuteTime()J
    .locals 2

    .prologue
    .line 706
    iget-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxJobExecTime:J

    return-wide v0
.end method

.method public getMaximumJobWaitTime()J
    .locals 2

    .prologue
    .line 664
    iget-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxJobWaitTime:J

    return-wide v0
.end method

.method public getMaximumRejectedJobs()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxRejectedJobs:I

    return v0
.end method

.method public getMaximumThreadCount()I
    .locals 1

    .prologue
    .line 890
    iget v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->peakThreadCnt:I

    return v0
.end method

.method public getMaximumWaitingJobs()I
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxWaitingJobs:I

    return v0
.end method

.method public getNodeStartTime()J
    .locals 2

    .prologue
    .line 880
    iget-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nodeStartTime:J

    return-wide v0
.end method

.method public getNonHeapMemoryCommitted()J
    .locals 2

    .prologue
    .line 855
    iget-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapCommitted:J

    return-wide v0
.end method

.method public getNonHeapMemoryInitialized()J
    .locals 2

    .prologue
    .line 845
    iget-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapInit:J

    return-wide v0
.end method

.method public getNonHeapMemoryMaximum()J
    .locals 2

    .prologue
    .line 860
    iget-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapMax:J

    return-wide v0
.end method

.method public getNonHeapMemoryTotal()J
    .locals 2

    .prologue
    .line 865
    iget-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapTotal:J

    return-wide v0
.end method

.method public getNonHeapMemoryUsed()J
    .locals 2

    .prologue
    .line 850
    iget-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapUsed:J

    return-wide v0
.end method

.method public getOutboundMessagesQueueSize()I
    .locals 1

    .prologue
    .line 930
    iget v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->outMesQueueSize:I

    return v0
.end method

.method public getReceivedBytesCount()J
    .locals 2

    .prologue
    .line 925
    iget-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->rcvdBytesCnt:J

    return-wide v0
.end method

.method public getReceivedMessagesCount()I
    .locals 1

    .prologue
    .line 920
    iget v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->rcvdMsgsCnt:I

    return v0
.end method

.method public getSentBytesCount()J
    .locals 2

    .prologue
    .line 915
    iget-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->sentBytesCnt:J

    return-wide v0
.end method

.method public getSentMessagesCount()I
    .locals 1

    .prologue
    .line 910
    iget v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->sentMsgsCnt:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 875
    iget-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->startTime:J

    return-wide v0
.end method

.method public getTotalBusyTime()J
    .locals 4

    .prologue
    .line 762
    invoke-virtual {p0}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->getUpTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->getTotalIdleTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalCancelledJobs()I
    .locals 1

    .prologue
    .line 650
    iget v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalCancelledJobs:I

    return v0
.end method

.method public getTotalCpus()I
    .locals 1

    .prologue
    .line 805
    iget v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->availProcs:I

    return v0
.end method

.method public getTotalExecutedJobs()I
    .locals 1

    .prologue
    .line 636
    iget v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalExecutedJobs:I

    return v0
.end method

.method public getTotalExecutedTasks()I
    .locals 1

    .prologue
    .line 748
    iget v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalExecTasks:I

    return v0
.end method

.method public getTotalIdleTime()J
    .locals 2

    .prologue
    .line 767
    iget-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalIdleTime:J

    return-wide v0
.end method

.method public getTotalNodes()I
    .locals 1

    .prologue
    .line 935
    iget v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalNodes:I

    return v0
.end method

.method public getTotalRejectedJobs()I
    .locals 1

    .prologue
    .line 582
    iget v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalRejectedJobs:I

    return v0
.end method

.method public getTotalStartedThreadCount()J
    .locals 2

    .prologue
    .line 895
    iget-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->startedThreadCnt:J

    return-wide v0
.end method

.method public getUpTime()J
    .locals 2

    .prologue
    .line 870
    iget-wide v0, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->upTime:J

    return-wide v0
.end method

.method public setAvailableProcessors(I)V
    .locals 0
    .param p1, "availProcs"    # I

    .prologue
    .line 944
    iput p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->availProcs:I

    .line 945
    return-void
.end method

.method public setAverageActiveJobs(F)V
    .locals 0
    .param p1, "avgActiveJobs"    # F

    .prologue
    .line 499
    iput p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgActiveJobs:F

    .line 500
    return-void
.end method

.method public setAverageCancelledJobs(F)V
    .locals 0
    .param p1, "avgCancelledJobs"    # F

    .prologue
    .line 631
    iput p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgCancelledJobs:F

    .line 632
    return-void
.end method

.method public setAverageCpuLoad(D)V
    .locals 1
    .param p1, "avgLoad"    # D

    .prologue
    .line 962
    iput-wide p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgLoad:D

    .line 963
    return-void
.end method

.method public setAverageJobExecuteTime(D)V
    .locals 1
    .param p1, "avgJobExecTime"    # D

    .prologue
    .line 743
    iput-wide p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgJobExecTime:D

    .line 744
    return-void
.end method

.method public setAverageJobWaitTime(D)V
    .locals 1
    .param p1, "avgJobWaitTime"    # D

    .prologue
    .line 701
    iput-wide p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgJobWaitTime:D

    .line 702
    return-void
.end method

.method public setAverageRejectedJobs(F)V
    .locals 0
    .param p1, "avgRejectedJobs"    # F

    .prologue
    .line 577
    iput p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgRejectedJobs:F

    .line 578
    return-void
.end method

.method public setAverageWaitingJobs(F)V
    .locals 0
    .param p1, "avgWaitingJobs"    # F

    .prologue
    .line 541
    iput p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->avgWaitingJobs:F

    .line 542
    return-void
.end method

.method public setCurrentActiveJobs(I)V
    .locals 0
    .param p1, "curActiveJobs"    # I

    .prologue
    .line 485
    iput p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curActiveJobs:I

    .line 486
    return-void
.end method

.method public setCurrentCancelledJobs(I)V
    .locals 0
    .param p1, "curCancelledJobs"    # I

    .prologue
    .line 617
    iput p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curCancelledJobs:I

    .line 618
    return-void
.end method

.method public setCurrentCpuLoad(D)V
    .locals 1
    .param p1, "load"    # D

    .prologue
    .line 953
    iput-wide p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->load:D

    .line 954
    return-void
.end method

.method public setCurrentDaemonThreadCount(I)V
    .locals 0
    .param p1, "daemonThreadCnt"    # I

    .prologue
    .line 1106
    iput p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->daemonThreadCnt:I

    .line 1107
    return-void
.end method

.method public setCurrentGcCpuLoad(D)V
    .locals 1
    .param p1, "gcLoad"    # D

    .prologue
    .line 971
    iput-wide p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->gcLoad:D

    .line 972
    return-void
.end method

.method public setCurrentIdleTime(J)V
    .locals 1
    .param p1, "curIdleTime"    # J

    .prologue
    .line 790
    iput-wide p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curIdleTime:J

    .line 791
    return-void
.end method

.method public setCurrentJobExecuteTime(J)V
    .locals 1
    .param p1, "curJobExecTime"    # J

    .prologue
    .line 729
    iput-wide p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curJobExecTime:J

    .line 730
    return-void
.end method

.method public setCurrentJobWaitTime(J)V
    .locals 1
    .param p1, "curJobWaitTime"    # J

    .prologue
    .line 687
    iput-wide p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curJobWaitTime:J

    .line 688
    return-void
.end method

.method public setCurrentRejectedJobs(I)V
    .locals 0
    .param p1, "curRejectedJobs"    # I

    .prologue
    .line 565
    iput p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curRejectedJobs:I

    .line 566
    return-void
.end method

.method public setCurrentThreadCount(I)V
    .locals 0
    .param p1, "threadCnt"    # I

    .prologue
    .line 1079
    iput p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->threadCnt:I

    .line 1080
    return-void
.end method

.method public setCurrentWaitingJobs(I)V
    .locals 0
    .param p1, "curWaitingJobs"    # I

    .prologue
    .line 527
    iput p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->curWaitingJobs:I

    .line 528
    return-void
.end method

.method public setHeapMemoryCommitted(J)V
    .locals 1
    .param p1, "heapCommitted"    # J

    .prologue
    .line 998
    iput-wide p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapCommitted:J

    .line 999
    return-void
.end method

.method public setHeapMemoryInitialized(J)V
    .locals 1
    .param p1, "heapInit"    # J

    .prologue
    .line 980
    iput-wide p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapInit:J

    .line 981
    return-void
.end method

.method public setHeapMemoryMaximum(J)V
    .locals 1
    .param p1, "heapMax"    # J

    .prologue
    .line 1007
    iput-wide p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapMax:J

    .line 1008
    return-void
.end method

.method public setHeapMemoryTotal(J)V
    .locals 1
    .param p1, "heapTotal"    # J

    .prologue
    .line 434
    iput-wide p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapTotal:J

    .line 435
    return-void
.end method

.method public setHeapMemoryUsed(J)V
    .locals 1
    .param p1, "heapUsed"    # J

    .prologue
    .line 989
    iput-wide p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->heapUsed:J

    .line 990
    return-void
.end method

.method public setLastDataVersion(J)V
    .locals 1
    .param p1, "lastDataVer"    # J

    .prologue
    .line 1115
    iput-wide p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->lastDataVer:J

    .line 1116
    return-void
.end method

.method public setLastUpdateTime(J)V
    .locals 1
    .param p1, "lastUpdateTime"    # J

    .prologue
    .line 457
    iput-wide p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->lastUpdateTime:J

    .line 458
    return-void
.end method

.method public setMaximumActiveJobs(I)V
    .locals 0
    .param p1, "maxActiveJobs"    # I

    .prologue
    .line 471
    iput p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxActiveJobs:I

    .line 472
    return-void
.end method

.method public setMaximumCancelledJobs(I)V
    .locals 0
    .param p1, "maxCancelledJobs"    # I

    .prologue
    .line 603
    iput p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxCancelledJobs:I

    .line 604
    return-void
.end method

.method public setMaximumJobExecuteTime(J)V
    .locals 1
    .param p1, "maxJobExecTime"    # J

    .prologue
    .line 715
    iput-wide p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxJobExecTime:J

    .line 716
    return-void
.end method

.method public setMaximumJobWaitTime(J)V
    .locals 1
    .param p1, "maxJobWaitTime"    # J

    .prologue
    .line 673
    iput-wide p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxJobWaitTime:J

    .line 674
    return-void
.end method

.method public setMaximumRejectedJobs(I)V
    .locals 0
    .param p1, "maxRejectedJobs"    # I

    .prologue
    .line 553
    iput p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxRejectedJobs:I

    .line 554
    return-void
.end method

.method public setMaximumThreadCount(I)V
    .locals 0
    .param p1, "peakThreadCnt"    # I

    .prologue
    .line 1088
    iput p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->peakThreadCnt:I

    .line 1089
    return-void
.end method

.method public setMaximumWaitingJobs(I)V
    .locals 0
    .param p1, "maxWaitingJobs"    # I

    .prologue
    .line 513
    iput p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->maxWaitingJobs:I

    .line 514
    return-void
.end method

.method public setNodeStartTime(J)V
    .locals 1
    .param p1, "nodeStartTime"    # J

    .prologue
    .line 1070
    iput-wide p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nodeStartTime:J

    .line 1071
    return-void
.end method

.method public setNonHeapMemoryCommitted(J)V
    .locals 1
    .param p1, "nonHeapCommitted"    # J

    .prologue
    .line 1034
    iput-wide p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapCommitted:J

    .line 1035
    return-void
.end method

.method public setNonHeapMemoryInitialized(J)V
    .locals 1
    .param p1, "nonHeapInit"    # J

    .prologue
    .line 1016
    iput-wide p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapInit:J

    .line 1017
    return-void
.end method

.method public setNonHeapMemoryMaximum(J)V
    .locals 1
    .param p1, "nonHeapMax"    # J

    .prologue
    .line 1043
    iput-wide p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapMax:J

    .line 1044
    return-void
.end method

.method public setNonHeapMemoryTotal(J)V
    .locals 1
    .param p1, "nonHeapTotal"    # J

    .prologue
    .line 443
    iput-wide p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapTotal:J

    .line 444
    return-void
.end method

.method public setNonHeapMemoryUsed(J)V
    .locals 1
    .param p1, "nonHeapUsed"    # J

    .prologue
    .line 1025
    iput-wide p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->nonHeapUsed:J

    .line 1026
    return-void
.end method

.method public setOutboundMessagesQueueSize(I)V
    .locals 0
    .param p1, "outMesQueueSize"    # I

    .prologue
    .line 1160
    iput p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->outMesQueueSize:I

    .line 1161
    return-void
.end method

.method public setReceivedBytesCount(J)V
    .locals 1
    .param p1, "rcvdBytesCnt"    # J

    .prologue
    .line 1151
    iput-wide p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->rcvdBytesCnt:J

    .line 1152
    return-void
.end method

.method public setReceivedMessagesCount(I)V
    .locals 0
    .param p1, "rcvdMsgsCnt"    # I

    .prologue
    .line 1142
    iput p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->rcvdMsgsCnt:I

    .line 1143
    return-void
.end method

.method public setSentBytesCount(J)V
    .locals 1
    .param p1, "sentBytesCnt"    # J

    .prologue
    .line 1133
    iput-wide p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->sentBytesCnt:J

    .line 1134
    return-void
.end method

.method public setSentMessagesCount(I)V
    .locals 0
    .param p1, "sentMsgsCnt"    # I

    .prologue
    .line 1124
    iput p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->sentMsgsCnt:I

    .line 1125
    return-void
.end method

.method public setStartTime(J)V
    .locals 1
    .param p1, "startTime"    # J

    .prologue
    .line 1061
    iput-wide p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->startTime:J

    .line 1062
    return-void
.end method

.method public setTotalCancelledJobs(I)V
    .locals 0
    .param p1, "totalCancelledJobs"    # I

    .prologue
    .line 659
    iput p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalCancelledJobs:I

    .line 660
    return-void
.end method

.method public setTotalExecutedJobs(I)V
    .locals 0
    .param p1, "totalExecutedJobs"    # I

    .prologue
    .line 645
    iput p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalExecutedJobs:I

    .line 646
    return-void
.end method

.method public setTotalExecutedTasks(I)V
    .locals 0
    .param p1, "totalExecTasks"    # I

    .prologue
    .line 757
    iput p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalExecTasks:I

    .line 758
    return-void
.end method

.method public setTotalIdleTime(J)V
    .locals 1
    .param p1, "totalIdleTime"    # J

    .prologue
    .line 776
    iput-wide p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalIdleTime:J

    .line 777
    return-void
.end method

.method public setTotalNodes(I)V
    .locals 0
    .param p1, "totalNodes"    # I

    .prologue
    .line 1169
    iput p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalNodes:I

    .line 1170
    return-void
.end method

.method public setTotalRejectedJobs(I)V
    .locals 0
    .param p1, "totalRejectedJobs"    # I

    .prologue
    .line 589
    iput p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->totalRejectedJobs:I

    .line 590
    return-void
.end method

.method public setTotalStartedThreadCount(J)V
    .locals 1
    .param p1, "startedThreadCnt"    # J

    .prologue
    .line 1097
    iput-wide p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->startedThreadCnt:J

    .line 1098
    return-void
.end method

.method public setUpTime(J)V
    .locals 1
    .param p1, "upTime"    # J

    .prologue
    .line 1052
    iput-wide p1, p0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->upTime:J

    .line 1053
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1546
    const-class v0, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
