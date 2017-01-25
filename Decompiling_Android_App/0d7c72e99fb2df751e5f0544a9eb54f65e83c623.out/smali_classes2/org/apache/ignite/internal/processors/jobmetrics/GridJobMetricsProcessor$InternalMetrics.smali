.class Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;
.super Ljava/lang/Object;
.source "GridJobMetricsProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalMetrics"
.end annotation


# instance fields
.field private volatile curIdleTime:J

.field private final snapshotsQueues:[Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;

.field private volatile totalIdleTime:J


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 96
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->this$0:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    # getter for: Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->CONCURRENCY_LEVEL:I
    invoke-static {}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->access$000()I

    move-result v1

    if-gez v1, :cond_1

    .line 98
    iput-object v4, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->snapshotsQueues:[Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;

    .line 105
    :cond_0
    return-void

    .line 100
    :cond_1
    # getter for: Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->CONCURRENCY_LEVEL:I
    invoke-static {}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->access$000()I

    move-result v1

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->snapshotsQueues:[Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->snapshotsQueues:[Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 103
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->snapshotsQueues:[Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;

    new-instance v2, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;

    # getter for: Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->queSize:I
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->access$100(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;)I

    move-result v3

    invoke-direct {v2, p1, v3, v4}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;-><init>(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;ILorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$1;)V

    aput-object v2, v1, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;)[Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->snapshotsQueues:[Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;

    .prologue
    .line 83
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->curIdleTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;J)J
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;
    .param p1, "x1"    # J

    .prologue
    .line 83
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->curIdleTime:J

    return-wide p1
.end method

.method static synthetic access$514(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;J)J
    .locals 3
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;
    .param p1, "x1"    # J

    .prologue
    .line 83
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->curIdleTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->curIdleTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;

    .prologue
    .line 83
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->totalIdleTime:J

    return-wide v0
.end method

.method static synthetic access$614(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;J)J
    .locals 3
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;
    .param p1, "x1"    # J

    .prologue
    .line 83
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->totalIdleTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->totalIdleTime:J

    return-wide v0
.end method
