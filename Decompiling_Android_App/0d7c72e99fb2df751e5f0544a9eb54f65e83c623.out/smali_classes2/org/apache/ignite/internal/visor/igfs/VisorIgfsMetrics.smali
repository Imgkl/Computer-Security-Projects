.class public Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;
.super Ljava/lang/Object;
.source "VisorIgfsMetrics.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private blocksRd:J

.field private blocksRdRmt:J

.field private blocksWrt:J

.field private blocksWrtRmt:J

.field private bytesRd:J

.field private bytesRdTm:J

.field private bytesWrt:J

.field private bytesWrtTm:J

.field private filesCnt:I

.field private filesOpenedForRd:I

.field private filesOpenedForWrt:I

.field private foldersCnt:I

.field private totalSpaceSz:J

.field private usedSpaceSz:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lorg/apache/ignite/igfs/IgfsMetrics;)Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;
    .locals 4
    .param p0, "m"    # Lorg/apache/ignite/igfs/IgfsMetrics;

    .prologue
    .line 79
    sget-boolean v1, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 81
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;-><init>()V

    .line 83
    .local v0, "metrics":Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;
    invoke-interface {p0}, Lorg/apache/ignite/igfs/IgfsMetrics;->maxSpaceSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->totalSpaceSize(J)V

    .line 84
    invoke-interface {p0}, Lorg/apache/ignite/igfs/IgfsMetrics;->localSpaceSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->usedSpaceSize(J)V

    .line 85
    invoke-interface {p0}, Lorg/apache/ignite/igfs/IgfsMetrics;->directoriesCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->foldersCount(I)V

    .line 86
    invoke-interface {p0}, Lorg/apache/ignite/igfs/IgfsMetrics;->filesCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->filesCount(I)V

    .line 87
    invoke-interface {p0}, Lorg/apache/ignite/igfs/IgfsMetrics;->filesOpenedForRead()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->filesOpenedForRead(I)V

    .line 88
    invoke-interface {p0}, Lorg/apache/ignite/igfs/IgfsMetrics;->filesOpenedForWrite()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->filesOpenedForWrite(I)V

    .line 89
    invoke-interface {p0}, Lorg/apache/ignite/igfs/IgfsMetrics;->blocksReadTotal()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->blocksRead(J)V

    .line 90
    invoke-interface {p0}, Lorg/apache/ignite/igfs/IgfsMetrics;->blocksReadRemote()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->blocksReadRemote(J)V

    .line 91
    invoke-interface {p0}, Lorg/apache/ignite/igfs/IgfsMetrics;->blocksWrittenTotal()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->blocksWritten(J)V

    .line 92
    invoke-interface {p0}, Lorg/apache/ignite/igfs/IgfsMetrics;->blocksWrittenRemote()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->blocksWrittenRemote(J)V

    .line 93
    invoke-interface {p0}, Lorg/apache/ignite/igfs/IgfsMetrics;->bytesRead()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->bytesRead(J)V

    .line 94
    invoke-interface {p0}, Lorg/apache/ignite/igfs/IgfsMetrics;->bytesReadTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->bytesReadTime(J)V

    .line 95
    invoke-interface {p0}, Lorg/apache/ignite/igfs/IgfsMetrics;->bytesWritten()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->bytesWritten(J)V

    .line 96
    invoke-interface {p0}, Lorg/apache/ignite/igfs/IgfsMetrics;->bytesWriteTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->bytesWriteTime(J)V

    .line 98
    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;)Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;
    .locals 4
    .param p1, "m"    # Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;

    .prologue
    .line 108
    sget-boolean v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 110
    :cond_0
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->totalSpaceSz:J

    iget-wide v2, p1, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->totalSpaceSz:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->totalSpaceSz:J

    .line 111
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->usedSpaceSz:J

    iget-wide v2, p1, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->usedSpaceSz:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->usedSpaceSz:J

    .line 112
    iget v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->foldersCnt:I

    iget v1, p1, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->foldersCnt:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->foldersCnt:I

    .line 113
    iget v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->filesCnt:I

    iget v1, p1, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->filesCnt:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->filesCnt:I

    .line 114
    iget v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->filesOpenedForRd:I

    iget v1, p1, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->filesOpenedForRd:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->filesOpenedForRd:I

    .line 115
    iget v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->filesOpenedForWrt:I

    iget v1, p1, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->filesOpenedForWrt:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->filesOpenedForWrt:I

    .line 116
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->blocksRd:J

    iget-wide v2, p1, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->blocksRd:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->blocksRd:J

    .line 117
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->blocksRdRmt:J

    iget-wide v2, p1, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->blocksRdRmt:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->blocksRdRmt:J

    .line 118
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->blocksWrt:J

    iget-wide v2, p1, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->blocksWrt:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->blocksWrt:J

    .line 119
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->blocksWrtRmt:J

    iget-wide v2, p1, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->blocksWrtRmt:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->blocksWrtRmt:J

    .line 120
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->bytesRd:J

    iget-wide v2, p1, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->bytesRd:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->bytesRd:J

    .line 121
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->bytesRdTm:J

    iget-wide v2, p1, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->bytesRdTm:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->bytesRdTm:J

    .line 122
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->bytesWrt:J

    iget-wide v2, p1, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->bytesWrt:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->bytesWrt:J

    .line 123
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->bytesWrtTm:J

    iget-wide v2, p1, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->bytesWrtTm:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->bytesWrtTm:J

    .line 125
    return-object p0
.end method

.method public aggregate(I)Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 135
    if-lez p1, :cond_0

    .line 136
    iget v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->foldersCnt:I

    div-int/2addr v0, p1

    iput v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->foldersCnt:I

    .line 137
    iget v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->filesCnt:I

    div-int/2addr v0, p1

    iput v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->filesCnt:I

    .line 140
    :cond_0
    return-object p0
.end method

.method public blocksRead()J
    .locals 2

    .prologue
    .line 238
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->blocksRd:J

    return-wide v0
.end method

.method public blocksRead(J)V
    .locals 1
    .param p1, "blocksRd"    # J

    .prologue
    .line 245
    iput-wide p1, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->blocksRd:J

    .line 246
    return-void
.end method

.method public blocksReadRemote()J
    .locals 2

    .prologue
    .line 252
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->blocksRdRmt:J

    return-wide v0
.end method

.method public blocksReadRemote(J)V
    .locals 1
    .param p1, "blocksRdRmt"    # J

    .prologue
    .line 259
    iput-wide p1, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->blocksRdRmt:J

    .line 260
    return-void
.end method

.method public blocksWritten()J
    .locals 2

    .prologue
    .line 266
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->blocksWrt:J

    return-wide v0
.end method

.method public blocksWritten(J)V
    .locals 1
    .param p1, "blocksWrt"    # J

    .prologue
    .line 273
    iput-wide p1, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->blocksWrt:J

    .line 274
    return-void
.end method

.method public blocksWrittenRemote()J
    .locals 2

    .prologue
    .line 280
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->blocksWrtRmt:J

    return-wide v0
.end method

.method public blocksWrittenRemote(J)V
    .locals 1
    .param p1, "blocksWrtRmt"    # J

    .prologue
    .line 287
    iput-wide p1, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->blocksWrtRmt:J

    .line 288
    return-void
.end method

.method public bytesRead()J
    .locals 2

    .prologue
    .line 294
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->bytesRd:J

    return-wide v0
.end method

.method public bytesRead(J)V
    .locals 1
    .param p1, "bytesRd"    # J

    .prologue
    .line 301
    iput-wide p1, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->bytesRd:J

    .line 302
    return-void
.end method

.method public bytesReadTime()J
    .locals 2

    .prologue
    .line 308
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->bytesRdTm:J

    return-wide v0
.end method

.method public bytesReadTime(J)V
    .locals 1
    .param p1, "bytesRdTm"    # J

    .prologue
    .line 315
    iput-wide p1, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->bytesRdTm:J

    .line 316
    return-void
.end method

.method public bytesWriteTime()J
    .locals 2

    .prologue
    .line 336
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->bytesWrtTm:J

    return-wide v0
.end method

.method public bytesWriteTime(J)V
    .locals 1
    .param p1, "bytesWrtTm"    # J

    .prologue
    .line 343
    iput-wide p1, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->bytesWrtTm:J

    .line 344
    return-void
.end method

.method public bytesWritten()J
    .locals 2

    .prologue
    .line 322
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->bytesWrt:J

    return-wide v0
.end method

.method public bytesWritten(J)V
    .locals 1
    .param p1, "bytesWrt"    # J

    .prologue
    .line 329
    iput-wide p1, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->bytesWrt:J

    .line 330
    return-void
.end method

.method public filesCount()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->filesCnt:I

    return v0
.end method

.method public filesCount(I)V
    .locals 0
    .param p1, "filesCnt"    # I

    .prologue
    .line 203
    iput p1, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->filesCnt:I

    .line 204
    return-void
.end method

.method public filesOpenedForRead()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->filesOpenedForRd:I

    return v0
.end method

.method public filesOpenedForRead(I)V
    .locals 0
    .param p1, "filesOpenedForRd"    # I

    .prologue
    .line 217
    iput p1, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->filesOpenedForRd:I

    .line 218
    return-void
.end method

.method public filesOpenedForWrite()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->filesOpenedForWrt:I

    return v0
.end method

.method public filesOpenedForWrite(I)V
    .locals 0
    .param p1, "filesOpenedForWrt"    # I

    .prologue
    .line 231
    iput p1, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->filesOpenedForWrt:I

    .line 232
    return-void
.end method

.method public foldersCount()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->foldersCnt:I

    return v0
.end method

.method public foldersCount(I)V
    .locals 0
    .param p1, "foldersCnt"    # I

    .prologue
    .line 189
    iput p1, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->foldersCnt:I

    .line 190
    return-void
.end method

.method public freeSpaceSize()J
    .locals 4

    .prologue
    .line 175
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->totalSpaceSz:J

    iget-wide v2, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->usedSpaceSz:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    const-class v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public totalSpaceSize()J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->totalSpaceSz:J

    return-wide v0
.end method

.method public totalSpaceSize(J)V
    .locals 1
    .param p1, "totalSpaceSz"    # J

    .prologue
    .line 154
    iput-wide p1, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->totalSpaceSz:J

    .line 155
    return-void
.end method

.method public usedSpaceSize()J
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->usedSpaceSz:J

    return-wide v0
.end method

.method public usedSpaceSize(J)V
    .locals 1
    .param p1, "usedSpaceSz"    # J

    .prologue
    .line 168
    iput-wide p1, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsMetrics;->usedSpaceSz:J

    .line 169
    return-void
.end method
