.class Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;
.super Ljava/io/FilterOutputStream;
.source "GridTcpCommunicationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnsafeBufferedOutputStream"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final buf:[B

.field private cnt:I

.field private volatile flushTimeout:J

.field private lastAdjusted:J

.field private volatile lastFlushed:J

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private msgCnt:I

.field private size:I

.field final synthetic this$0:Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;

.field private totalCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 236
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;Ljava/io/OutputStream;)V
    .locals 1
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 271
    const/16 v0, 0x2000

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;-><init>(Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;Ljava/io/OutputStream;I)V

    .line 272
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;Ljava/io/OutputStream;I)V
    .locals 2
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "size"    # I

    .prologue
    .line 282
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->this$0:Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;

    .line 283
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 253
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 256
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lastFlushed:J

    .line 262
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lastAdjusted:J

    .line 285
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 287
    :cond_0
    iput p3, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->size:I

    .line 288
    if-lez p3, :cond_1

    new-array v0, p3, [B

    :goto_0
    iput-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->buf:[B

    .line 289
    return-void

    .line 288
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private adjustBufferIfNeeded()V
    .locals 4

    .prologue
    .line 379
    sget-boolean v2, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 380
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->buf:[B

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 382
    :cond_1
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->flushTimeout:J

    .line 384
    .local v0, "flushTimeout0":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 385
    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->adjustBufferLocked(J)V

    .line 386
    :cond_2
    return-void
.end method

.method private adjustBufferLocked(J)V
    .locals 7
    .param p1, "timeout"    # J

    .prologue
    const/4 v6, 0x0

    .line 443
    sget-boolean v2, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 444
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 446
    :cond_1
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    .line 448
    .local v0, "time":J
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lastAdjusted:J

    add-long/2addr v2, p1

    cmp-long v2, v2, v0

    if-gez v2, :cond_3

    .line 449
    iget v2, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->msgCnt:I

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->this$0:Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;

    # getter for: Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->minBufferedMsgCnt:I
    invoke-static {v3}, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->access$000(Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;)I

    move-result v3

    if-gt v2, v3, :cond_4

    .line 450
    iput v6, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->size:I

    .line 458
    :cond_2
    :goto_0
    iput v6, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->msgCnt:I

    .line 459
    iput v6, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->totalCnt:I

    .line 461
    iput-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lastAdjusted:J

    .line 463
    :cond_3
    return-void

    .line 452
    :cond_4
    iget v2, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->totalCnt:I

    int-to-double v2, v2

    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->this$0:Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;

    # getter for: Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->bufSizeRatio:D
    invoke-static {v4}, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->access$100(Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->size:I

    .line 454
    iget v2, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->size:I

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->buf:[B

    array-length v3, v3

    if-le v2, v3, :cond_2

    .line 455
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->buf:[B

    array-length v2, v2

    iput v2, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->size:I

    goto :goto_0
.end method

.method private flushIfNeeded()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    sget-boolean v2, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 367
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->buf:[B

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 369
    :cond_1
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->flushTimeout:J

    .line 371
    .local v0, "flushTimeout0":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 372
    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->flushOnTimeoutLocked(J)V

    .line 373
    :cond_2
    return-void
.end method

.method private flushLocked()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 469
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 471
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->buf:[B

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->cnt:I

    if-lez v0, :cond_1

    .line 472
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->buf:[B

    iget v2, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->cnt:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 474
    iput v3, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->cnt:I

    .line 477
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 479
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lastFlushed:J

    .line 480
    return-void
.end method

.method private flushOnTimeoutLocked(J)V
    .locals 5
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 428
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 431
    :cond_1
    iget v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->cnt:I

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lastFlushed:J

    add-long/2addr v0, p1

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 437
    :cond_2
    :goto_0
    return-void

    .line 434
    :cond_3
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->flushLocked()V

    .line 436
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->adjustBufferLocked(J)V

    goto :goto_0
.end method

.method private messageToBuffer([BII[BI)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "resBuf"    # [B
    .param p5, "resOff"    # I

    .prologue
    .line 519
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    array-length v0, p1

    if-eq v0, p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 520
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 521
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    array-length v0, p4

    add-int v1, p5, p3

    add-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 523
    :cond_2
    invoke-static {p3, p4, p5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    .line 525
    add-int/lit8 v0, p5, 0x4

    invoke-static {p1, p2, p4, v0, p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->arrayCopy([BI[BII)I

    .line 526
    return-void
.end method

.method private messageToBuffer0([BII[BI)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "resBuf"    # [B
    .param p5, "resOff"    # I

    .prologue
    .line 536
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 537
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    array-length v0, p4

    add-int v1, p5, p3

    if-ge v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 539
    :cond_1
    invoke-static {p1, p2, p4, p5, p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->arrayCopy([BI[BII)I

    .line 540
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 487
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->flushLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 491
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 497
    return-void

    .line 494
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 490
    :catchall_1
    move-exception v0

    .line 491
    :try_start_2
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 494
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 393
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->flushLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 398
    return-void

    .line 396
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public flushOnTimeout(J)V
    .locals 5
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->buf:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 406
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 409
    :cond_1
    iput-wide p1, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->flushTimeout:J

    .line 411
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lastFlushed:J

    add-long/2addr v0, p1

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_3

    .line 420
    :cond_2
    :goto_0
    return-void

    .line 415
    :cond_3
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->flushOnTimeoutLocked(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public forceClose()V
    .locals 1

    .prologue
    .line 504
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :goto_0
    return-void

    .line 506
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 547
    :try_start_0
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 550
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public write([BII)V
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
    .line 298
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 299
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 302
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->buf:[B

    if-nez v0, :cond_2

    .line 303
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 306
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 360
    :goto_0
    return-void

    .line 309
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 316
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 319
    :try_start_1
    iget v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->msgCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->msgCnt:I

    .line 320
    iget v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->totalCnt:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->totalCnt:I

    .line 322
    iget v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->size:I

    if-lt p3, v0, :cond_3

    .line 323
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->flushLocked()V

    .line 325
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 327
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lastFlushed:J

    .line 329
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->adjustBufferIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 358
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 334
    :cond_3
    :try_start_2
    iget v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->cnt:I

    add-int/2addr v0, p3

    iget v1, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->size:I

    if-le v0, v1, :cond_5

    .line 335
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->flushLocked()V

    .line 337
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->buf:[B

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->messageToBuffer0([BII[BI)V

    .line 339
    iput p3, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->cnt:I

    .line 341
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->cnt:I

    iget v1, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->size:I

    if-lt v0, v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 358
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 343
    :cond_4
    :try_start_3
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->adjustBufferIfNeeded()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 358
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 348
    :cond_5
    const/4 v2, 0x0

    :try_start_4
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->buf:[B

    iget v5, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->cnt:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->messageToBuffer0([BII[BI)V

    .line 350
    iget v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->cnt:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->cnt:I

    .line 352
    iget v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->cnt:I

    iget v1, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->size:I

    if-ne v0, v1, :cond_6

    .line 353
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->flushLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 358
    :goto_1
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 355
    :cond_6
    :try_start_5
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->flushIfNeeded()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method
