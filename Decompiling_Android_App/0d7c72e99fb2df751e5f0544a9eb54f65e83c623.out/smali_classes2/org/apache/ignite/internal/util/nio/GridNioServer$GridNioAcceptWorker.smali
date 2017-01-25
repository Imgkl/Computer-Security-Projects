.class Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "GridNioServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/nio/GridNioServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridNioAcceptWorker"
.end annotation


# instance fields
.field private selector:Ljava/nio/channels/Selector;

.field final synthetic this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;


# direct methods
.method protected constructor <init>(Lorg/apache/ignite/internal/util/nio/GridNioServer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;Ljava/nio/channels/Selector;)V
    .locals 0
    .param p1    # Lorg/apache/ignite/internal/util/nio/GridNioServer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "gridName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p5, "selector"    # Ljava/nio/channels/Selector;

    .prologue
    .line 1601
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.GridNioAcceptWorker;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    .line 1602
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 1604
    iput-object p5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->selector:Ljava/nio/channels/Selector;

    .line 1605
    return-void
.end method

.method private accept()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1643
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.GridNioAcceptWorker;"
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$1500(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1645
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->selector:Ljava/nio/channels/Selector;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/Selector;->select(J)I

    move-result v1

    if-lez v1, :cond_0

    .line 1647
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->processSelectedKeys(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1651
    :catch_0
    move-exception v0

    .line 1652
    .local v0, "e":Ljava/nio/channels/ClosedByInterruptException;
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1653
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing selector due to thread interruption [srvr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", err="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/channels/ClosedByInterruptException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1663
    :cond_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->closeSelector()V

    .line 1665
    .end local v0    # "e":Ljava/nio/channels/ClosedByInterruptException;
    :goto_1
    return-void

    .line 1663
    :cond_2
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->closeSelector()V

    goto :goto_1

    .line 1656
    :catch_1
    move-exception v0

    .line 1657
    .local v0, "e":Ljava/nio/channels/ClosedSelectorException;
    :try_start_2
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selector got closed while active: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1663
    .end local v0    # "e":Ljava/nio/channels/ClosedSelectorException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->closeSelector()V

    throw v1

    .line 1659
    :catch_2
    move-exception v0

    .line 1660
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to accept connection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private addRegistrationReq(Ljava/nio/channels/SocketChannel;)V
    .locals 2
    .param p1, "sockCh"    # Ljava/nio/channels/SocketChannel;

    .prologue
    .line 1737
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.GridNioAcceptWorker;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    new-instance v1, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    invoke-direct {v1, p1}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;-><init>(Ljava/nio/channels/SocketChannel;)V

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$2800(Lorg/apache/ignite/internal/util/nio/GridNioServer;Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)V

    .line 1738
    return-void
.end method

.method private closeSelector()V
    .locals 4

    .prologue
    .line 1671
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.GridNioAcceptWorker;"
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1672
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1673
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Closing all listening sockets."

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1676
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 1677
    .local v1, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    goto :goto_0

    .line 1679
    .end local v1    # "key":Ljava/nio/channels/SelectionKey;
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1680
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Closing NIO selector."

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1682
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->selector:Ljava/nio/channels/Selector;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/nio/channels/Selector;Lorg/apache/ignite/IgniteLogger;)V

    .line 1684
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private processSelectedKeys(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1693
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.GridNioAcceptWorker;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1694
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Processing keys in accept worker: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1696
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1697
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 1699
    .local v1, "key":Ljava/nio/channels/SelectionKey;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1702
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1705
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1708
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/ServerSocketChannel;

    .line 1710
    .local v3, "srvrCh":Ljava/nio/channels/ServerSocketChannel;
    invoke-virtual {v3}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v2

    .line 1712
    .local v2, "sockCh":Ljava/nio/channels/SocketChannel;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 1713
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v5}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$2500(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 1714
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 1716
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v4}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$2600(Lorg/apache/ignite/internal/util/nio/GridNioServer;)I

    move-result v4

    if-lez v4, :cond_2

    .line 1717
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v5}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$2600(Lorg/apache/ignite/internal/util/nio/GridNioServer;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 1719
    :cond_2
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v4}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$2700(Lorg/apache/ignite/internal/util/nio/GridNioServer;)I

    move-result v4

    if-lez v4, :cond_3

    .line 1720
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v5}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$2700(Lorg/apache/ignite/internal/util/nio/GridNioServer;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 1722
    :cond_3
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1723
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Accepted new client connection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1725
    :cond_4
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->addRegistrationReq(Ljava/nio/channels/SocketChannel;)V

    goto/16 :goto_0

    .line 1728
    .end local v1    # "key":Ljava/nio/channels/SelectionKey;
    .end local v2    # "sockCh":Ljava/nio/channels/SocketChannel;
    .end local v3    # "srvrCh":Ljava/nio/channels/ServerSocketChannel;
    :cond_5
    return-void
.end method


# virtual methods
.method protected body()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 1610
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.GridNioAcceptWorker;"
    const/4 v1, 0x0

    .line 1612
    .local v1, "reset":Z
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$1500(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 1614
    if-eqz v1, :cond_1

    .line 1615
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$2400(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$1400(Lorg/apache/ignite/internal/util/nio/GridNioServer;Ljava/net/SocketAddress;)Ljava/nio/channels/Selector;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->selector:Ljava/nio/channels/Selector;

    .line 1617
    :cond_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->accept()V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1619
    :catch_0
    move-exception v0

    .line 1620
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1621
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Failed to accept remote connection (will wait for 2000ms)."

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1624
    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1626
    const/4 v1, 0x1

    goto :goto_0

    .line 1632
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_2
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->closeSelector()V

    .line 1634
    return-void

    .line 1632
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioServer$GridNioAcceptWorker;->closeSelector()V

    throw v2
.end method
