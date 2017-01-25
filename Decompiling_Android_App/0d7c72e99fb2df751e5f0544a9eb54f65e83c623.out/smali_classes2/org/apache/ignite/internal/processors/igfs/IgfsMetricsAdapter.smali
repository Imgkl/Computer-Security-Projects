.class public Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;
.super Ljava/lang/Object;
.source "IgfsMetricsAdapter.java"

# interfaces
.implements Lorg/apache/ignite/igfs/IgfsMetrics;
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private blocksReadRmt:J

.field private blocksReadTotal:J

.field private blocksWrittenRmt:J

.field private blocksWrittenTotal:J

.field private bytesRead:J

.field private bytesReadTime:J

.field private bytesWriteTime:J

.field private bytesWritten:J

.field private dirsCnt:I

.field private filesCnt:I

.field private filesOpenedForRead:I

.field private filesOpenedForWrite:I

.field private locSpaceSize:J

.field private maxSpaceSize:J

.field private secondarySpaceSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public constructor <init>(JJJIIIIJJJJJJJJ)V
    .locals 3
    .param p1, "locSpaceSize"    # J
    .param p3, "maxSpaceSize"    # J
    .param p5, "secondarySpaceSize"    # J
    .param p7, "dirsCnt"    # I
    .param p8, "filesCnt"    # I
    .param p9, "filesOpenedForRead"    # I
    .param p10, "filesOpenedForWrite"    # I
    .param p11, "blocksReadTotal"    # J
    .param p13, "blocksReadRmt"    # J
    .param p15, "blocksWrittenTotal"    # J
    .param p17, "blocksWrittenRmt"    # J
    .param p19, "bytesRead"    # J
    .param p21, "bytesReadTime"    # J
    .param p23, "bytesWritten"    # J
    .param p25, "bytesWriteTime"    # J

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->locSpaceSize:J

    .line 106
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->maxSpaceSize:J

    .line 107
    iput-wide p5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->secondarySpaceSize:J

    .line 108
    iput p7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->dirsCnt:I

    .line 109
    iput p8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->filesCnt:I

    .line 110
    iput p9, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->filesOpenedForRead:I

    .line 111
    iput p10, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->filesOpenedForWrite:I

    .line 112
    iput-wide p11, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->blocksReadTotal:J

    .line 113
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->blocksReadRmt:J

    .line 114
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->blocksWrittenTotal:J

    .line 115
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->blocksWrittenRmt:J

    .line 116
    move-wide/from16 v0, p19

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->bytesRead:J

    .line 117
    move-wide/from16 v0, p21

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->bytesReadTime:J

    .line 118
    move-wide/from16 v0, p23

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->bytesWritten:J

    .line 119
    move-wide/from16 v0, p25

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->bytesWriteTime:J

    .line 120
    return-void
.end method


# virtual methods
.method public blocksReadRemote()J
    .locals 2

    .prologue
    .line 164
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->blocksReadRmt:J

    return-wide v0
.end method

.method public blocksReadTotal()J
    .locals 2

    .prologue
    .line 159
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->blocksReadTotal:J

    return-wide v0
.end method

.method public blocksWrittenRemote()J
    .locals 2

    .prologue
    .line 174
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->blocksWrittenRmt:J

    return-wide v0
.end method

.method public blocksWrittenTotal()J
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->blocksWrittenTotal:J

    return-wide v0
.end method

.method public bytesRead()J
    .locals 2

    .prologue
    .line 179
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->bytesRead:J

    return-wide v0
.end method

.method public bytesReadTime()J
    .locals 2

    .prologue
    .line 184
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->bytesReadTime:J

    return-wide v0
.end method

.method public bytesWriteTime()J
    .locals 2

    .prologue
    .line 194
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->bytesWriteTime:J

    return-wide v0
.end method

.method public bytesWritten()J
    .locals 2

    .prologue
    .line 189
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->bytesWritten:J

    return-wide v0
.end method

.method public directoriesCount()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->dirsCnt:I

    return v0
.end method

.method public filesCount()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->filesCnt:I

    return v0
.end method

.method public filesOpenedForRead()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->filesOpenedForRead:I

    return v0
.end method

.method public filesOpenedForWrite()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->filesOpenedForWrite:I

    return v0
.end method

.method public localSpaceSize()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->locSpaceSize:J

    return-wide v0
.end method

.method public maxSpaceSize()J
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->maxSpaceSize:J

    return-wide v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->locSpaceSize:J

    .line 219
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->maxSpaceSize:J

    .line 220
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->secondarySpaceSize:J

    .line 221
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->dirsCnt:I

    .line 222
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->filesCnt:I

    .line 223
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->filesOpenedForRead:I

    .line 224
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->filesOpenedForWrite:I

    .line 225
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->blocksReadTotal:J

    .line 226
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->blocksReadRmt:J

    .line 227
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->blocksWrittenTotal:J

    .line 228
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->blocksWrittenRmt:J

    .line 229
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->bytesRead:J

    .line 230
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->bytesReadTime:J

    .line 231
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->bytesWritten:J

    .line 232
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->bytesWriteTime:J

    .line 233
    return-void
.end method

.method public secondarySpaceSize()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->secondarySpaceSize:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;

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
    .line 199
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->locSpaceSize:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 200
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->maxSpaceSize:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 201
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->secondarySpaceSize:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 202
    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->dirsCnt:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 203
    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->filesCnt:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 204
    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->filesOpenedForRead:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 205
    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->filesOpenedForWrite:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 206
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->blocksReadTotal:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 207
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->blocksReadRmt:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 208
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->blocksWrittenTotal:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 209
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->blocksWrittenRmt:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 210
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->bytesRead:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 211
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->bytesReadTime:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 212
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->bytesWritten:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 213
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetricsAdapter;->bytesWriteTime:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 214
    return-void
.end method
