.class Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressReceiver;
.super Lorg/apache/ignite/spi/IgniteSpiThread;
.source "TcpDiscoveryMulticastIpFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddressReceiver"
.end annotation


# instance fields
.field private addrs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final mcastAddr:Ljava/net/InetAddress;

.field private final sockAddr:Ljava/net/InetAddress;

.field final synthetic this$0:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;Ljava/net/InetAddress;Ljava/net/InetAddress;)V
    .locals 3
    .param p2, "mcastAddr"    # Ljava/net/InetAddress;
    .param p3, "sockAddr"    # Ljava/net/InetAddress;

    .prologue
    .line 599
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressReceiver;->this$0:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;

    .line 600
    invoke-static {p1}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->access$400(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;)Lorg/apache/ignite/Ignite;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const-string v1, "tcp-disco-multicast-addr-rcvr"

    invoke-static {p1}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->access$500(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/spi/IgniteSpiThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 601
    iput-object p2, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressReceiver;->mcastAddr:Ljava/net/InetAddress;

    .line 602
    iput-object p3, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressReceiver;->sockAddr:Ljava/net/InetAddress;

    .line 603
    return-void

    .line 600
    :cond_0
    invoke-static {p1}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->access$400(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;)Lorg/apache/ignite/Ignite;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/Ignite;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;Ljava/net/InetAddress;Ljava/net/InetAddress;Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;
    .param p2, "x1"    # Ljava/net/InetAddress;
    .param p3, "x2"    # Ljava/net/InetAddress;
    .param p4, "x3"    # Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$1;

    .prologue
    .line 585
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressReceiver;-><init>(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;Ljava/net/InetAddress;Ljava/net/InetAddress;)V

    return-void
.end method


# virtual methods
.method addresses()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 614
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressReceiver;->addrs:Ljava/util/Collection;

    return-object v0
.end method

.method protected body()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 607
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressReceiver;->this$0:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressReceiver;->mcastAddr:Ljava/net/InetAddress;

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressReceiver;->sockAddr:Ljava/net/InetAddress;

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->access$600(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;Ljava/net/InetAddress;Ljava/net/InetAddress;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressReceiver;->addrs:Ljava/util/Collection;

    .line 608
    return-void
.end method
