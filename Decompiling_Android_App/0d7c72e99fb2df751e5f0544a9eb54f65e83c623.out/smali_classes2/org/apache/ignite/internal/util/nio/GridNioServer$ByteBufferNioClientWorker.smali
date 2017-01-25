.class Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;
.super Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;
.source "GridNioServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/nio/GridNioServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ByteBufferNioClientWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/nio/GridNioServer",
        "<TT;>.AbstractNioClientWorker;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final readBuf:Ljava/nio/ByteBuffer;

.field final synthetic this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 607
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/util/nio/GridNioServer;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V
    .locals 2
    .param p2, "idx"    # I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "gridName"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "log"    # Lorg/apache/ignite/IgniteLogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.ByteBufferNioClientWorker;"
    const/16 v1, 0x2000

    .line 619
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    .line 620
    invoke-direct/range {p0 .. p5}, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;-><init>(Lorg/apache/ignite/internal/util/nio/GridNioServer;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 622
    invoke-static {p1}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$300(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;->readBuf:Ljava/nio/ByteBuffer;

    .line 624
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;->readBuf:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$400(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 625
    return-void

    .line 622
    :cond_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected processRead(Ljava/nio/channels/SelectionKey;)V
    .locals 9
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.ByteBufferNioClientWorker;"
    const/4 v8, 0x0

    const/16 v7, 0x5d

    .line 634
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/ReadableByteChannel;

    .line 636
    .local v3, "sockCh":Ljava/nio/channels/ReadableByteChannel;
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    .line 639
    .local v2, "ses":Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;->readBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 642
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;->readBuf:Ljava/nio/ByteBuffer;

    invoke-interface {v3, v4}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 644
    .local v0, "cnt":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_2

    .line 645
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 646
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote client closed connection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 648
    :cond_0
    invoke-virtual {p0, v2, v8}, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;->close(Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;Lorg/apache/ignite/IgniteCheckedException;)Z

    .line 682
    :cond_1
    :goto_0
    return-void

    .line 652
    :cond_2
    if-eqz v0, :cond_1

    .line 655
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isTraceEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 656
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bytes received [sockCh="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cnt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->trace(Ljava/lang/String;)V

    .line 658
    :cond_3
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v4}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$500(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 659
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v4}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$500(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;->onBytesReceived(I)V

    .line 661
    :cond_4
    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->bytesReceived(I)V

    .line 665
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;->readBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 668
    :try_start_0
    sget-boolean v4, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;->$assertionsDisabled:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;->readBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    :catch_0
    move-exception v1

    .line 680
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {p0, v2, v1}, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;->close(Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;Lorg/apache/ignite/IgniteCheckedException;)Z

    goto :goto_0

    .line 670
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_5
    :try_start_1
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v4}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$600(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;->readBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2, v5}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->onMessageReceived(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V

    .line 672
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;->readBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-lez v4, :cond_1

    .line 673
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read buffer contains data after filter chain processing (will discard remaining bytes) [ses="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", remainingCnt="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;->readBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 676
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;->readBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected processWrite(Ljava/nio/channels/SelectionKey;)V
    .locals 9
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 691
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.ByteBufferNioClientWorker;"
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v5

    check-cast v5, Ljava/nio/channels/WritableByteChannel;

    .line 693
    .local v5, "sockCh":Ljava/nio/channels/WritableByteChannel;
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    .line 696
    .local v4, "ses":Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    :goto_0
    invoke-static {}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$700()I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->removeMeta(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 697
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v6, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->NIO_OPERATION:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->ordinal()I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->removeMeta(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    .line 700
    .local v3, "req":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;"
    if-nez v0, :cond_2

    .line 701
    sget-boolean v6, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-eqz v3, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 703
    :cond_0
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->pollFuture()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v3

    .end local v3    # "req":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;"
    check-cast v3, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    .line 705
    .restart local v3    # "req":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;"
    if-nez v3, :cond_1

    .line 706
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v6

    and-int/lit8 v6, v6, -0x5

    invoke-virtual {p1, v6}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 749
    :goto_1
    return-void

    .line 711
    :cond_1
    invoke-static {v3}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->access$800(Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 714
    :cond_2
    iget-object v6, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v6}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$900(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 715
    invoke-interface {v5, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 717
    .local v1, "cnt":I
    iget-object v6, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isTraceEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 718
    iget-object v6, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bytes sent [sockCh="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cnt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->trace(Ljava/lang/String;)V

    .line 720
    :cond_3
    iget-object v6, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v6}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$500(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 721
    iget-object v6, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v6}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$500(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

    move-result-object v6

    invoke-interface {v6, v1}, Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;->onBytesSent(I)V

    .line 723
    :cond_4
    invoke-virtual {v4, v1}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->bytesSent(I)V

    .line 735
    .end local v1    # "cnt":I
    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-lez v6, :cond_6

    .line 737
    invoke-static {}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$700()I

    move-result v6

    invoke-virtual {v4, v6, v0}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->addMeta(ILjava/lang/Object;)Ljava/lang/Object;

    .line 738
    sget-object v6, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->NIO_OPERATION:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->ordinal()I

    move-result v6

    invoke-virtual {v4, v6, v3}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->addMeta(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 728
    :cond_5
    const-wide/16 v6, 0x32

    :try_start_0
    invoke-static {v6, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 730
    :catch_0
    move-exception v2

    .line 731
    .local v2, "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Thread has been interrupted."

    invoke-direct {v6, v7, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 744
    .end local v2    # "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    :cond_6
    sget-boolean v6, Lorg/apache/ignite/internal/util/nio/GridNioServer$ByteBufferNioClientWorker;->$assertionsDisabled:Z

    if-nez v6, :cond_7

    if-nez v3, :cond_7

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 746
    :cond_7
    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->onDone()Z

    goto/16 :goto_0
.end method
