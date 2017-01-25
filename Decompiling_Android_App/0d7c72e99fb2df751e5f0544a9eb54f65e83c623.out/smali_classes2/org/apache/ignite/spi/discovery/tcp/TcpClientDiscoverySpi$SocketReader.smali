.class Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;
.super Lorg/apache/ignite/spi/IgniteSpiThread;
.source "TcpClientDiscoverySpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketReader"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final msgWrk:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;

.field private final nodeId:Ljava/util/UUID;

.field final synthetic this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 683
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;Ljava/util/UUID;Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;)V
    .locals 3
    .param p2, "nodeId"    # Ljava/util/UUID;
    .param p3, "msgWrk"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;

    .prologue
    .line 694
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    .line 695
    invoke-static {p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$1000(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/Ignite;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tcp-client-disco-sock-reader"

    iget-object v2, p1, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/spi/IgniteSpiThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 697
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 698
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 700
    :cond_1
    iput-object p2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    .line 701
    iput-object p3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->msgWrk:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;

    .line 702
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;)Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;

    .prologue
    .line 683
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->msgWrk:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;

    return-object v0
.end method


# virtual methods
.method addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    .locals 1
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    .prologue
    .line 807
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 809
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->msgWrk:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 810
    return-void
.end method

.method protected body()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    .line 713
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v9}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$300(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/net/Socket;

    move-result-object v8

    .line 715
    .local v8, "sock0":Ljava/net/Socket;
    if-nez v8, :cond_1

    .line 716
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v9, v9, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 717
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v9, v9, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v10, "Failed to start socket reader, node is already disconnected."

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 725
    .local v5, "in":Ljava/io/InputStream;
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 726
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 728
    :goto_1
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->isInterrupted()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-nez v9, :cond_b

    .line 730
    :try_start_1
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v9, v9, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-interface {v9, v5, v10}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal(Ljava/io/InputStream;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    .line 732
    .local v7, "msg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    invoke-virtual {v7, v9}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->senderNodeId(Ljava/util/UUID;)V

    .line 734
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v9, v9, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 735
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v9, v9, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Message has been received: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 737
    :cond_2
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v9, v9, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v9, v7}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onMessageReceived(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 739
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v9}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$1100(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_6

    .line 740
    const/4 v4, 0x0

    .line 742
    .local v4, "err":Lorg/apache/ignite/spi/IgniteSpiException;
    instance-of v9, v7, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDuplicateIdMessage;

    if-eqz v9, :cond_4

    .line 743
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    move-object v0, v7

    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDuplicateIdMessage;

    move-object v9, v0

    invoke-virtual {v10, v9}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->duplicateIdError(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDuplicateIdMessage;)Lorg/apache/ignite/spi/IgniteSpiException;

    move-result-object v4

    .line 749
    :cond_3
    :goto_2
    if-eqz v4, :cond_6

    .line 750
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v9, v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$1202(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;Lorg/apache/ignite/spi/IgniteSpiException;)Lorg/apache/ignite/spi/IgniteSpiException;

    .line 752
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v9}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$1100(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 788
    invoke-static {v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 790
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->msgWrk:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;

    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 793
    :try_start_2
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->msgWrk:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;

    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;)V
    :try_end_2
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_2 .. :try_end_2} :catch_5

    .line 799
    :goto_3
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v9, v14}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$302(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;Ljava/net/Socket;)Ljava/net/Socket;

    goto/16 :goto_0

    .line 744
    :cond_4
    :try_start_3
    instance-of v9, v7, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAuthFailedMessage;

    if-eqz v9, :cond_5

    .line 745
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    move-object v0, v7

    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAuthFailedMessage;

    move-object v9, v0

    invoke-virtual {v10, v9}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->authenticationFailedError(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAuthFailedMessage;)Lorg/apache/ignite/spi/IgniteSpiException;

    move-result-object v4

    goto :goto_2

    .line 746
    :cond_5
    instance-of v9, v7, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCheckFailedMessage;

    if-eqz v9, :cond_3

    .line 747
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    move-object v0, v7

    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCheckFailedMessage;

    move-object v9, v0

    invoke-virtual {v10, v9}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->checkFailedError(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCheckFailedMessage;)Lorg/apache/ignite/spi/IgniteSpiException;

    move-result-object v4

    goto :goto_2

    .line 758
    .end local v4    # "err":Lorg/apache/ignite/spi/IgniteSpiException;
    :cond_6
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->msgWrk:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;

    invoke-virtual {v9, v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 760
    .end local v7    # "msg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    :catch_0
    move-exception v3

    .line 761
    .local v3, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_4
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v9, v9, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 762
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v9, v9, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to read message [sock="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "locNodeId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v11}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$1300(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", rmtNodeId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 765
    :cond_7
    const-class v9, Ljava/io/IOException;

    invoke-static {v3, v9}, Lorg/apache/ignite/internal/util/typedef/X;->cause(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;

    move-result-object v6

    check-cast v6, Ljava/io/IOException;

    .line 767
    .local v6, "ioEx":Ljava/io/IOException;
    if-eqz v6, :cond_9

    .line 768
    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 782
    .end local v3    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "ioEx":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 783
    .local v3, "e":Ljava/io/IOException;
    :try_start_5
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v9, v9, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 784
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v9, v9, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Connection failed [sock="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", locNodeId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v11}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$1500(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", rmtNodeId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 788
    :cond_8
    invoke-static {v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 790
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->msgWrk:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;

    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 793
    :try_start_6
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->msgWrk:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;

    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;)V
    :try_end_6
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_6 .. :try_end_6} :catch_3

    .line 799
    :goto_4
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v9, v14}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$302(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;Ljava/net/Socket;)Ljava/net/Socket;

    goto/16 :goto_0

    .line 770
    .local v3, "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "ioEx":Ljava/io/IOException;
    :cond_9
    :try_start_7
    const-class v9, Ljava/lang/ClassNotFoundException;

    invoke-static {v3, v9}, Lorg/apache/ignite/internal/util/typedef/X;->cause(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassNotFoundException;

    .line 772
    .local v2, "clsNotFoundEx":Ljava/lang/ClassNotFoundException;
    if-eqz v2, :cond_a

    .line 773
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v9, v9, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to read message due to ClassNotFoundException (make sure same versions of all classes are available on all nodes) [rmtNodeId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", err="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5d

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 788
    .end local v2    # "clsNotFoundEx":Ljava/lang/ClassNotFoundException;
    .end local v3    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "ioEx":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    invoke-static {v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 790
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->msgWrk:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;

    invoke-static {v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 793
    :try_start_8
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->msgWrk:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;

    invoke-static {v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;)V
    :try_end_8
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_8 .. :try_end_8} :catch_2

    .line 799
    :goto_5
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v10, v14}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$302(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;Ljava/net/Socket;)Ljava/net/Socket;

    throw v9

    .line 777
    .restart local v2    # "clsNotFoundEx":Ljava/lang/ClassNotFoundException;
    .restart local v3    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "ioEx":Ljava/io/IOException;
    :cond_a
    :try_start_9
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v9, v9, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to read message [sock="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", locNodeId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v11}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$1400(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", rmtNodeId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v3, v10}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 788
    .end local v2    # "clsNotFoundEx":Ljava/lang/ClassNotFoundException;
    .end local v3    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v6    # "ioEx":Ljava/io/IOException;
    :cond_b
    invoke-static {v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 790
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->msgWrk:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;

    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 793
    :try_start_a
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->msgWrk:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;

    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;)V
    :try_end_a
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_a .. :try_end_a} :catch_4

    .line 799
    :goto_6
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v9, v14}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$302(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;Ljava/net/Socket;)Ljava/net/Socket;

    goto/16 :goto_0

    .line 795
    .end local v5    # "in":Ljava/io/InputStream;
    :catch_2
    move-exception v10

    goto :goto_5

    .local v3, "e":Ljava/io/IOException;
    :catch_3
    move-exception v9

    goto/16 :goto_4

    .end local v3    # "e":Ljava/io/IOException;
    .restart local v5    # "in":Ljava/io/InputStream;
    :catch_4
    move-exception v9

    goto :goto_6

    .restart local v4    # "err":Lorg/apache/ignite/spi/IgniteSpiException;
    .restart local v7    # "msg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    :catch_5
    move-exception v9

    goto/16 :goto_3
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    .line 706
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/ignite/spi/IgniteSpiThread;->start()V

    .line 708
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->msgWrk:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    monitor-exit p0

    return-void

    .line 706
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
