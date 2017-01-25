.class public Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;
.super Ljava/lang/Object;
.source "GridCacheQueryMetricsAdapter.java"

# interfaces
.implements Lorg/apache/ignite/cache/query/QueryMetrics;
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private volatile avgTime:D

.field private volatile execs:I

.field private executed:Z

.field private volatile fails:I

.field private volatile maxTime:J

.field private volatile minTime:J

.field private final mux:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->mux:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public averageTime()D
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->avgTime:D

    return-wide v0
.end method

.method public copy()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;
    .locals 6

    .prologue
    .line 115
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;-><init>()V

    .line 117
    .local v0, "m":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->mux:Ljava/lang/Object;

    monitor-enter v2

    .line 118
    :try_start_0
    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->fails:I

    iput v1, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->fails:I

    .line 119
    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->minTime:J

    iput-wide v4, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->minTime:J

    .line 120
    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->maxTime:J

    iput-wide v4, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->maxTime:J

    .line 121
    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->execs:I

    iput v1, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->execs:I

    .line 122
    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->avgTime:D

    iput-wide v4, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->avgTime:D

    .line 123
    monitor-exit v2

    .line 125
    return-object v0

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public executions()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->execs:I

    return v0
.end method

.method public fails()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->fails:I

    return v0
.end method

.method public maximumTime()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->maxTime:J

    return-wide v0
.end method

.method public minimumTime()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->minTime:J

    return-wide v0
.end method

.method public onQueryExecute(JZ)V
    .locals 7
    .param p1, "duration"    # J
    .param p3, "fail"    # Z

    .prologue
    .line 85
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->executed:Z

    if-nez v0, :cond_2

    .line 87
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->minTime:J

    .line 88
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->maxTime:J

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->executed:Z

    .line 100
    :cond_0
    :goto_0
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->execs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->execs:I

    .line 102
    if-eqz p3, :cond_1

    .line 103
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->fails:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->fails:I

    .line 105
    :cond_1
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->avgTime:D

    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->execs:I

    add-int/lit8 v0, v0, -0x1

    int-to-double v4, v0

    mul-double/2addr v2, v4

    long-to-double v4, p1

    add-double/2addr v2, v4

    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->execs:I

    int-to-double v4, v0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->avgTime:D

    .line 106
    monitor-exit v1

    .line 107
    return-void

    .line 93
    :cond_2
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->minTime:J

    cmp-long v0, v2, p1

    if-lez v0, :cond_3

    .line 94
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->minTime:J

    .line 96
    :cond_3
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->maxTime:J

    cmp-long v0, v2, p1

    if-gez v0, :cond_0

    .line 97
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->maxTime:J

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 139
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->minTime:J

    .line 140
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->maxTime:J

    .line 141
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->avgTime:D

    .line 142
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->execs:I

    .line 143
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->fails:I

    .line 144
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

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
    .line 130
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->minTime:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 131
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->maxTime:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 132
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->avgTime:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 133
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->execs:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 134
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->fails:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 135
    return-void
.end method
