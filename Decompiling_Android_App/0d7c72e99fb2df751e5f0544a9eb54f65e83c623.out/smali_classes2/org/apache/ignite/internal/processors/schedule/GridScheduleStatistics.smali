.class Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;
.super Ljava/lang/Object;
.source "GridScheduleStatistics.java"


# instance fields
.field private final createTime:J

.field private execCnt:I

.field private lastEndTime:J

.field private lastExecTime:J

.field private lastIdleTime:J

.field private lastStartTime:J

.field private running:Z

.field private totalExecTime:J

.field private totalIdleTime:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->createTime:J

    return-void
.end method


# virtual methods
.method getAverageExecutionTime()D
    .locals 4

    .prologue
    .line 113
    iget v0, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->execCnt:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->totalExecTime:J

    long-to-double v0, v0

    iget v2, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->execCnt:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method getAverageIdleTime()D
    .locals 6

    .prologue
    .line 86
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    .line 89
    .local v0, "now":J
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->totalIdleTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 90
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->createTime:J

    sub-long v2, v0, v2

    long-to-double v2, v2

    .line 92
    :goto_0
    return-wide v2

    :cond_0
    iget v2, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->execCnt:I

    if-nez v2, :cond_1

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->totalIdleTime:J

    long-to-double v2, v2

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->totalIdleTime:J

    long-to-double v2, v2

    iget v4, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->execCnt:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    goto :goto_0
.end method

.method getCreateTime()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->createTime:J

    return-wide v0
.end method

.method getExecutionCount()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->execCnt:I

    return v0
.end method

.method getLastEndTime()J
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->lastEndTime:J

    return-wide v0
.end method

.method getLastExecutionTime()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->lastExecTime:J

    return-wide v0
.end method

.method getLastIdleTime()J
    .locals 4

    .prologue
    .line 64
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->lastIdleTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->createTime:J

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->lastIdleTime:J

    goto :goto_0
.end method

.method getLastStartTime()J
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->lastStartTime:J

    return-wide v0
.end method

.method getTotalExecutionTime()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->totalExecTime:J

    return-wide v0
.end method

.method getTotalIdleTime()J
    .locals 6

    .prologue
    .line 71
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    .line 73
    .local v0, "now":J
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->totalIdleTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 74
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->createTime:J

    sub-long v2, v0, v2

    .line 79
    :goto_0
    return-wide v2

    .line 76
    :cond_0
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->running:Z

    if-eqz v2, :cond_1

    .line 77
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->totalIdleTime:J

    goto :goto_0

    .line 79
    :cond_1
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->totalIdleTime:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->lastEndTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    goto :goto_0
.end method

.method isRunning()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->running:Z

    return v0
.end method

.method onEnd()V
    .locals 6

    .prologue
    .line 165
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    .line 167
    .local v0, "now":J
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->lastEndTime:J

    .line 169
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->lastStartTime:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->lastExecTime:J

    .line 171
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->totalExecTime:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->lastExecTime:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->totalExecTime:J

    .line 173
    iget v2, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->execCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->execCnt:I

    .line 175
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->running:Z

    .line 176
    return-void
.end method

.method onStart()V
    .locals 8

    .prologue
    .line 148
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    .line 150
    .local v2, "now":J
    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->lastStartTime:J

    .line 152
    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->lastEndTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->createTime:J

    .line 154
    .local v0, "lastEndTime":J
    :goto_0
    sub-long v4, v2, v0

    iput-wide v4, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->lastIdleTime:J

    .line 156
    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->totalIdleTime:J

    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->lastIdleTime:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->totalIdleTime:J

    .line 158
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->running:Z

    .line 159
    return-void

    .line 152
    .end local v0    # "lastEndTime":J
    :cond_0
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;->lastEndTime:J

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    const-class v0, Lorg/apache/ignite/internal/processors/schedule/GridScheduleStatistics;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
