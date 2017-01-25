.class Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;
.super Ljava/lang/Object;
.source "GridJobMetricsProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SnapshotsQueue"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private idx:I

.field private final mask:I

.field private final snapshots:[Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;

.field private totalCancelledJobs:I

.field private totalFinishedJobs:I

.field private totalRejectedJobs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 216
    const-class v0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;I)V
    .locals 1
    .param p2, "size"    # I

    .prologue
    .line 238
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;->this$0:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    sget-boolean v0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gtz p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 241
    :cond_0
    new-array v0, p2, [Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;->snapshots:[Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;

    .line 243
    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;->mask:I

    .line 244
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;ILorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$1;

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;-><init>(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;I)V

    return-void
.end method


# virtual methods
.method declared-synchronized add(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;)V
    .locals 3
    .param p1, "s"    # Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;->snapshots:[Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;

    iget v1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;->idx:I

    iget v2, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;->mask:I

    and-int/2addr v1, v2

    aput-object p1, v0, v1

    .line 252
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;->totalFinishedJobs:I

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getFinishedJobs()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;->totalFinishedJobs:I

    .line 253
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;->totalCancelledJobs:I

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getCancelJobs()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;->totalCancelledJobs:I

    .line 254
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;->totalRejectedJobs:I

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getRejectJobs()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;->totalRejectedJobs:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    monitor-exit p0

    return-void

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized reduce(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;J)V
    .locals 8
    .param p1, "rdc"    # Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;
    .param p2, "now"    # J

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    sget-boolean v4, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 264
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;->snapshots:[Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 265
    .local v3, "s":Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;
    if-nez v3, :cond_2

    .line 274
    .end local v3    # "s":Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;
    :cond_1
    iget v4, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;->totalFinishedJobs:I

    iget v5, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;->totalCancelledJobs:I

    iget v6, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;->totalRejectedJobs:I

    invoke-virtual {p1, v4, v5, v6}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->collectTotals(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    monitor-exit p0

    return-void

    .line 268
    .restart local v3    # "s":Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getTimestamp()J

    move-result-wide v4

    sub-long v4, p2, v4

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;->this$0:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->expireTime:J
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->access$700(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 264
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    :cond_3
    invoke-virtual {p1, v3}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->collect(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
