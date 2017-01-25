.class public Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;
.super Ljava/lang/Object;
.source "GridClientDataMetricsAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/GridClientDataMetrics;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private createTime:J

.field private volatile hits:I

.field private volatile misses:I

.field private volatile readTime:J

.field private volatile reads:I

.field private volatile writeTime:J

.field private volatile writes:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->createTime:J

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->readTime:J

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->writeTime:J

    return-void
.end method


# virtual methods
.method public createTime()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->createTime:J

    return-wide v0
.end method

.method public createTime(J)V
    .locals 1
    .param p1, "createTime"    # J

    .prologue
    .line 91
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->createTime:J

    .line 92
    return-void
.end method

.method public hits()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->hits:I

    return v0
.end method

.method public hits(I)V
    .locals 0
    .param p1, "hits"    # I

    .prologue
    .line 136
    iput p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->hits:I

    .line 137
    return-void
.end method

.method public misses()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->misses:I

    return v0
.end method

.method public misses(I)V
    .locals 0
    .param p1, "misses"    # I

    .prologue
    .line 145
    iput p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->misses:I

    .line 146
    return-void
.end method

.method public readTime()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->readTime:J

    return-wide v0
.end method

.method public readTime(J)V
    .locals 1
    .param p1, "readTime"    # J

    .prologue
    .line 100
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->readTime:J

    .line 101
    return-void
.end method

.method public reads()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->reads:I

    return v0
.end method

.method public reads(I)V
    .locals 0
    .param p1, "reads"    # I

    .prologue
    .line 118
    iput p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->reads:I

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridClientDataMetricsAdapter [createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->createTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->hits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", misses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->misses:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->reads:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", readTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->readTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", writes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->writes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", writeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->writeTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTime()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->writeTime:J

    return-wide v0
.end method

.method public writeTime(J)V
    .locals 1
    .param p1, "writeTime"    # J

    .prologue
    .line 109
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->writeTime:J

    .line 110
    return-void
.end method

.method public writes()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->writes:I

    return v0
.end method

.method public writes(I)V
    .locals 0
    .param p1, "writes"    # I

    .prologue
    .line 127
    iput p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->writes:I

    .line 128
    return-void
.end method
