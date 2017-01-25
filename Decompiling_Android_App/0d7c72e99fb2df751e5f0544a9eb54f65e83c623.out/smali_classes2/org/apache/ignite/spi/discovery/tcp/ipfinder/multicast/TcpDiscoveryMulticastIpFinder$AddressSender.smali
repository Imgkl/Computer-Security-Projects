.class Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;
.super Lorg/apache/ignite/spi/IgniteSpiThread;
.source "TcpDiscoveryMulticastIpFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddressSender"
.end annotation


# instance fields
.field private final addrs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final mcastGrp:Ljava/net/InetAddress;

.field private sock:Ljava/net/MulticastSocket;

.field private final sockItf:Ljava/net/InetAddress;

.field final synthetic this$0:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/util/Collection;)V
    .locals 3
    .param p2, "mcastGrp"    # Ljava/net/InetAddress;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "sockItf"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 643
    .local p4, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;

    .line 644
    invoke-static {p1}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->access$400(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;)Lorg/apache/ignite/Ignite;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const-string v1, "tcp-disco-multicast-addr-sender"

    invoke-static {p1}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->access$500(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/spi/IgniteSpiThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 645
    iput-object p2, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;->mcastGrp:Ljava/net/InetAddress;

    .line 646
    iput-object p4, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;->addrs:Ljava/util/Collection;

    .line 647
    iput-object p3, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;->sockItf:Ljava/net/InetAddress;

    .line 649
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;->createSocket()Ljava/net/MulticastSocket;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;->sock:Ljava/net/MulticastSocket;

    .line 650
    return-void

    .line 644
    :cond_0
    invoke-static {p1}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->access$400(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;)Lorg/apache/ignite/Ignite;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/Ignite;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/util/Collection;Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;
    .param p2, "x1"    # Ljava/net/InetAddress;
    .param p3, "x2"    # Ljava/net/InetAddress;
    .param p4, "x3"    # Ljava/util/Collection;
    .param p5, "x4"    # Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 622
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;-><init>(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/util/Collection;)V

    return-void
.end method

.method private createSocket()Ljava/net/MulticastSocket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 659
    new-instance v0, Ljava/net/MulticastSocket;

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;

    invoke-static {v1}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->access$700(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(I)V

    .line 661
    .local v0, "sock":Ljava/net/MulticastSocket;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->setLoopbackMode(Z)V

    .line 663
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;->sockItf:Ljava/net/InetAddress;

    if-eqz v1, :cond_0

    .line 664
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;->sockItf:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->setInterface(Ljava/net/InetAddress;)V

    .line 666
    :cond_0
    invoke-virtual {v0}, Ljava/net/MulticastSocket;->getLoopbackMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 667
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;

    invoke-static {v1}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->access$500(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    const-string v2, "Loopback mode is disabled which prevents nodes on the same machine from discovering each other."

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 670
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;->mcastGrp:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 672
    return-object v0
.end method


# virtual methods
.method protected body()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 680
    :try_start_0
    new-instance v3, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressResponse;

    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;->addrs:Ljava/util/Collection;

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressResponse;-><init>(Ljava/util/Collection;Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$1;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    .local v3, "res":Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressResponse;
    invoke-static {}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->access$900()[B

    move-result-object v5

    array-length v5, v5

    new-array v2, v5, [B

    .line 690
    .local v2, "reqData":[B
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v5, v2

    invoke-direct {v1, v2, v5}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 692
    .local v1, "pckt":Ljava/net/DatagramPacket;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_1

    .line 696
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 697
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 698
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 738
    .end local v1    # "pckt":Ljava/net/DatagramPacket;
    .end local v2    # "reqData":[B
    .end local v3    # "res":Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressResponse;
    :cond_1
    :goto_1
    return-void

    .line 682
    :catch_0
    move-exception v0

    .line 683
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;

    invoke-static {v5}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->access$500(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    const-string v6, "Failed to prepare multicast message."

    invoke-static {v5, v6, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 700
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "pckt":Ljava/net/DatagramPacket;
    .restart local v2    # "reqData":[B
    .restart local v3    # "res":Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressResponse;
    :cond_2
    :try_start_3
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;->sock:Ljava/net/MulticastSocket;

    .line 702
    .local v4, "sock":Ljava/net/MulticastSocket;
    if-nez v4, :cond_3

    .line 703
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;->createSocket()Ljava/net/MulticastSocket;

    move-result-object v4

    .line 704
    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 706
    :try_start_4
    invoke-virtual {v4, v1}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 708
    sget-object v5, Lorg/apache/ignite/internal/util/typedef/internal/U;->IGNITE_HEADER:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lorg/apache/ignite/internal/util/typedef/internal/U;->IGNITE_HEADER:[B

    array-length v8, v8

    invoke-static {v5, v6, v2, v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesEqual([BI[BII)Z

    move-result v5

    if-nez v5, :cond_4

    .line 709
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;

    invoke-static {v5}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->access$500(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    const-string v6, "Failed to verify message header."

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 726
    .end local v4    # "sock":Ljava/net/MulticastSocket;
    :catch_1
    move-exception v0

    .line 727
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 728
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;

    invoke-static {v5}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->access$500(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    const-string v6, "Failed to send/receive address message (will try to reconnect)."

    invoke-static {v5, v6, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 730
    monitor-enter p0

    .line 731
    :try_start_5
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;->sock:Ljava/net/MulticastSocket;

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/net/DatagramSocket;)V

    .line 733
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;->sock:Ljava/net/MulticastSocket;

    .line 734
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v5

    .line 704
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v5
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 715
    .restart local v4    # "sock":Ljava/net/MulticastSocket;
    :cond_4
    :try_start_8
    new-instance v5, Ljava/net/DatagramPacket;

    invoke-virtual {v3}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressResponse;->data()[B

    move-result-object v6

    invoke-virtual {v3}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressResponse;->data()[B

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v4, v5}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0

    .line 717
    :catch_2
    move-exception v0

    .line 718
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Operation not permitted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 719
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;

    invoke-static {v5}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->access$500(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 720
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;

    invoke-static {v5}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->access$500(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got \'operation not permitted\' error, ignoring: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 723
    :cond_5
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
.end method

.method protected cleanup()V
    .locals 1

    .prologue
    .line 753
    monitor-enter p0

    .line 754
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;->sock:Ljava/net/MulticastSocket;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/net/DatagramSocket;)V

    .line 756
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;->sock:Ljava/net/MulticastSocket;

    .line 757
    monitor-exit p0

    .line 758
    return-void

    .line 757
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public interrupt()V
    .locals 1

    .prologue
    .line 742
    invoke-super {p0}, Lorg/apache/ignite/spi/IgniteSpiThread;->interrupt()V

    .line 744
    monitor-enter p0

    .line 745
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;->sock:Ljava/net/MulticastSocket;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/net/DatagramSocket;)V

    .line 747
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;->sock:Ljava/net/MulticastSocket;

    .line 748
    monitor-exit p0

    .line 749
    return-void

    .line 748
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
