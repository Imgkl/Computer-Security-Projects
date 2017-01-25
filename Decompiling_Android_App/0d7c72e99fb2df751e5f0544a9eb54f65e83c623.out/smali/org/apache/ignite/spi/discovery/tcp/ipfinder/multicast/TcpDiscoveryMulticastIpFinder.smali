.class public Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;
.super Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;
.source "TcpDiscoveryMulticastIpFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$1;,
        Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;,
        Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressReceiver;,
        Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressResponse;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DFLT_ADDR_REQ_ATTEMPTS:I = 0x2

.field public static final DFLT_MCAST_GROUP:Ljava/lang/String; = "228.1.2.4"

.field public static final DFLT_MCAST_PORT:I = 0xb928

.field public static final DFLT_RES_WAIT_TIME:I = 0x1f4

.field private static final MSG_ADDR_REQ_DATA:[B

.field private static final marsh:Lorg/apache/ignite/marshaller/Marshaller;


# instance fields
.field private addrReqAttempts:I

.field private addrSnds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private ignite:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation

    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field

.field private locAddr:Ljava/lang/String;

.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field

.field private mcastGrp:Ljava/lang/String;

.field private mcastPort:I

.field private resWaitTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->$assertionsDisabled:Z

    .line 77
    sget-object v0, Lorg/apache/ignite/internal/util/typedef/internal/U;->IGNITE_HEADER:[B

    sput-object v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->MSG_ADDR_REQ_DATA:[B

    .line 80
    new-instance v0, Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;

    invoke-direct {v0}, Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;-><init>()V

    sput-object v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;-><init>()V

    .line 92
    const-string v0, "228.1.2.4"

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->mcastGrp:Ljava/lang/String;

    .line 95
    const v0, 0xb928

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->mcastPort:I

    .line 98
    const/16 v0, 0x1f4

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->resWaitTime:I

    .line 101
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->addrReqAttempts:I

    .line 114
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->setShared(Z)V

    .line 115
    return-void
.end method

.method static synthetic access$300()Lorg/apache/ignite/marshaller/Marshaller;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;Ljava/net/InetAddress;Ljava/net/InetAddress;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;
    .param p1, "x1"    # Ljava/net/InetAddress;
    .param p2, "x2"    # Ljava/net/InetAddress;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->requestAddresses(Ljava/net/InetAddress;Ljava/net/InetAddress;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;

    .prologue
    .line 63
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->mcastPort:I

    return v0
.end method

.method static synthetic access$900()[B
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->MSG_ADDR_REQ_DATA:[B

    return-object v0
.end method

.method private handleNetworkError(Ljava/io/IOException;)Z
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 515
    const-string v0, "Network is unreachable"

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isMacOs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Multicast does not work on Mac OS JVM loopback address (configure external IP address for \'localHost\' configuration property)"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 519
    const/4 v0, 0x0

    .line 522
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private requestAddresses(Ljava/net/InetAddress;Ljava/net/InetAddress;)Ljava/util/Collection;
    .locals 22
    .param p1, "mcastAddr"    # Ljava/net/InetAddress;
    .param p2, "sockItf"    # Ljava/net/InetAddress;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 384
    .local v14, "rmtAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    :try_start_0
    new-instance v9, Ljava/net/DatagramPacket;

    sget-object v18, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->MSG_ADDR_REQ_DATA:[B

    sget-object v19, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->MSG_ADDR_REQ_DATA:[B

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->mcastPort:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p1

    move/from16 v3, v20

    invoke-direct {v9, v0, v1, v2, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 387
    .local v9, "reqPckt":Ljava/net/DatagramPacket;
    const/high16 v18, 0x10000

    move/from16 v0, v18

    new-array v12, v0, [B

    .line 389
    .local v12, "resData":[B
    new-instance v13, Ljava/net/DatagramPacket;

    array-length v0, v12

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-direct {v13, v12, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 391
    .local v13, "resPckt":Ljava/net/DatagramPacket;
    const/4 v15, 0x0

    .line 393
    .local v15, "sndError":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->addrReqAttempts:I

    move/from16 v18, v0
    :try_end_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v0, v18

    if-ge v7, v0, :cond_2

    .line 394
    const/16 v16, 0x0

    .line 397
    .local v16, "sock":Ljava/net/MulticastSocket;
    :try_start_1
    new-instance v17, Ljava/net/MulticastSocket;

    const/16 v18, 0x0

    invoke-direct/range {v17 .. v18}, Ljava/net/MulticastSocket;-><init>(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 400
    .end local v16    # "sock":Ljava/net/MulticastSocket;
    .local v17, "sock":Ljava/net/MulticastSocket;
    const/16 v18, 0x0

    :try_start_2
    invoke-virtual/range {v17 .. v18}, Ljava/net/MulticastSocket;->setLoopbackMode(Z)V

    .line 402
    if-eqz p2, :cond_0

    .line 403
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->setInterface(Ljava/net/InetAddress;)V

    .line 405
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->resWaitTime:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/net/MulticastSocket;->setSoTimeout(I)V

    .line 407
    sget-object v18, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->MSG_ADDR_REQ_DATA:[B

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/net/DatagramPacket;->setData([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 410
    :try_start_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 432
    :try_start_4
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->resWaitTime:I

    move/from16 v20, v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v10, v18, v20

    .line 435
    .local v10, "rcvEnd":J
    :goto_1
    :try_start_5
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v18

    cmp-long v18, v18, v10

    if-gez v18, :cond_1

    .line 436
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 438
    invoke-virtual {v13}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v5

    .line 440
    .local v5, "data":[B
    sget-object v18, Lorg/apache/ignite/internal/util/typedef/internal/U;->IGNITE_HEADER:[B

    const/16 v19, 0x0

    const/16 v20, 0x0

    sget-object v21, Lorg/apache/ignite/internal/util/typedef/internal/U;->IGNITE_HEADER:[B

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v5, v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesEqual([BI[BII)Z

    move-result v18

    if-nez v18, :cond_a

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    const-string v19, "Failed to verify message header."

    invoke-static/range {v18 .. v19}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 460
    .end local v5    # "data":[B
    :catch_0
    move-exception v8

    .line 461
    .local v8, "ignored":Ljava/net/SocketTimeoutException;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    const-string v19, "Address receive timeout."

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 469
    .end local v8    # "ignored":Ljava/net/SocketTimeoutException;
    :cond_1
    :try_start_7
    invoke-static/range {v17 .. v17}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/net/DatagramSocket;)V

    move-object/from16 v16, v17

    .line 472
    .end local v10    # "rcvEnd":J
    .end local v17    # "sock":Ljava/net/MulticastSocket;
    .restart local v16    # "sock":Ljava/net/MulticastSocket;
    :goto_2
    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_b

    .line 479
    .end local v16    # "sock":Ljava/net/MulticastSocket;
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Received nodes addresses: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 482
    :cond_3
    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_4

    if-eqz v15, :cond_4

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    const-string v19, "Failed to send multicast message (is multicast enabled on this node?)."

    invoke-static/range {v18 .. v19}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quietAndWarn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_7
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_7 .. :try_end_7} :catch_2

    .line 492
    .end local v7    # "i":I
    .end local v9    # "reqPckt":Ljava/net/DatagramPacket;
    .end local v12    # "resData":[B
    .end local v13    # "resPckt":Ljava/net/DatagramPacket;
    .end local v15    # "sndError":Z
    :cond_4
    :goto_4
    return-object v14

    .line 412
    .restart local v7    # "i":I
    .restart local v9    # "reqPckt":Ljava/net/DatagramPacket;
    .restart local v12    # "resData":[B
    .restart local v13    # "resPckt":Ljava/net/DatagramPacket;
    .restart local v15    # "sndError":Z
    .restart local v17    # "sock":Ljava/net/MulticastSocket;
    :catch_1
    move-exception v6

    .line 413
    .local v6, "e":Ljava/io/IOException;
    :try_start_8
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->handleNetworkError(Ljava/io/IOException;)Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v18

    if-nez v18, :cond_5

    .line 469
    :try_start_9
    invoke-static/range {v17 .. v17}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/net/DatagramSocket;)V
    :try_end_9
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3

    .line 487
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "i":I
    .end local v9    # "reqPckt":Ljava/net/DatagramPacket;
    .end local v12    # "resData":[B
    .end local v13    # "resPckt":Ljava/net/DatagramPacket;
    .end local v15    # "sndError":Z
    .end local v17    # "sock":Ljava/net/MulticastSocket;
    :catch_2
    move-exception v8

    .line 488
    .local v8, "ignored":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    const-string v19, "Got interrupted while sending address request."

    invoke-static/range {v18 .. v19}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 490
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->interrupt()V

    goto :goto_4

    .line 416
    .end local v8    # "ignored":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    .restart local v6    # "e":Ljava/io/IOException;
    .restart local v7    # "i":I
    .restart local v9    # "reqPckt":Ljava/net/DatagramPacket;
    .restart local v12    # "resData":[B
    .restart local v13    # "resPckt":Ljava/net/DatagramPacket;
    .restart local v15    # "sndError":Z
    .restart local v17    # "sock":Ljava/net/MulticastSocket;
    :cond_5
    :try_start_a
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->addrReqAttempts:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v7, v0, :cond_9

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to send multicast address request (will retry in 500 ms): "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 420
    :cond_6
    const-wide/16 v18, 0x1f4

    invoke-static/range {v18 .. v19}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 427
    :cond_7
    :goto_5
    const/4 v15, 0x1

    .line 469
    :try_start_b
    invoke-static/range {v17 .. v17}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/net/DatagramSocket;)V
    :try_end_b
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_b .. :try_end_b} :catch_2

    move-object/from16 v16, v17

    .line 393
    .end local v6    # "e":Ljava/io/IOException;
    .end local v17    # "sock":Ljava/net/MulticastSocket;
    .restart local v16    # "sock":Ljava/net/MulticastSocket;
    :cond_8
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 423
    .end local v16    # "sock":Ljava/net/MulticastSocket;
    .restart local v6    # "e":Ljava/io/IOException;
    .restart local v17    # "sock":Ljava/net/MulticastSocket;
    :cond_9
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to send multicast address request: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_5

    .line 465
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    move-object/from16 v16, v17

    .line 466
    .end local v17    # "sock":Ljava/net/MulticastSocket;
    .restart local v6    # "e":Ljava/io/IOException;
    .restart local v16    # "sock":Ljava/net/MulticastSocket;
    :goto_7
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    const-string v19, "Failed to request nodes addresses."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 469
    :try_start_e
    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/net/DatagramSocket;)V
    :try_end_e
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_2

    .line 449
    .end local v6    # "e":Ljava/io/IOException;
    .end local v16    # "sock":Ljava/net/MulticastSocket;
    .restart local v5    # "data":[B
    .restart local v10    # "rcvEnd":J
    .restart local v17    # "sock":Ljava/net/MulticastSocket;
    :cond_a
    :try_start_f
    new-instance v4, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressResponse;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v4, v5, v0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressResponse;-><init>([BLorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$1;)V
    :try_end_f
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 457
    .local v4, "addrRes":Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressResponse;
    :try_start_10
    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressResponse;->addresses()Ljava/util/Collection;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_1

    .line 469
    .end local v4    # "addrRes":Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressResponse;
    .end local v5    # "data":[B
    .end local v10    # "rcvEnd":J
    :catchall_0
    move-exception v18

    move-object/from16 v16, v17

    .end local v17    # "sock":Ljava/net/MulticastSocket;
    .restart local v16    # "sock":Ljava/net/MulticastSocket;
    :goto_8
    :try_start_11
    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/net/DatagramSocket;)V

    throw v18
    :try_end_11
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_11 .. :try_end_11} :catch_2

    .line 451
    .end local v16    # "sock":Ljava/net/MulticastSocket;
    .restart local v5    # "data":[B
    .restart local v10    # "rcvEnd":J
    .restart local v17    # "sock":Ljava/net/MulticastSocket;
    :catch_4
    move-exception v6

    .line 452
    .local v6, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    const-string v19, "Failed to deserialize multicast response."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v6, v1}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/net/SocketTimeoutException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_1

    .line 475
    .end local v5    # "data":[B
    .end local v6    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v10    # "rcvEnd":J
    .end local v17    # "sock":Ljava/net/MulticastSocket;
    .restart local v16    # "sock":Ljava/net/MulticastSocket;
    :cond_b
    :try_start_13
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->addrReqAttempts:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v7, v0, :cond_8

    .line 476
    const-wide/16 v18, 0xc8

    invoke-static/range {v18 .. v19}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V
    :try_end_13
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_13 .. :try_end_13} :catch_2

    goto/16 :goto_6

    .line 469
    :catchall_1
    move-exception v18

    goto :goto_8

    .line 465
    :catch_5
    move-exception v6

    goto :goto_7
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 498
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->addrSnds:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;

    .line 499
    .local v0, "addrSnd":Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    goto :goto_0

    .line 501
    .end local v0    # "addrSnd":Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->addrSnds:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;

    .line 502
    .restart local v0    # "addrSnd":Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    goto :goto_1

    .line 503
    .end local v0    # "addrSnd":Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;
    :cond_1
    return-void
.end method

.method public getAddressRequestAttempts()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->addrReqAttempts:I

    return v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->locAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getMulticastGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->mcastGrp:Ljava/lang/String;

    return-object v0
.end method

.method public getMulticastPort()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->mcastPort:I

    return v0
.end method

.method public getResponseWaitTime()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->resWaitTime:I

    return v0
.end method

.method public initializeLocalAddresses(Ljava/util/Collection;)V
    .locals 25
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
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 234
    .local p1, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    const-string v3, "IGNITE_OVERRIDE_MCAST_GRP"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 236
    .local v20, "overrideMcastGrp":Ljava/lang/String;
    if-eqz v20, :cond_0

    .line 237
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->mcastGrp:Ljava/lang/String;

    .line 239
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->mcastGrp:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 240
    new-instance v3, Lorg/apache/ignite/spi/IgniteSpiException;

    const-string v4, "Multicast IP address is not specified."

    invoke-direct {v3, v4}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 242
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->mcastPort:I

    if-ltz v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->mcastPort:I

    const v4, 0xffff

    if-le v3, v4, :cond_3

    .line 243
    :cond_2
    new-instance v3, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid multicast port: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->mcastPort:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 245
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->resWaitTime:I

    if-gtz v3, :cond_4

    .line 246
    new-instance v3, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid wait time, value greater than zero is expected: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->resWaitTime:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 248
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->addrReqAttempts:I

    if-gtz v3, :cond_5

    .line 249
    new-instance v3, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid number of address request attempts, value greater than zero is expected: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->addrReqAttempts:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 252
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->getRegisteredAddresses()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v4, "TcpDiscoveryMulticastIpFinder has no pre-configured addresses (it is recommended in production to specify at least one address in TcpDiscoveryMulticastIpFinder.getAddresses() configuration property)"

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 260
    :cond_6
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->mcastGrp:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 266
    .local v5, "mcastAddr":Ljava/net/InetAddress;
    invoke-virtual {v5}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-nez v3, :cond_7

    .line 267
    new-instance v3, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid multicast group address: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 262
    .end local v5    # "mcastAddr":Ljava/net/InetAddress;
    :catch_0
    move-exception v14

    .line 263
    .local v14, "e":Ljava/net/UnknownHostException;
    new-instance v3, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown multicast group: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->mcastGrp:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v14}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 272
    .end local v14    # "e":Ljava/net/UnknownHostException;
    .restart local v5    # "mcastAddr":Ljava/net/InetAddress;
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->locAddr:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveLocalHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveLocalAddresses(Ljava/net/InetAddress;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Collection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 278
    .local v19, "locAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-boolean v3, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->$assertionsDisabled:Z

    if-nez v3, :cond_8

    if-nez v19, :cond_8

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 274
    .end local v19    # "locAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :catch_1
    move-exception v14

    .line 275
    .local v14, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v3, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to resolve local addresses [locAddr="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->locAddr:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0x5d

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v14}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 280
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v19    # "locAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->addrSnds:Ljava/util/Collection;

    .line 282
    new-instance v23, Ljava/util/ArrayList;

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->size()I

    move-result v3

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 284
    .local v23, "reqItfs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 288
    .local v18, "locAddr":Ljava/lang/String;
    :try_start_2
    invoke-static/range {v18 .. v18}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v6

    .line 297
    .local v6, "addr":Ljava/net/InetAddress;
    invoke-virtual {v6}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_9

    .line 299
    :try_start_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->addrSnds:Ljava/util/Collection;

    new-instance v3, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v7, p1

    invoke-direct/range {v3 .. v8}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;-><init>(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/util/Collection;Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$1;)V

    invoke-interface {v9, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 301
    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 303
    :catch_2
    move-exception v14

    .line 304
    .local v14, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 305
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create multicast socket [mcastAddr="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", mcastGrp="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->mcastGrp:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", mcastPort="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->mcastPort:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", locAddr="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", err="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0x5d

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 290
    .end local v6    # "addr":Ljava/net/InetAddress;
    .end local v14    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v14

    .line 291
    .local v14, "e":Ljava/net/UnknownHostException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 292
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to resolve local address [locAddr="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", err="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0x5d

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 312
    .end local v14    # "e":Ljava/net/UnknownHostException;
    .end local v18    # "locAddr":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->addrSnds:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 316
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->addrSnds:Ljava/util/Collection;

    new-instance v7, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p0

    move-object v9, v5

    move-object/from16 v11, p1

    invoke-direct/range {v7 .. v12}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;-><init>(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/util/Collection;Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$1;)V

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 324
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->addrSnds:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;

    .line 325
    .local v13, "addrSnd":Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;
    invoke-virtual {v13}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;->start()V

    goto :goto_2

    .line 318
    .end local v13    # "addrSnd":Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressSender;
    :catch_4
    move-exception v14

    .line 319
    .local v14, "e":Ljava/io/IOException;
    new-instance v3, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create multicast socket [mcastAddr="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", mcastGrp="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->mcastGrp:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", mcastPort="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->mcastPort:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0x5d

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v14}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 329
    .end local v14    # "e":Ljava/io/IOException;
    :cond_c
    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_10

    .line 330
    new-instance v24, Ljava/util/HashSet;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashSet;-><init>()V

    .line 332
    .local v24, "ret":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v22, "rcvrs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressReceiver;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/net/InetAddress;

    .line 335
    .local v17, "itf":Ljava/net/InetAddress;
    new-instance v21, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressReceiver;

    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressReceiver;-><init>(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;Ljava/net/InetAddress;Ljava/net/InetAddress;Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$1;)V

    .line 337
    .local v21, "rcvr":Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressReceiver;
    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressReceiver;->start()V

    .line 339
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 342
    .end local v17    # "itf":Ljava/net/InetAddress;
    .end local v21    # "rcvr":Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressReceiver;
    :cond_d
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressReceiver;

    .line 344
    .restart local v21    # "rcvr":Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressReceiver;
    :try_start_5
    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressReceiver;->join()V

    .line 346
    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressReceiver;->addresses()Ljava/util/Collection;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    .line 348
    :catch_5
    move-exception v16

    .line 349
    .local v16, "ignore":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v4, "Got interrupted while receiving address request."

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 351
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 360
    .end local v16    # "ignore":Ljava/lang/InterruptedException;
    .end local v21    # "rcvr":Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressReceiver;
    .end local v22    # "rcvrs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder$AddressReceiver;>;"
    :cond_e
    :goto_5
    invoke-interface/range {v24 .. v24}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    .line 361
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->registerAddresses(Ljava/util/Collection;)V

    .line 362
    :cond_f
    return-void

    .line 358
    .end local v24    # "ret":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    :cond_10
    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->requestAddresses(Ljava/net/InetAddress;Ljava/net/InetAddress;)Ljava/util/Collection;

    move-result-object v24

    .restart local v24    # "ret":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    goto :goto_5

    .line 274
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v19    # "locAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v23    # "reqItfs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v24    # "ret":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    :catch_6
    move-exception v14

    goto/16 :goto_0
.end method

.method public onSpiContextInitialized(Lorg/apache/ignite/spi/IgniteSpiContext;)V
    .locals 2
    .param p1, "spiCtx"    # Lorg/apache/ignite/spi/IgniteSpiContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 366
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;->onSpiContextInitialized(Lorg/apache/ignite/spi/IgniteSpiContext;)V

    .line 368
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->mcastPort:I

    sget-object v1, Lorg/apache/ignite/spi/IgnitePortProtocol;->UDP:Lorg/apache/ignite/spi/IgnitePortProtocol;

    invoke-interface {p1, v0, v1}, Lorg/apache/ignite/spi/IgniteSpiContext;->registerPort(ILorg/apache/ignite/spi/IgnitePortProtocol;)V

    .line 369
    return-void
.end method

.method public setAddressRequestAttempts(I)V
    .locals 0
    .param p1, "addrReqAttempts"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 192
    iput p1, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->addrReqAttempts:I

    .line 193
    return-void
.end method

.method public setLocalAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "locAddr"    # Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 218
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->locAddr:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setMulticastGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "mcastGrp"    # Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 126
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->mcastGrp:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setMulticastPort(I)V
    .locals 0
    .param p1, "mcastPort"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 147
    iput p1, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->mcastPort:I

    .line 148
    return-void
.end method

.method public setResponseWaitTime(I)V
    .locals 0
    .param p1, "resWaitTime"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 169
    iput p1, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->resWaitTime:I

    .line 170
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 507
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;

    const-string v1, "super"

    invoke-super {p0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
