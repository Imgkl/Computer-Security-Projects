.class public Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;
.super Lorg/apache/ignite/internal/processors/GridProcessorAdapter;
.source "GridJobMetricsProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$1;,
        Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;,
        Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;,
        Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CONCURRENCY_LEVEL:I


# instance fields
.field private final expireTime:J

.field private final histSize:I

.field private volatile idleTimer:J

.field private final isIdle:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile metrics:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;

.field private final queSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-class v0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->$assertionsDisabled:Z

    .line 37
    const-string v0, "IGNITE_JOBS_METRICS_CONCURRENCY_LEVEL"

    const/16 v1, 0x40

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->CONCURRENCY_LEVEL:I

    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 4
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 49
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->idleTimer:J

    .line 52
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->isIdle:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMetricsExpireTime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->expireTime:J

    .line 64
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMetricsHistorySize()I

    move-result v2

    iput v2, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->histSize:I

    .line 66
    sget-boolean v2, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget v2, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->histSize:I

    if-gtz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    iget v3, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->histSize:I

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(I)V

    throw v2

    .line 68
    :cond_0
    iget v2, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->histSize:I

    sget v3, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->CONCURRENCY_LEVEL:I

    div-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x1

    .line 69
    .local v0, "minSize":I
    const/4 v1, 0x1

    .line 72
    .local v1, "size":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 73
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_1
    iput v1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->queSize:I

    .line 77
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->reset()V

    .line 78
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->CONCURRENCY_LEVEL:I

    return v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;

    .prologue
    .line 35
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->queSize:I

    return v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;

    .prologue
    .line 35
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->expireTime:J

    return-wide v0
.end method


# virtual methods
.method public addSnapshot(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;)V
    .locals 10
    .param p1, "metrics"    # Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 173
    sget-boolean v3, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 175
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->metrics:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;

    .line 177
    .local v2, "m":Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;
    # getter for: Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->snapshotsQueues:[Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->access$300(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;)[Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;

    move-result-object v3

    invoke-static {}, Lorg/jsr166/ThreadLocalRandom8;->current()Lorg/jsr166/ThreadLocalRandom8;

    move-result-object v6

    # getter for: Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->snapshotsQueues:[Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->access$300(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;)[Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v6, v7}, Lorg/jsr166/ThreadLocalRandom8;->nextInt(I)I

    move-result v6

    aget-object v3, v3, v6

    invoke-virtual {v3, p1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;->add(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;)V

    .line 180
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->idleTimer:J

    .line 182
    .local v0, "idleTimer0":J
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getActiveJobs()I

    move-result v3

    if-lez v3, :cond_2

    .line 183
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->isIdle:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->isIdle:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v9, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    .line 187
    .local v4, "now":J
    sub-long v6, v4, v0

    # += operator for: Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->totalIdleTime:J
    invoke-static {v2, v6, v7}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->access$614(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;J)J

    .line 189
    const-wide/16 v6, 0x0

    # setter for: Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->curIdleTime:J
    invoke-static {v2, v6, v7}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->access$502(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;J)J

    .line 205
    .end local v4    # "now":J
    :cond_1
    :goto_0
    return-void

    .line 193
    :cond_2
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    .line 195
    .restart local v4    # "now":J
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->isIdle:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-nez v3, :cond_3

    .line 197
    sub-long v6, v4, v0

    # += operator for: Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->curIdleTime:J
    invoke-static {v2, v6, v7}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->access$514(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;J)J

    .line 199
    sub-long v6, v4, v0

    # += operator for: Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->totalIdleTime:J
    invoke-static {v2, v6, v7}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->access$614(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;J)J

    .line 203
    :cond_3
    iput-wide v4, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->idleTimer:J

    goto :goto_0
.end method

.method getHistorySize()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->histSize:I

    return v0
.end method

.method public getJobMetrics()Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;
    .locals 12

    .prologue
    .line 151
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v6

    .line 153
    .local v6, "now":J
    new-instance v8, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;-><init>(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$1;)V

    .line 155
    .local v8, "rdc":Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->metrics:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;

    .line 157
    .local v2, "im":Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;
    # getter for: Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->snapshotsQueues:[Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->access$300(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;)[Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v5, v0, v1

    .line 158
    .local v5, "q":Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;
    invoke-virtual {v5, v8, v6, v7}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;->reduce(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;J)V

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v5    # "q":Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;
    :cond_0
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotReducer;->reduce()Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    move-result-object v4

    .line 163
    .local v4, "m":Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;
    # getter for: Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->curIdleTime:J
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->access$500(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;)J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->setCurrentIdleTime(J)V

    .line 164
    # getter for: Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->totalIdleTime:J
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->access$600(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;)J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->setTotalIdleTime(J)V

    .line 166
    return-object v4
.end method

.method public printMemoryStats()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 209
    const-string v0, ">>>"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> Job metrics processor processor memory stats [grid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;-><init>(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->metrics:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;

    .line 113
    return-void
.end method

.method public start()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 126
    iget v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->histSize:I

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "metricsHistorySize > 0"

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->assertParameter(ZLjava/lang/String;)V

    .line 127
    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->expireTime:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    :goto_1
    const-string v0, "metricsExpireTime > 0"

    invoke-virtual {p0, v1, v0}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->assertParameter(ZLjava/lang/String;)V

    .line 129
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->metrics:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;

    # getter for: Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->snapshotsQueues:[Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;->access$300(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$InternalMetrics;)[Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor$SnapshotsQueue;

    move-result-object v0

    if-nez v0, :cond_2

    .line 130
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    const-string v1, "Invalid concurrency level configured (is \'IGNITE_JOBS_METRICS_CONCURRENCY_LEVEL\' system property properly set?)."

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    .line 126
    goto :goto_0

    :cond_1
    move v1, v2

    .line 127
    goto :goto_1

    .line 133
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job metrics processor started [histSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->histSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", concurLvl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->CONCURRENCY_LEVEL:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expireTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->expireTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 137
    :cond_3
    return-void
.end method

.method public stop(Z)V
    .locals 2
    .param p1, "cancel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Job metrics processor stopped."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 143
    :cond_0
    return-void
.end method
