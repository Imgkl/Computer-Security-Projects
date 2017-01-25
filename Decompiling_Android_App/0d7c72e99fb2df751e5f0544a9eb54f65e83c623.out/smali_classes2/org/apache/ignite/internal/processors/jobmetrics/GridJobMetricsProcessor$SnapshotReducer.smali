.class Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;
.super Ljava/lang/Object;
.source "GridJobMetricsProcessor.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteReducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SnapshotReducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteReducer",
        "<",
        "Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;",
        "Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private cnt:I

.field private lastSnapshot:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;

.field private final m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

.field private totalActiveJobs:I

.field private totalCancelledJobs:I

.field private totalCpuLoad:D

.field private totalExecTime:J

.field private totalFinishedJobs:I

.field private totalRejectedJobs:I

.field private totalStartedJobs:I

.field private totalWaitTime:J

.field private totalWaitingJobs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 281
    const-class v0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    new-instance v0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$1;

    .prologue
    .line 281
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic collect(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 281
    check-cast p1, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->collect(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;)Z

    move-result v0

    return v0
.end method

.method public collect(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;)Z
    .locals 4
    .param p1, "s"    # Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;

    .prologue
    .line 325
    sget-boolean v0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 327
    :cond_0
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->cnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->cnt:I

    .line 329
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->lastSnapshot:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->lastSnapshot:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getTimestamp()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 330
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->lastSnapshot:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;

    .line 333
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getMaximumActiveJobs()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getActiveJobs()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 334
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getActiveJobs()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->setMaximumActiveJobs(I)V

    .line 336
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getMaximumWaitingJobs()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getPassiveJobs()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 337
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getPassiveJobs()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->setMaximumWaitingJobs(I)V

    .line 339
    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getMaximumCancelledJobs()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getCancelJobs()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 340
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getCancelJobs()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->setMaximumCancelledJobs(I)V

    .line 342
    :cond_5
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getMaximumRejectedJobs()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getRejectJobs()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 343
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getRejectJobs()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->setMaximumRejectedJobs(I)V

    .line 345
    :cond_6
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getMaximumJobWaitTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getMaximumWaitTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_7

    .line 346
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getMaximumWaitTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->setMaximumJobWaitTime(J)V

    .line 348
    :cond_7
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getMaximumJobExecuteTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getMaximumExecutionTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_8

    .line 349
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getMaximumExecutionTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->setMaxJobExecutionTime(J)V

    .line 352
    :cond_8
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->totalActiveJobs:I

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getActiveJobs()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->totalActiveJobs:I

    .line 353
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->totalCancelledJobs:I

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getCancelJobs()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->totalCancelledJobs:I

    .line 354
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->totalWaitingJobs:I

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getPassiveJobs()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->totalWaitingJobs:I

    .line 355
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->totalRejectedJobs:I

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getRejectJobs()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->totalRejectedJobs:I

    .line 356
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->totalWaitTime:J

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getWaitTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->totalWaitTime:J

    .line 357
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->totalExecTime:J

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getExecutionTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->totalExecTime:J

    .line 358
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->totalStartedJobs:I

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getStartedJobs()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->totalStartedJobs:I

    .line 359
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->totalFinishedJobs:I

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getFinishedJobs()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->totalFinishedJobs:I

    .line 360
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->totalCpuLoad:D

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getCpuLoad()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->totalCpuLoad:D

    .line 362
    const/4 v0, 0x1

    return v0
.end method

.method collectTotals(III)V
    .locals 2
    .param p1, "totalFinishedJobs"    # I
    .param p2, "totalCancelledJobs"    # I
    .param p3, "totalRejectedJobs"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getTotalExecutedJobs()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->setTotalExecutedJobs(I)V

    .line 373
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getTotalCancelledJobs()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->setTotalCancelledJobs(I)V

    .line 374
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getTotalRejectedJobs()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->setTotalRejectedJobs(I)V

    .line 375
    return-void
.end method

.method public bridge synthetic reduce()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->reduce()Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    move-result-object v0

    return-object v0
.end method

.method public reduce()Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 380
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->lastSnapshot:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->lastSnapshot:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getActiveJobs()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->setCurrentActiveJobs(I)V

    .line 382
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->lastSnapshot:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getPassiveJobs()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->setCurrentWaitingJobs(I)V

    .line 383
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->lastSnapshot:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getCancelJobs()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->setCurrentCancelledJobs(I)V

    .line 384
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->lastSnapshot:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getRejectJobs()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->setCurrentRejectedJobs(I)V

    .line 385
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->lastSnapshot:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getMaximumExecutionTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->setCurrentJobExecutionTime(J)V

    .line 386
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->lastSnapshot:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getMaximumWaitTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->setCurrentJobWaitTime(J)V

    .line 390
    :cond_0
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->cnt:I

    if-lez v0, :cond_1

    .line 391
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    iget v1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->totalActiveJobs:I

    int-to-float v1, v1

    iget v4, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->cnt:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->setAverageActiveJobs(F)V

    .line 392
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    iget v1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->totalWaitingJobs:I

    int-to-float v1, v1

    iget v4, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->cnt:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->setAverageWaitingJobs(F)V

    .line 393
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    iget v1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->totalCancelledJobs:I

    int-to-float v1, v1

    iget v4, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->cnt:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->setAverageCancelledJobs(F)V

    .line 394
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    iget v1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->totalRejectedJobs:I

    int-to-float v1, v1

    iget v4, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->cnt:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->setAverageRejectedJobs(F)V

    .line 395
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->totalCpuLoad:D

    iget v1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->cnt:I

    int-to-double v6, v1

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->setAverageCpuLoad(D)V

    .line 398
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->totalFinishedJobs:I

    if-lez v0, :cond_3

    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->totalExecTime:J

    long-to-double v0, v0

    iget v5, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->totalFinishedJobs:I

    int-to-double v6, v5

    div-double/2addr v0, v6

    :goto_0
    invoke-virtual {v4, v0, v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->setAverageJobExecutionTime(D)V

    .line 399
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    iget v1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->totalStartedJobs:I

    if-lez v1, :cond_2

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->totalWaitTime:J

    long-to-double v2, v2

    iget v1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->totalStartedJobs:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    :cond_2
    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->setAverageJobWaitTime(D)V

    .line 401
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->m:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    return-object v0

    :cond_3
    move-wide v0, v2

    .line 398
    goto :goto_0
.end method
