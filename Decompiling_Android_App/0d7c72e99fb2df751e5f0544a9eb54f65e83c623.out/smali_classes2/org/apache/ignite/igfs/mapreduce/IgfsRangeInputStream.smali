.class public final Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;
.super Lorg/apache/ignite/igfs/IgfsInputStream;
.source "IgfsRangeInputStream.java"


# instance fields
.field private final is:Lorg/apache/ignite/igfs/IgfsInputStream;

.field private final maxLen:J

.field private pos:J

.field private final start:J


# direct methods
.method public constructor <init>(Lorg/apache/ignite/igfs/IgfsInputStream;JJ)V
    .locals 4
    .param p1, "is"    # Lorg/apache/ignite/igfs/IgfsInputStream;
    .param p2, "start"    # J
    .param p4, "maxLen"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 53
    invoke-direct {p0}, Lorg/apache/ignite/igfs/IgfsInputStream;-><init>()V

    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input stream cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    cmp-long v0, p2, v2

    if-gez v0, :cond_1

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Start position cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/igfs/IgfsInputStream;->length()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_2

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Start position cannot be greater that file length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_2
    cmp-long v0, p4, v2

    if-gez v0, :cond_3

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_3
    add-long v0, p2, p4

    invoke-virtual {p1}, Lorg/apache/ignite/igfs/IgfsInputStream;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sum of start position and length cannot be greater than file length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_4
    iput-object p1, p0, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;->is:Lorg/apache/ignite/igfs/IgfsInputStream;

    .line 70
    iput-wide p2, p0, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;->start:J

    .line 71
    iput-wide p4, p0, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;->maxLen:J

    .line 73
    invoke-virtual {p1, p2, p3}, Lorg/apache/ignite/igfs/IgfsInputStream;->seek(J)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/igfs/IgfsInputStream;Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;)V
    .locals 6
    .param p1, "is"    # Lorg/apache/ignite/igfs/IgfsInputStream;
    .param p2, "range"    # Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p2}, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;->start()J

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;->length()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;-><init>(Lorg/apache/ignite/igfs/IgfsInputStream;JJ)V

    .line 90
    return-void
.end method


# virtual methods
.method public available()I
    .locals 6

    .prologue
    .line 177
    iget-wide v2, p0, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;->maxLen:J

    iget-wide v4, p0, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;->pos:J

    sub-long v0, v2, v4

    .line 179
    .local v0, "l":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 180
    const/4 v2, 0x0

    .line 185
    :goto_0
    return v2

    .line 182
    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 183
    const v2, 0x7fffffff

    goto :goto_0

    .line 185
    :cond_1
    long-to-int v2, v0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;->is:Lorg/apache/ignite/igfs/IgfsInputStream;

    invoke-virtual {v0}, Lorg/apache/ignite/igfs/IgfsInputStream;->close()V

    .line 191
    return-void
.end method

.method public length()J
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;->is:Lorg/apache/ignite/igfs/IgfsInputStream;

    invoke-virtual {v0}, Lorg/apache/ignite/igfs/IgfsInputStream;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public position()J
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;->pos:J

    return-wide v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 94
    iget-wide v2, p0, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;->pos:J

    iget-wide v4, p0, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;->maxLen:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 95
    iget-object v2, p0, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;->is:Lorg/apache/ignite/igfs/IgfsInputStream;

    invoke-virtual {v2}, Lorg/apache/ignite/igfs/IgfsInputStream;->read()I

    move-result v0

    .line 97
    .local v0, "res":I
    if-eq v0, v1, :cond_0

    .line 98
    iget-wide v2, p0, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;->pos:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;->pos:J

    .line 103
    .end local v0    # "res":I
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public read(J[BII)I
    .locals 1
    .param p1, "pos"    # J
    .param p3, "buf"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;->seek(J)V

    .line 126
    invoke-virtual {p0, p3, p4, p5}, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "b"    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 108
    iget-wide v2, p0, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;->pos:J

    iget-wide v4, p0, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;->maxLen:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 109
    int-to-long v2, p3

    iget-wide v4, p0, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;->maxLen:J

    iget-wide v6, p0, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;->pos:J

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    .line 111
    iget-object v2, p0, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;->is:Lorg/apache/ignite/igfs/IgfsInputStream;

    invoke-virtual {v2, p1, p2, p3}, Lorg/apache/ignite/igfs/IgfsInputStream;->read([BII)I

    move-result v0

    .line 113
    .local v0, "res":I
    if-eq v0, v1, :cond_0

    .line 114
    iget-wide v2, p0, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;->pos:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;->pos:J

    .line 119
    .end local v0    # "res":I
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public readFully(J[B)V
    .locals 7
    .param p1, "pos"    # J
    .param p3, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    const/4 v5, 0x0

    array-length v6, p3

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;->readFully(J[BII)V

    .line 132
    return-void
.end method

.method public readFully(J[BII)V
    .locals 5
    .param p1, "pos"    # J
    .param p3, "buf"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;->seek(J)V

    .line 138
    const/4 v1, 0x0

    .local v1, "readBytes":I
    :goto_0
    if-ge v1, p5, :cond_1

    .line 139
    add-int v2, p4, v1

    sub-int v3, p5, v1

    invoke-virtual {p0, p3, v2, v3}, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;->read([BII)I

    move-result v0

    .line 141
    .local v0, "read":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 142
    new-instance v2, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read stream fully (stream ends unexpectedly) [pos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", buf.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", off="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    :cond_0
    add-int/2addr v1, v0

    .line 146
    goto :goto_0

    .line 147
    .end local v0    # "read":I
    :cond_1
    return-void
.end method

.method public seek(J)V
    .locals 5
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 152
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seek position cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;->is:Lorg/apache/ignite/igfs/IgfsInputStream;

    iget-wide v2, p0, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;->start:J

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/igfs/IgfsInputStream;->seek(J)V

    .line 156
    iput-wide p1, p0, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;->pos:J

    .line 157
    return-void
.end method

.method public startOffset()J
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;->start:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-class v0, Lorg/apache/ignite/igfs/mapreduce/IgfsRangeInputStream;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
