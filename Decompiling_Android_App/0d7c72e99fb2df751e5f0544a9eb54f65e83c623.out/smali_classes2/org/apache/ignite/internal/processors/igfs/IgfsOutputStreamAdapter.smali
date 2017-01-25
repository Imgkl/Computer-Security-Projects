.class abstract Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;
.super Lorg/apache/ignite/igfs/IgfsOutputStream;
.source "IgfsOutputStreamAdapter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private buf:Ljava/nio/ByteBuffer;

.field private final bufSize:I

.field protected bytes:J

.field private closed:Z

.field protected final path:Lorg/apache/ignite/igfs/IgfsPath;

.field protected time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/igfs/IgfsPath;I)V
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "bufSize"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/apache/ignite/igfs/IgfsOutputStream;-><init>()V

    .line 59
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-gtz p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->path:Lorg/apache/ignite/igfs/IgfsPath;

    .line 63
    iput p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->bufSize:I

    .line 64
    return-void
.end method

.method private checkClosed(Ljava/io/DataInput;I)V
    .locals 3
    .param p1, "in"    # Ljava/io/DataInput;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 227
    :cond_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->closed:Z

    if-eqz v0, :cond_2

    .line 229
    if-eqz p1, :cond_1

    .line 230
    invoke-interface {p1, p2}, Ljava/io/DataInput;->skipBytes(I)I

    .line 232
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stream has been closed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_2
    return-void
.end method

.method private sendData(Z)V
    .locals 4
    .param p1, "flip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 247
    :cond_0
    if-eqz p1, :cond_1

    .line 248
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 250
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->storeDataBlock(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->buf:Ljava/nio/ByteBuffer;

    .line 257
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to store data into file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public bytes()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->bytes:J

    return-wide v0
.end method

.method public final declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 190
    :goto_0
    monitor-exit p0

    return-void

    .line 180
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 183
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->onClose()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 188
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->closed:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 183
    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->onClose()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 188
    :catchall_2
    move-exception v0

    const/4 v1, 0x1

    :try_start_5
    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->closed:Z

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->checkClosed(Ljava/io/DataInput;I)V

    .line 167
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->buf:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_0

    .line 168
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->sendData(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_0
    monitor-exit p0

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onClose()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    return-void
.end method

.method protected abstract storeDataBlock(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract storeDataBlocks(Ljava/io/DataInput;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized transferFrom(Ljava/io/DataInput;I)V
    .locals 8
    .param p1, "in"    # Ljava/io/DataInput;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->checkClosed(Ljava/io/DataInput;I)V

    .line 142
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 145
    .local v2, "startTime":J
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->buf:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-lez v1, :cond_0

    .line 146
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->sendData(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->storeDataBlocks(Ljava/io/DataInput;I)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :try_start_2
    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->time:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->time:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v2    # "startTime":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized write(I)V
    .locals 6
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    monitor-enter p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->checkClosed(Ljava/io/DataInput;I)V

    .line 79
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 81
    .local v0, "startTime":J
    and-int/lit16 p1, p1, 0xff

    .line 83
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->buf:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_0

    .line 84
    iget v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->bufSize:I

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->buf:Ljava/nio/ByteBuffer;

    .line 86
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->buf:Ljava/nio/ByteBuffer;

    int-to-byte v3, p1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 88
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->bufSize:I

    if-lt v2, v3, :cond_1

    .line 89
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->sendData(Z)V

    .line 91
    :cond_1
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->time:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->time:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 77
    .end local v0    # "startTime":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized write([BII)V
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    const-string v2, "b"

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    if-ltz p2, :cond_0

    array-length v2, p1

    if-gt p2, v2, :cond_0

    if-ltz p3, :cond_0

    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_0

    add-int v2, p2, p3

    if-gez v2, :cond_1

    .line 99
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid bounds [data.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", offset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 103
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->checkClosed(Ljava/io/DataInput;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    if-nez p3, :cond_2

    .line 136
    :goto_0
    monitor-exit p0

    return-void

    .line 108
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 110
    .local v0, "startTime":J
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->buf:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_4

    .line 112
    iget v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->bufSize:I

    if-lt p3, v2, :cond_3

    .line 113
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->buf:Ljava/nio/ByteBuffer;

    .line 115
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->sendData(Z)V

    goto :goto_0

    .line 120
    :cond_3
    iget v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->bufSize:I

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->buf:Ljava/nio/ByteBuffer;

    .line 123
    :cond_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ge v2, p3, :cond_5

    .line 125
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, p3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->buf:Ljava/nio/ByteBuffer;

    .line 127
    :cond_5
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le p3, v2, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expects write data size less or equal then remaining buffer capacity [len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", buf.remaining="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 130
    :cond_6
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 132
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->bufSize:I

    if-lt v2, v3, :cond_7

    .line 133
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->sendData(Z)V

    .line 135
    :cond_7
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->time:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->time:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
