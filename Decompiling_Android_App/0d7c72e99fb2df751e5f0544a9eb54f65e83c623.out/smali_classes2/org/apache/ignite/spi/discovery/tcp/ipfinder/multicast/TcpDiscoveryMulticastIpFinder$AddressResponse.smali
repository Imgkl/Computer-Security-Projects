.class Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressResponse;
.super Ljava/lang/Object;
.source "TcpDiscoveryMulticastIpFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddressResponse"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final MAX_DATA_LENGTH:I = 0x10000


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

.field private data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 528
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressResponse;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p1, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    const/high16 v5, 0x10000

    const/4 v4, 0x0

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressResponse;->addrs:Ljava/util/Collection;

    .line 545
    invoke-static {}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->access$300()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v0

    .line 546
    .local v0, "addrsData":[B
    sget-object v1, Lorg/apache/ignite/internal/util/typedef/internal/U;->IGNITE_HEADER:[B

    array-length v1, v1

    array-length v2, v0

    add-int/2addr v1, v2

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressResponse;->data:[B

    .line 548
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressResponse;->data:[B

    array-length v1, v1

    if-le v1, v5, :cond_0

    .line 549
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too long data packet [size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressResponse;->data:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", max="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 551
    :cond_0
    sget-object v1, Lorg/apache/ignite/internal/util/typedef/internal/U;->IGNITE_HEADER:[B

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressResponse;->data:[B

    sget-object v3, Lorg/apache/ignite/internal/util/typedef/internal/U;->IGNITE_HEADER:[B

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 552
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressResponse;->data:[B

    const/4 v2, 0x4

    array-length v3, v0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 553
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collection;Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Collection;
    .param p2, "x1"    # Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressResponse;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method private constructor <init>([B)V
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressResponse;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/util/typedef/internal/U;->IGNITE_HEADER:[B

    sget-object v1, Lorg/apache/ignite/internal/util/typedef/internal/U;->IGNITE_HEADER:[B

    array-length v1, v1

    invoke-static {v0, v2, p1, v2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesEqual([BI[BII)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 562
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressResponse;->data:[B

    .line 564
    invoke-static {}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->access$300()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/util/typedef/internal/U;->IGNITE_HEADER:[B

    array-length v1, v1

    array-length v2, p1

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressResponse;->addrs:Ljava/util/Collection;

    .line 565
    return-void
.end method

.method synthetic constructor <init>([BLorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$1;)V
    .locals 0
    .param p1, "x0"    # [B
    .param p2, "x1"    # Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressResponse;-><init>([B)V

    return-void
.end method


# virtual methods
.method public addresses()Ljava/util/Collection;
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
    .line 578
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressResponse;->addrs:Ljava/util/Collection;

    return-object v0
.end method

.method data()[B
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressResponse;->data:[B

    return-object v0
.end method
